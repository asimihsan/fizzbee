# Sourced by mise (mise.toml [env] _.source). Keep idempotent and fast.
# macOS: build against the Command Line Tools SDK so clang's SDKSettings.json
# dependency falls under a rules_cc builtin include directory (see .bazelrc).
if [ "$(uname -s)" = "Darwin" ] && [ -z "${DEVELOPER_DIR:-}" ] \
   && [ -d /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk ]; then
  export DEVELOPER_DIR=/Library/Developer/CommandLineTools
fi
