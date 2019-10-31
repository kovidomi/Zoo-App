package zoo.auth.service;

public interface SecurityService {
    String findLoggedInUsername();

    boolean userHasAuthority();

    void autoLogin(String username, String password);
}
