package org.apache.commons.text;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.Validate;
import org.apache.commons.text.lookup.StringLookup;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.apache.commons.text.matcher.StringMatcher;
import org.apache.commons.text.matcher.StringMatcherFactory;

public class StringSubstitutor {
    public static final char DEFAULT_ESCAPE = '$';
    public static final StringMatcher DEFAULT_PREFIX;
    public static final StringMatcher DEFAULT_SUFFIX;
    public static final StringMatcher DEFAULT_VALUE_DELIMITER;
    public static final String DEFAULT_VAR_DEFAULT = ":-";
    public static final String DEFAULT_VAR_END = "}";
    public static final String DEFAULT_VAR_START = "${";
    private boolean disableSubstitutionInValues;
    private boolean enableSubstitutionInVariables;
    private boolean enableUndefinedVariableException;
    private char escapeChar;
    private StringMatcher prefixMatcher;
    private boolean preserveEscapes;
    private StringMatcher suffixMatcher;
    private StringMatcher valueDelimiterMatcher;
    private StringLookup variableResolver;

    public static final class Result {
        public final boolean altered;
        public final int lengthChange;

        public String toString() {
            return "Result [altered=" + this.altered + ", lengthChange=" + this.lengthChange + "]";
        }

        private Result(boolean z, int i) {
            this.altered = z;
            this.lengthChange = i;
        }
    }

    static {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        DEFAULT_PREFIX = stringMatcherFactory.stringMatcher(DEFAULT_VAR_START);
        DEFAULT_SUFFIX = stringMatcherFactory.stringMatcher(DEFAULT_VAR_END);
        DEFAULT_VALUE_DELIMITER = stringMatcherFactory.stringMatcher(DEFAULT_VAR_DEFAULT);
    }

