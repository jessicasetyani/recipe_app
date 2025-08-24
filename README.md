# Recipe App 🍽️

> **📖 For complete project documentation, setup instructions, and overview, please see the [main project README](../README.md).**

This directory contains the Ruby on Rails application component of the First Ruby Project.

## Quick Start

```bash
# From the recipe_app directory
bundle install
rails db:create db:migrate db:seed
rails server
```

Visit: http://localhost:3000

## Rails-Specific Commands

```bash
# Run tests
rails test

# Rails console
rails console

# Database console
rails dbconsole

# Precompile assets
rails assets:precompile
```

## Database Schema

### Recipes Table
- `title` (string) - Recipe name
- `image_url` (string) - URL to recipe image  
- `ingredients` (text) - Ingredient list
- `instructions` (text) - Cooking instructions

---

**For full documentation, deployment guides, and project management tools, see the [main README](../README.md).**