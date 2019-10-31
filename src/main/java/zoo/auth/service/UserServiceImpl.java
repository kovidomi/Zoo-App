package zoo.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import zoo.auth.entity.User;
import zoo.auth.repository.AuthorityRepository;
import zoo.auth.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
    private final Long GUEST_AUTHORITY_ID = 2L;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AuthorityRepository authorityRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setAuthority(authorityRepository.findById(GUEST_AUTHORITY_ID).orElse(null));
        userRepository.saveAndFlush(user);
    }
}
