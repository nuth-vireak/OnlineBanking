package com.onlinebanking.repository;

import com.onlinebanking.models.User;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    @Query(value = "SELECT email FROM users WHERE email = :email", nativeQuery = true)
    String getUserEmail(@Param("email") String email);

    @Query(value = "SELECT password FROM users WHERE email = :email", nativeQuery = true)
    String getUserPassword(@Param("email") String email);

    @Query(value = "SELECT * FROM users WHERE email = :email", nativeQuery = true)
    User getUserDetails(@Param("email") String email);

    @Modifying
    @Query(value = "INSERT INTO users (first_name, last_name, email, password, code) VALUES" +
            "(:first_name, :last_name, :email, :password, :code)", nativeQuery = true)
    @Transactional
    void registerUser(@Param("first_name") String first_name,
                      @Param("last_name") String last_name,
                      @Param("email") String email,
                      @Param("password") String password,
                      @Param("code") int code);

}
