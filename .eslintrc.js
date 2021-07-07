module.exports = {
  parser: "@typescript-eslint/parser",
  parserOptions: {
    tsconfigRootDir: __dirname,
    project: ["./tsconfig.json"],
  },
  env: {
    browser: true,
    es2021: true,
    "jest/globals": true,
  },
  ignorePatterns: [".eslintrc.js", "*.config.ts", "*.config.js"],
  plugins: ["@typescript-eslint", "jest"],
  extends: [
    "standard",
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended-requiring-type-checking",
    "plugin:jest/recommended",
  ],
  rules: {
    indent: ["error", 4],
    "comma-dangle": ["error", "always-multiline"],
    quotes: ["error", "single"],
    "space-before-function-paren": ["error", "never"],
  },
};
