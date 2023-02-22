package com.cydeo.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                //"pretty",
                "html:target/cucumber-report.html",
                "rerun:target/rerun.txt",
                "me.jvt.cucumber.report.PrettyReports:target/cucumber",
        },
        features = "src/test/resources/features",
        glue = "cydeo/step_definitions",
        dryRun = false,
        tags = "@soccerPlayers",
        publish = false

)

public class CukesRunner {
}

//tags = "@librarian"
//tags = "@student or admin"
//tags = "@regression and not student"
//- We can use tags to include or exclude some scenarios.
//- If we put the @Tag on top of the .feature file, it will effect the whole feature file
//- If we put it on top of a Scenario, it will only effect that scenario
//- You can have as many tags as you want for a feature file or a scenario