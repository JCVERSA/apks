package com.amazonaws.internal.config;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class HostRegexToRegionMapping {

    private final String f17797a;

    private final String f17798b;

    public HostRegexToRegionMapping(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty");
        }
        try {
            Pattern.compile(str);
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: regionName must be non-empty");
            }
            this.f17797a = str;
            this.f17798b = str2;
        } catch (PatternSyntaxException e10) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex", e10);
        }
    }

    public String a() {
        return this.f17797a;
    }

    public String b() {
        return this.f17798b;
    }
}
