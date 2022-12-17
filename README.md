# A simple blog powered by Maglev & Avo 

Check out the guide here: [https://docs.maglev.dev/integrations/avo](https://docs.maglev.dev/integrations/avo).

## Installation

```bash
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails maglev:vite:install_dependencies
bundle exec rails maglev:create_site
yarn install
bin/dev
```

Open your browser and hit the following url: [http://localhost:3000/avo](http://localhost:3000/avo).

You can now add some posts and create your home page with Maglev.

