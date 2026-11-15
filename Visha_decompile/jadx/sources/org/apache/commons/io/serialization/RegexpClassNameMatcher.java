package org.apache.commons.io.serialization;

import java.util.regex.Pattern;

final class RegexpClassNameMatcher implements ClassNameMatcher {
    private final Pattern pattern;

    public RegexpClassNameMatcher(String str) {
        this(Pattern.compile(str));
    }

    @Override
    public boolean matches(String str) {
        return this.pattern.matcher(str).matches();
    }

    public RegexpClassNameMatcher(Pattern pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Null pattern");
        }
        this.pattern = pattern;
    }
}
