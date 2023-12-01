package com.onlinebanking.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
public class User {

    @Id
    private int user_id;

    @NotEmpty(message = "The First name field cannot be empty")
    @Size(min = 3, message = "The First name field must greater that 3 characters")
    private String first_name;

    @NotEmpty(message = "The Last name field cannot be empty")
    @Size(min = 3, message = "The First name field must greater that 3 characters")
    private String last_name;

    @Email
    @NotEmpty
    @Pattern(regexp = "([a-zA-Z0-9]+(?:[._+-][a-zA-Z0-9]+)*)@([a-zA-Z0-9]+(?:[.-][a-zA-Z0-9]+)*[.][a-zA-Z]{2,})", message = "Please Enter a Valid Email")
    private String email;

    @NotEmpty
    @NotNull
    private String password;

    private String code;
    private LocalDateTime created_at;
    private LocalDateTime updated_at;

    public int getUser_id() {
        return user_id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getCode() {
        return code;
    }

    public LocalDateTime getCreated_at() {
        return created_at;
    }

    public LocalDateTime getUpdated_at() {
        return updated_at;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setCreated_at(LocalDateTime created_at) {
        this.created_at = created_at;
    }

    public void setUpdated_at(LocalDateTime updated_at) {
        this.updated_at = updated_at;
    }
}
