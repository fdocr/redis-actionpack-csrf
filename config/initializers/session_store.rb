# See <https://github.com/redis-store/redis-rails#session-storage> for configuration options
Rails.application.config.session_store :redis_store,
                                       key: ENV["SESSION_KEY"] || "_example_domain_key",
                                       domain: 'localhost:3000',
                                       servers: [ ENV["REDIS_URL"] || "redis://localhost:6379" ],
                                       expire_after: 2.weeks.to_i,
                                       signed: true,
                                       secure: false,
                                       httponly: true
