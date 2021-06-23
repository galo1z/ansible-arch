// MY ADDITIONS
// Set icons in menu in my favourite way
//user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[\"jid1-mnnxcxisbpnsxq-eff_jetpack-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"jid1-bofifl9vbdl2zq_jetpack-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"urlbar-container\",\"panic-button\",\"history-panelmenu\",\"find-button\",\"preferences-button\",\"downloads-button\",\"_73a6fe31-595d-460b-a920-fcc0f8843232_-browser-action\",\"_446900e4-71c2-419f-a6a7-df9c091e268b_-browser-action\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"_d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d_-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"jid1-bofifl9vbdl2zq_jetpack-browser-action\",\"https-everywhere-eff_eff_org-browser-action\",\"_73a6fe31-595d-460b-a920-fcc0f8843232_-browser-action\",\"jid1-mnnxcxisbpnsxq-eff_jetpack-browser-action\",\"default-bookmark-folder_gustiaux_com-browser-action\",\"jid1-mnnxcxisbpnsxq_jetpack-browser-action\",\"_446900e4-71c2-419f-a6a7-df9c091e268b_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"toolbar-menubar\",\"TabsToolbar\",\"PersonalToolbar\",\"widget-overflow-fixed-list\"],\"currentVersion\":16,\"newElementCount\":11}");

// Don't hide bookmarks in fullscreen mode
user_pref("browser.fullscreen.autohide",         false);

// Set homepage to be blank
user_pref("browser.startup.page", 0);
user_pref("browser.startup.homepage", "0");
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);

// Don't alert on closing several tabs
user_pref("browser.tabs.warnOnClose", false);

// Leave bookmark menu open when bookmark folder is clicked
user_pref("browser.bookmarks.openInTabClosesMenu", false);

// Cookies are stored for 7 days
user_pref("network.cookie.lifetime.days", 7);
user_pref("browser.toolbars.bookmarks.visibility", "always");

// Disable telemetry
user_pref("browser.ping-centre.telemetry", false);
user_pref("security.ssl.errorReporting.automatic", true);
user_pref("toolkit.identity.enabled", false);
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.hybridContent.enabled", false);
user_pref("toolkit.telemetry.infoURL", "");
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);

// Disable blacklist sites check
user_pref("browser.safebrowsing.blockedURIs.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous_host", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.enabled", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.provider.google.advisoryURL", "");
user_pref("browser.safebrowsing.provider.google.gethashURL", "");
user_pref("browser.safebrowsing.provider.google.lists", "");
user_pref("browser.safebrowsing.provider.google.pver", "");
user_pref("browser.safebrowsing.provider.google.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google.reportURL", "");
user_pref("browser.safebrowsing.provider.google.updateURL", "");
user_pref("browser.safebrowsing.provider.google4.advisoryName", "");
user_pref("browser.safebrowsing.provider.google4.advisoryURL", "");
user_pref("browser.safebrowsing.provider.google4.dataSharingURL", "");
user_pref("browser.safebrowsing.provider.google4.gethashURL", "");
user_pref("browser.safebrowsing.provider.google4.lastupdatetime", "");
user_pref("browser.safebrowsing.provider.google4.lists", "");
user_pref("browser.safebrowsing.provider.google4.nextupdatetime", "");
user_pref("browser.safebrowsing.provider.google4.pver", "");
user_pref("browser.safebrowsing.provider.google4.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportURL", "");
user_pref("browser.safebrowsing.provider.google4.updateURL", "");
user_pref("browser.safebrowsing.provider.mozilla.gethashURL", "");
user_pref("browser.safebrowsing.provider.mozilla.lists", "");
user_pref("browser.safebrowsing.provider.mozilla.pver", "");
user_pref("browser.safebrowsing.provider.mozilla.updateURL", "");

// Disable reporting
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.policy.firstRunURL", "");
user_pref("network.captive-portal-service.enabled", false);

// Show protocol in url and stuff
user_pref("browser.urlbar.clickSelectsAll", true);
user_pref("browser.urlbar.maxRichResults", 15);
user_pref("browser.urlbar.trimURLs", false);

// Disable pocket
user_pref("extensions.pocket.enabled", false);
user_pref("extensions.ui.dictionary.hidden", false);
user_pref("extensions.ui.experiment.hidden", true);
user_pref("extensions.ui.locale.hidden", true);
user_pref("extensions.webextensions.remote", true);

// Disable about:* warnings
user_pref("general.warnOnAboutConfig", false);
user_pref("network.warnOnAboutNetworking", false);

// Faster render
user_pref("gfx.use_text_smoothing_setting", true);
user_pref("gfx.webrender.enabled", true);
user_pref("gfx.webrender.highlight-painted-layers", false);
user_pref("layers.acceleration.force-enabled", true);

// Go full speed
user_pref("network.allow-experiments", true);
user_pref("network.predictor.enabled", true);
user_pref("network.http.speculative-parallel-limit", 6);
user_pref("network.dns.echconfig.enabled", false);
user_pref("network.tcp.tcp_fastopen_enable", true);
user_pref("network.trr.uri", "https://mozilla.cloudflare-dns.com/dns-query");
user_pref("network.prefetch-next", true);

// DoH is def, DNS as backup, and stuff
user_pref("network.trr.mode", 2);
user_pref("network.dns.echconfig.enabled", true);

// Isolate cookie
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.longPressBehavior", 2);
user_pref("privacy.userContext.ui.enabled", true);

// User ram for cache
user_pref("browser.cache.disk.enable", false);
user_pref("browser.cache.memory.enable", true);

// Allow as much connections as possible
user_pref("network.http.max-connections", 65535);
user_pref("network.http.max-persistent-connections-per-server", 255);
user_pref("network.http.max-persistent-connections-per-proxy", 255);
