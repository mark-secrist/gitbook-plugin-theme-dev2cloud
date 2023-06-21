module.exports = {
    hooks: {
        config: function(config) {
            config.styles = config.styles || config.pluginsConfig['theme-dev2cloud'].styles;

            return config;
        }
    }
};


