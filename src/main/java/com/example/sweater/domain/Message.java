package com.example.sweater.domain;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@SuppressWarnings("ALL")
@Entity
public class Message {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Please enter the message")
    @Length(max = 2048, message = "Message is too long (2048 char max)")
    private String text;
    @Length(max = 255, message = "Tag is too long (255 char max)")
    private String tag;

    @ManyToOne(fetch = FetchType.EAGER) // one user matches many messages
    @JoinColumn(name = "user_id") // author will be stored in column "user_id"
    private User author;

    //constructor without parameters
    public Message() {
    }

    //constructor with parameters
    public Message(String text, String tag, User user) {
        this.author = user;
        this.text = text;
        this.tag = tag;
    }

    // checking if author of a message exists
    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>"; // boolean statement ? true result : false result;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    private String filename;
}