# Gemfile
# RubyGemsからパッケージをダウンロードするソースを指定
source 'https://rubygems.org'

# 開発環境でのみ使用するgemをグループ化
group :development do
  # Rubyコードの静的解析ツール。コーディング規約に沿っているかチェックする
  gem 'rubocop'
  # Rails向けのRuboCop拡張。Railsプロジェクト特有のコーディング規約をチェック
  # Gemfileに記述されたgem 'rubocop-rails'は、bundle install実行時にgem install rubocop-railsとして内部的に実行される
  gem 'rubocop-rails'
  # RSpec向けのRuboCop拡張。RSpecプロジェクト特有のコーディング規約をチェック
  gem 'rubocop-rspec'
  # パフォーマンス関連の規約をチェック
  gem 'rubocop-performance'
end
