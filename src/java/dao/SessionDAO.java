/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.SessionBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sho
 */
public class SessionDAO {
// Database connection details

    private String jdbcURL = "jdbc:mysql://localhost:3306/drivesmart_db";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    // Helper method to establish a connection
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
      // 2. INSERT (Create a new record)
    public boolean bookSession(SessionBean session) {
        String sql = "INSERT INTO training_sessions (student_name, branch_location, lesson_type, status) VALUES (?, ?, ?, ?)";
        boolean rowInserted = false;

        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, session.getStudentName());
            ps.setString(2, session.getBranchLocation());
            ps.setString(3, session.getLessonType());
            ps.setString(4, session.getStatus());


            rowInserted = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowInserted;
    }
    
    
 public List<SessionBean> getAllSessions() {
        List<SessionBean> sessions = new ArrayList<>();
        String sql = "SELECT * FROM Training_Sessions ORDER BY branch_location ASC";

        // Try-with-resources automatically closes Connection, PreparedStatement, and ResultSet
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(sql); ResultSet resultSet = preparedStatement.executeQuery()) {

            // Loop through the database rows
            while (resultSet.next()) {
                int id = resultSet.getInt("session_id");
                String studentName = resultSet.getString("student_name");
                String branchLocation = resultSet.getString("branch_location");
                String lessonType = resultSet.getString("lesson_type");
                String status = resultSet.getString("status");


                // Map database row to Java Object (Model)
                SessionBean session = new SessionBean(id, studentName, branchLocation, lessonType, status);
                sessions.add(session);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sessions;
    }

}