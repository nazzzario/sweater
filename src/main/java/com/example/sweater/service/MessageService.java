package com.example.sweater.service;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import com.example.sweater.domain.dto.MessageDto;
import com.example.sweater.repos.MessageRepos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;

@Service
public class MessageService {
    @Autowired
    private MessageRepos messageRepos;

    public Page<MessageDto> messageList(Pageable pageable, String filter, User user){
        if (filter != null && !filter.isEmpty()) {
            return messageRepos.findByTag(filter,pageable,user);
        } else {
            return messageRepos.findAll(pageable,user);
        }
    }

    public Page<MessageDto> messageListForUser(Pageable pageble,User currentUser, User author) {
        return messageRepos.findByUser(pageble,author,currentUser);
    }
}
