package com.coderscampus.AssignmentSubmissionApp.repository;

import com.coderscampus.AssignmentSubmissionApp.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);




}
