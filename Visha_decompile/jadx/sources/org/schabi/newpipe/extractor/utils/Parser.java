package org.schabi.newpipe.extractor.utils;

import java.util.Arrays;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public abstract class Parser {

    public static class RegexException extends ParsingException {
        public RegexException(String str) {
            super(str);
        }
    }

    public static Map f(String str) {
        return (Map) Arrays.stream(str.split("&")).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Parser.h((String) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Parser.i((String[]) obj);
            }
        }).collect(Collectors.toMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Parser.j((String[]) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Parser.k((String[]) obj);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return Parser.l((String) obj, (String) obj2);
            }
        }));
    }

    public static boolean g(String str, String str2) {
        return Pattern.compile(str).matcher(str2).find();
    }

    public static String[] h(String str) {
        return str.split("=");
    }

    public static boolean i(String[] strArr) {
        return strArr.length > 1;
    }

    public static String j(String[] strArr) {
        return strArr[0];
    }

    public static String k(String[] strArr) {
        return a.d(strArr[1]);
    }

    public static String l(String str, String str2) {
        return str2;
    }

    public static String m(String str, String str2, int i) {
        return n(Pattern.compile(str), str2, i);
    }

    public static String n(Pattern pattern, String str, int i) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(i);
        }
        if (str.length() > 1024) {
            throw new RegexException("Failed to find pattern \"" + pattern.pattern() + "\"");
        }
        throw new RegexException("Failed to find pattern \"" + pattern.pattern() + "\" inside of \"" + str + "\"");
    }

    public static String o(String str, String str2) {
        return m(str, str2, 1);
    }

    public static String p(Pattern pattern, String str) {
        return n(pattern, str, 1);
    }

    public static String q(Pattern[] patternArr, String str) {
        return r(patternArr, str).group(1);
    }

    public static Matcher r(Pattern[] patternArr, String str) throws RegexException {
        RegexException regexException = null;
        for (Pattern pattern : patternArr) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher;
            }
            if (regexException == null) {
                regexException = str.length() > 1024 ? new RegexException("Failed to find pattern \"" + pattern.pattern() + "\"") : new RegexException("Failed to find pattern \"" + pattern.pattern() + "\" inside of \"" + str + "\"");
            }
        }
        if (regexException == null) {
            throw new RegexException("Empty patterns array passed to matchMultiplePatterns");
        }
        throw regexException;
    }
}
