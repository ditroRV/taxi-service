package mate.service;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Logger LOGGER = LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> user = driverService.findByLogin(login);
        if (user.isPresent() && user.get().getPassword().equals(password)) {
            LOGGER.info("Driver has successfully logged in, driver login: {} ", login);

            return user.get();
        }
        LOGGER.info("Driver has failed authentication , driver login: {}", login);
        return user.get();
    }
}
