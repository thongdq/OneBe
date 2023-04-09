package project.one.projectone;

import java.util.Arrays;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import jakarta.annotation.PostConstruct;

@Component
public class ProfileScannerBean {
    Logger logger = LoggerFactory.getLogger(ProfileScannerBean.class);

    private Environment environment;

    ProfileScannerBean(Environment environment) {
        this.environment = environment;
    }

    @PostConstruct
    void postConstruct() {
        String[] activeProfiles = environment.getActiveProfiles();
        logger.info("active profile: {}", Arrays.toString(activeProfiles));
    }
}