    public StringSubstitutor() {
        this((StringLookup) null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    private void checkCyclicSubstitution(String str, List<String> list) {
        if (list.contains(str)) {
            TextStringBuilder textStringBuilder = new TextStringBuilder(256);
            textStringBuilder.append("Infinite loop in property interpolation of ");
            textStringBuilder.append(list.remove(0));
            textStringBuilder.append(": ");
            textStringBuilder.appendWithSeparators(list, "->");
            throw new IllegalStateException(textStringBuilder.toString());
        }
    }

    public static StringSubstitutor createInterpolator() {
        return new StringSubstitutor(StringLookupFactory.INSTANCE.interpolatorStringLookup());
    }

    public static <V> String replace(Object obj, Map<String, V> map) {
        return new StringSubstitutor(map).replace(obj);
    }

    public static String replaceSystemProperties(Object obj) {
        return new StringSubstitutor(StringLookupFactory.INSTANCE.systemPropertyStringLookup()).replace(obj);
    }

    public char getEscapeChar() {
        return this.escapeChar;
    }

    public StringLookup getStringLookup() {
        return this.variableResolver;
    }

    public StringMatcher getValueDelimiterMatcher() {
        return this.valueDelimiterMatcher;
    }

    public StringMatcher getVariablePrefixMatcher() {
        return this.prefixMatcher;
    }

    public StringMatcher getVariableSuffixMatcher() {
        return this.suffixMatcher;
    }

    public boolean isDisableSubstitutionInValues() {
        return this.disableSubstitutionInValues;
    }

    public boolean isEnableSubstitutionInVariables() {
        return this.enableSubstitutionInVariables;
    }

    public boolean isEnableUndefinedVariableException() {
        return this.enableUndefinedVariableException;
    }

    public boolean isPreserveEscapes() {
        return this.preserveEscapes;
    }

    public boolean replaceIn(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return false;
        }
        return replaceIn(stringBuffer, 0, stringBuffer.length());
    }

    public String resolveVariable(String str, TextStringBuilder textStringBuilder, int i, int i2) {
        StringLookup stringLookup = getStringLookup();
        if (stringLookup == null) {
            return null;
        }
        return stringLookup.lookup(str);
    }

    public StringSubstitutor setDisableSubstitutionInValues(boolean z) {
        this.disableSubstitutionInValues = z;
        return this;
    }

    public StringSubstitutor setEnableSubstitutionInVariables(boolean z) {
        this.enableSubstitutionInVariables = z;
        return this;
    }

    public StringSubstitutor setEnableUndefinedVariableException(boolean z) {
        this.enableUndefinedVariableException = z;
        return this;
    }

    public StringSubstitutor setEscapeChar(char c) {
        this.escapeChar = c;
        return this;
    }

    public StringSubstitutor setPreserveEscapes(boolean z) {
        this.preserveEscapes = z;
        return this;
    }

    public StringSubstitutor setValueDelimiter(char c) {
        return setValueDelimiterMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringSubstitutor setValueDelimiterMatcher(StringMatcher stringMatcher) {
        this.valueDelimiterMatcher = stringMatcher;
        return this;
    }

    public StringSubstitutor setVariablePrefix(char c) {
        return setVariablePrefixMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringSubstitutor setVariablePrefixMatcher(StringMatcher stringMatcher) {
        Validate.isTrue(stringMatcher != null, "Variable prefix matcher must not be null!", new Object[0]);
        this.prefixMatcher = stringMatcher;
        return this;
    }

    public StringSubstitutor setVariableResolver(StringLookup stringLookup) {
        this.variableResolver = stringLookup;
        return this;
    }

    public StringSubstitutor setVariableSuffix(char c) {
        return setVariableSuffixMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringSubstitutor setVariableSuffixMatcher(StringMatcher stringMatcher) {
        Validate.isTrue(stringMatcher != null, "Variable suffix matcher must not be null!", new Object[0]);
        this.suffixMatcher = stringMatcher;
        return this;
    }

    public boolean substitute(TextStringBuilder textStringBuilder, int i, int i2) {
        return substitute(textStringBuilder, i, i2, null).altered;
    }

    public <V> StringSubstitutor(Map<String, V> map) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public static <V> String replace(Object obj, Map<String, V> map, String str, String str2) {
        return new StringSubstitutor(map, str, str2).replace(obj);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:48:0x0108  */
    /* JADX WARN: Code duplicated, block: B:51:0x0120  */
    /* JADX WARN: Code duplicated, block: B:53:0x0124  */
    /* JADX WARN: Code duplicated, block: B:55:0x012d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0134  */
    /* JADX WARN: Code duplicated, block: B:58:0x013f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0141  */
    /* JADX WARN: Code duplicated, block: B:71:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x014e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x008d A[SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:35:0x00cf
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private org.apache.commons.text.StringSubstitutor.Result substitute(org.apache.commons.text.TextStringBuilder r26, int r27, int r28, java.util.List<java.lang.String> r29) {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.StringSubstitutor.substitute(org.apache.commons.text.TextStringBuilder, int, int, java.util.List):org.apache.commons.text.StringSubstitutor$Result");
    }

    public boolean replaceIn(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return false;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(stringBuffer, i, i2);
        if (!substitute(textStringBuilderAppend, 0, i2)) {
            return false;
        }
        stringBuffer.replace(i, i2 + i, textStringBuilderAppend.toString());
        return true;
    }

    public StringSubstitutor setValueDelimiter(String str) {
        if (str != null && !str.isEmpty()) {
            return setValueDelimiterMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
        }
        setValueDelimiterMatcher(null);
        return this;
    }

    public StringSubstitutor setVariablePrefix(String str) {
        Validate.isTrue(str != null, "Variable prefix must not be null!", new Object[0]);
        return setVariablePrefixMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
    }

    public StringSubstitutor setVariableSuffix(String str) {
        Validate.isTrue(str != null, "Variable suffix must not be null!", new Object[0]);
        return setVariableSuffixMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
    }

    public <V> StringSubstitutor(Map<String, V> map, String str, String str2) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), str, str2, '$');
    }

    public static String replace(Object obj, Properties properties) {
        if (properties == null) {
            return obj.toString();
        }
        HashMap map = new HashMap();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String strValueOf = String.valueOf(enumerationPropertyNames.nextElement());
            map.put(strValueOf, properties.getProperty(strValueOf));
        }
        return replace(obj, map);
    }

    public <V> StringSubstitutor(Map<String, V> map, String str, String str2, char c) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), str, str2, c);
    }

    public <V> StringSubstitutor(Map<String, V> map, String str, String str2, char c, String str3) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map), str, str2, c, str3);
    }

    public boolean replaceIn(StringBuilder sb) {
        if (sb == null) {
            return false;
        }
        return replaceIn(sb, 0, sb.length());
    }

    public StringSubstitutor(StringLookup stringLookup) {
        this(stringLookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public boolean replaceIn(StringBuilder sb, int i, int i2) {
        if (sb == null) {
            return false;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(sb, i, i2);
        if (!substitute(textStringBuilderAppend, 0, i2)) {
            return false;
        }
        sb.replace(i, i2 + i, textStringBuilderAppend.toString());
        return true;
    }

    public StringSubstitutor(StringLookup stringLookup, String str, String str2, char c) {
        setVariableResolver(stringLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c);
        setValueDelimiterMatcher(DEFAULT_VALUE_DELIMITER);
    }

    public boolean replaceIn(TextStringBuilder textStringBuilder) {
        if (textStringBuilder == null) {
            return false;
        }
        return substitute(textStringBuilder, 0, textStringBuilder.length());
    }

    public boolean replaceIn(TextStringBuilder textStringBuilder, int i, int i2) {
        if (textStringBuilder == null) {
            return false;
        }
        return substitute(textStringBuilder, i, i2);
    }

    public String replace(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(cArr.length).append(cArr);
        substitute(textStringBuilderAppend, 0, cArr.length);
        return textStringBuilderAppend.toString();
    }

    public StringSubstitutor(StringLookup stringLookup, String str, String str2, char c, String str3) {
        setVariableResolver(stringLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c);
        setValueDelimiter(str3);
    }

    public String replace(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(cArr, i, i2);
        substitute(textStringBuilderAppend, 0, i2);
        return textStringBuilderAppend.toString();
    }

    public String replace(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return replace(charSequence, 0, charSequence.length());
    }

    public String replace(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(charSequence.toString(), i, i2);
        substitute(textStringBuilderAppend, 0, i2);
        return textStringBuilderAppend.toString();
    }

    public StringSubstitutor(StringLookup stringLookup, StringMatcher stringMatcher, StringMatcher stringMatcher2, char c) {
        this(stringLookup, stringMatcher, stringMatcher2, c, DEFAULT_VALUE_DELIMITER);
    }

    public StringSubstitutor(StringLookup stringLookup, StringMatcher stringMatcher, StringMatcher stringMatcher2, char c, StringMatcher stringMatcher3) {
        setVariableResolver(stringLookup);
        setVariablePrefixMatcher(stringMatcher);
        setVariableSuffixMatcher(stringMatcher2);
        setEscapeChar(c);
        setValueDelimiterMatcher(stringMatcher3);
    }

    public String replace(Object obj) {
        if (obj == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder().append(obj);
        substitute(textStringBuilderAppend, 0, textStringBuilderAppend.length());
        return textStringBuilderAppend.toString();
    }

    public String replace(String str) {
        if (str == null) {
            return null;
        }
        TextStringBuilder textStringBuilder = new TextStringBuilder(str);
        return !substitute(textStringBuilder, 0, str.length()) ? str : textStringBuilder.toString();
    }

    public StringSubstitutor(StringSubstitutor stringSubstitutor) {
        this.disableSubstitutionInValues = stringSubstitutor.isDisableSubstitutionInValues();
        this.enableSubstitutionInVariables = stringSubstitutor.isEnableSubstitutionInVariables();
        this.enableUndefinedVariableException = stringSubstitutor.isEnableUndefinedVariableException();
        this.escapeChar = stringSubstitutor.getEscapeChar();
        this.prefixMatcher = stringSubstitutor.getVariablePrefixMatcher();
        this.preserveEscapes = stringSubstitutor.isPreserveEscapes();
        this.suffixMatcher = stringSubstitutor.getVariableSuffixMatcher();
        this.valueDelimiterMatcher = stringSubstitutor.getValueDelimiterMatcher();
        this.variableResolver = stringSubstitutor.getStringLookup();
    }

    public String replace(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(str, i, i2);
        if (!substitute(textStringBuilderAppend, 0, i2)) {
            return str.substring(i, i2 + i);
        }
        return textStringBuilderAppend.toString();
    }

    public String replace(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(stringBuffer.length()).append(stringBuffer);
        substitute(textStringBuilderAppend, 0, textStringBuilderAppend.length());
        return textStringBuilderAppend.toString();
    }

    public String replace(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(stringBuffer, i, i2);
        substitute(textStringBuilderAppend, 0, i2);
        return textStringBuilderAppend.toString();
    }

    public String replace(TextStringBuilder textStringBuilder) {
        if (textStringBuilder == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(textStringBuilder.length()).append(textStringBuilder);
        substitute(textStringBuilderAppend, 0, textStringBuilderAppend.length());
        return textStringBuilderAppend.toString();
    }

    public String replace(TextStringBuilder textStringBuilder, int i, int i2) {
        if (textStringBuilder == null) {
            return null;
        }
        TextStringBuilder textStringBuilderAppend = new TextStringBuilder(i2).append(textStringBuilder, i, i2);
        substitute(textStringBuilderAppend, 0, i2);
        return textStringBuilderAppend.toString();
    }
}
