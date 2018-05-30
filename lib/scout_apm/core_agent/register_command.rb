module ScoutApm
  module CoreAgent
    class RegisterCommand
      def initialize(app, key)
        @app = app
        @key = key
      end

      def message
        return {'Register' => {
          'app' => @app,
          'key' => @key,
          'language' => 'ruby',
          'api_version' => '1.0',
        }}
      end
    end
  end
end
