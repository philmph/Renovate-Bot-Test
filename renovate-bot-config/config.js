module.exports = {
  autodicover: false,
  onboarding: true,
  onboardingConfig: {
    $schema: "https://docs.renovatebot.com/renovate-schema.json",
    extends: ["github>philmph/renovate-bot-test//renovate-repo-config/default.json"],
  },
  platform: "github",
  repositories: ["philmph/Renovate-Bot-Test", "philmph/Renovate-Test"],
};
