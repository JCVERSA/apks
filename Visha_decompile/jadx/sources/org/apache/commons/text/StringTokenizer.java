package org.apache.commons.text;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.text.matcher.StringMatcher;
import org.apache.commons.text.matcher.StringMatcherFactory;

public class StringTokenizer implements ListIterator<String>, Cloneable {
    private static final StringTokenizer CSV_TOKENIZER_PROTOTYPE;
    private static final StringTokenizer TSV_TOKENIZER_PROTOTYPE;
    private char[] chars;
    private StringMatcher delimMatcher;
    private boolean emptyAsNull;
    private boolean ignoreEmptyTokens;
    private StringMatcher ignoredMatcher;
    private StringMatcher quoteMatcher;
    private int tokenPos;
    private String[] tokens;
    private StringMatcher trimmerMatcher;

    static {
        StringTokenizer stringTokenizer = new StringTokenizer();
        CSV_TOKENIZER_PROTOTYPE = stringTokenizer;
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        stringTokenizer.setDelimiterMatcher(stringMatcherFactory.commaMatcher());
        stringTokenizer.setQuoteMatcher(stringMatcherFactory.doubleQuoteMatcher());
        stringTokenizer.setIgnoredMatcher(stringMatcherFactory.noneMatcher());
        stringTokenizer.setTrimmerMatcher(stringMatcherFactory.trimMatcher());
        stringTokenizer.setEmptyTokenAsNull(false);
        stringTokenizer.setIgnoreEmptyTokens(false);
        StringTokenizer stringTokenizer2 = new StringTokenizer();
        TSV_TOKENIZER_PROTOTYPE = stringTokenizer2;
        stringTokenizer2.setDelimiterMatcher(stringMatcherFactory.tabMatcher());
        stringTokenizer2.setQuoteMatcher(stringMatcherFactory.doubleQuoteMatcher());
        stringTokenizer2.setIgnoredMatcher(stringMatcherFactory.noneMatcher());
        stringTokenizer2.setTrimmerMatcher(stringMatcherFactory.trimMatcher());
        stringTokenizer2.setEmptyTokenAsNull(false);
        stringTokenizer2.setIgnoreEmptyTokens(false);
    }

    public StringTokenizer() {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        this.delimMatcher = stringMatcherFactory.splitMatcher();
        this.quoteMatcher = stringMatcherFactory.noneMatcher();
        this.ignoredMatcher = stringMatcherFactory.noneMatcher();
        this.trimmerMatcher = stringMatcherFactory.noneMatcher();
        this.ignoreEmptyTokens = true;
        this.chars = null;
    }

    private void addToken(List<String> list, String str) {
        if (str == null || str.isEmpty()) {
            if (isIgnoreEmptyTokens()) {
                return;
            }
            if (isEmptyTokenAsNull()) {
                str = null;
            }
        }
        list.add(str);
    }

    private void checkTokenized() {
        if (this.tokens == null) {
            char[] cArr = this.chars;
            this.tokens = (String[]) (cArr == null ? tokenize(null, 0, 0) : tokenize(cArr, 0, cArr.length)).toArray(ArrayUtils.EMPTY_STRING_ARRAY);
        }
    }

    private static StringTokenizer getCSVClone() {
        return (StringTokenizer) CSV_TOKENIZER_PROTOTYPE.clone();
    }

    public static StringTokenizer getCSVInstance() {
        return getCSVClone();
    }

    private static StringTokenizer getTSVClone() {
        return (StringTokenizer) TSV_TOKENIZER_PROTOTYPE.clone();
    }

    public static StringTokenizer getTSVInstance() {
        return getTSVClone();
    }

    private boolean isQuote(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i + i5;
            if (i6 >= i2 || cArr[i6] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    private int readNextToken(char[] cArr, int i, int i2, TextStringBuilder textStringBuilder, List<String> list) {
        while (i < i2) {
            int iMax = Math.max(getIgnoredMatcher().isMatch(cArr, i, i, i2), getTrimmerMatcher().isMatch(cArr, i, i, i2));
            if (iMax == 0 || getDelimiterMatcher().isMatch(cArr, i, i, i2) > 0 || getQuoteMatcher().isMatch(cArr, i, i, i2) > 0) {
                break;
            }
            i += iMax;
        }
        if (i >= i2) {
            addToken(list, "");
            return -1;
        }
        int iIsMatch = getDelimiterMatcher().isMatch(cArr, i, i, i2);
        if (iIsMatch > 0) {
            addToken(list, "");
            return i + iIsMatch;
        }
        int iIsMatch2 = getQuoteMatcher().isMatch(cArr, i, i, i2);
        return iIsMatch2 > 0 ? readWithQuotes(cArr, i + iIsMatch2, i2, textStringBuilder, list, i, iIsMatch2) : readWithQuotes(cArr, i, i2, textStringBuilder, list, 0, 0);
    }

    private int readWithQuotes(char[] cArr, int i, int i2, TextStringBuilder textStringBuilder, List<String> list, int i3, int i4) {
        int i5;
        textStringBuilder.clear();
        boolean z = i4 > 0;
        int i6 = i;
        int size = 0;
        while (i6 < i2) {
            if (z) {
                int i7 = size;
                i5 = i6;
                if (isQuote(cArr, i6, i2, i3, i4)) {
                    int i8 = i5 + i4;
                    if (isQuote(cArr, i8, i2, i3, i4)) {
                        textStringBuilder.append(cArr, i5, i4);
                        i6 = i5 + (i4 * 2);
                        size = textStringBuilder.size();
                    } else {
                        size = i7;
                        i6 = i8;
                        z = false;
                    }
                } else {
                    i6 = i5 + 1;
                    textStringBuilder.append(cArr[i5]);
                    size = textStringBuilder.size();
                }
            } else {
                int i9 = size;
                i5 = i6;
                int iIsMatch = getDelimiterMatcher().isMatch(cArr, i5, i, i2);
                if (iIsMatch > 0) {
                    addToken(list, textStringBuilder.substring(0, i9));
                    return i5 + iIsMatch;
                }
                if (i4 <= 0 || !isQuote(cArr, i5, i2, i3, i4)) {
                    int iIsMatch2 = getIgnoredMatcher().isMatch(cArr, i5, i, i2);
                    if (iIsMatch2 <= 0) {
                        iIsMatch2 = getTrimmerMatcher().isMatch(cArr, i5, i, i2);
                        if (iIsMatch2 > 0) {
                            textStringBuilder.append(cArr, i5, iIsMatch2);
                        } else {
                            i6 = i5 + 1;
                            textStringBuilder.append(cArr[i5]);
                            size = textStringBuilder.size();
                        }
                    }
                    i6 = i5 + iIsMatch2;
                    size = i9;
                } else {
                    i6 = i5 + i4;
                    size = i9;
                    z = true;
                }
            }
        }
        addToken(list, textStringBuilder.substring(0, size));
        return -1;
    }

    public Object clone() {
        try {
            return cloneReset();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Object cloneReset() throws CloneNotSupportedException {
        StringTokenizer stringTokenizer = (StringTokenizer) super.clone();
        char[] cArr = stringTokenizer.chars;
        if (cArr != null) {
            stringTokenizer.chars = (char[]) cArr.clone();
        }
        stringTokenizer.reset();
        return stringTokenizer;
    }

    public String getContent() {
        char[] cArr = this.chars;
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public StringMatcher getDelimiterMatcher() {
        return this.delimMatcher;
    }

    public StringMatcher getIgnoredMatcher() {
        return this.ignoredMatcher;
    }

    public StringMatcher getQuoteMatcher() {
        return this.quoteMatcher;
    }

    public String[] getTokenArray() {
        checkTokenized();
        return (String[]) this.tokens.clone();
    }

    public List<String> getTokenList() {
        checkTokenized();
        return Arrays.asList(this.tokens);
    }

    public StringMatcher getTrimmerMatcher() {
        return this.trimmerMatcher;
    }

    @Override
    public boolean hasNext() {
        checkTokenized();
        return this.tokenPos < this.tokens.length;
    }

    @Override
    public boolean hasPrevious() {
        checkTokenized();
        return this.tokenPos > 0;
    }

    public boolean isEmptyTokenAsNull() {
        return this.emptyAsNull;
    }

    public boolean isIgnoreEmptyTokens() {
        return this.ignoreEmptyTokens;
    }

    @Override
    public int nextIndex() {
        return this.tokenPos;
    }

    public String nextToken() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.tokens;
        int i = this.tokenPos;
        this.tokenPos = i + 1;
        return strArr[i];
    }

    @Override
    public int previousIndex() {
        return this.tokenPos - 1;
    }

    public String previousToken() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.tokens;
        int i = this.tokenPos - 1;
        this.tokenPos = i;
        return strArr[i];
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    public StringTokenizer reset() {
        this.tokenPos = 0;
        this.tokens = null;
        return this;
    }

    public StringTokenizer setDelimiterChar(char c) {
        return setDelimiterMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringTokenizer setDelimiterMatcher(StringMatcher stringMatcher) {
        if (stringMatcher == null) {
            stringMatcher = StringMatcherFactory.INSTANCE.noneMatcher();
        }
        this.delimMatcher = stringMatcher;
        return this;
    }

    public StringTokenizer setDelimiterString(String str) {
        return setDelimiterMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
    }

    public StringTokenizer setEmptyTokenAsNull(boolean z) {
        this.emptyAsNull = z;
        return this;
    }

    public StringTokenizer setIgnoreEmptyTokens(boolean z) {
        this.ignoreEmptyTokens = z;
        return this;
    }

    public StringTokenizer setIgnoredChar(char c) {
        return setIgnoredMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringTokenizer setIgnoredMatcher(StringMatcher stringMatcher) {
        if (stringMatcher != null) {
            this.ignoredMatcher = stringMatcher;
        }
        return this;
    }

    public StringTokenizer setQuoteChar(char c) {
        return setQuoteMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringTokenizer setQuoteMatcher(StringMatcher stringMatcher) {
        if (stringMatcher != null) {
            this.quoteMatcher = stringMatcher;
        }
        return this;
    }

    public StringTokenizer setTrimmerMatcher(StringMatcher stringMatcher) {
        if (stringMatcher != null) {
            this.trimmerMatcher = stringMatcher;
        }
        return this;
    }

    public int size() {
        checkTokenized();
        return this.tokens.length;
    }

    public String toString() {
        if (this.tokens == null) {
            return "StringTokenizer[not tokenized yet]";
        }
        return "StringTokenizer" + getTokenList();
    }

    public List<String> tokenize(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return Collections.emptyList();
        }
        TextStringBuilder textStringBuilder = new TextStringBuilder();
        ArrayList arrayList = new ArrayList();
        int nextToken = i;
        while (nextToken >= 0 && nextToken < i2) {
            nextToken = readNextToken(cArr, nextToken, i2, textStringBuilder, arrayList);
            if (nextToken >= i2) {
                addToken(arrayList, "");
            }
        }
        return arrayList;
    }

    public static StringTokenizer getCSVInstance(char[] cArr) {
        return getCSVClone().reset(cArr);
    }

    public static StringTokenizer getTSVInstance(char[] cArr) {
        return getTSVClone().reset(cArr);
    }

    @Override
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    @Override
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        String[] strArr = this.tokens;
        int i = this.tokenPos;
        this.tokenPos = i + 1;
        return strArr[i];
    }

    @Override
    public String previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        String[] strArr = this.tokens;
        int i = this.tokenPos - 1;
        this.tokenPos = i;
        return strArr[i];
    }

    @Override
    public void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    public static StringTokenizer getCSVInstance(String str) {
        return getCSVClone().reset(str);
    }

    public static StringTokenizer getTSVInstance(String str) {
        return getTSVClone().reset(str);
    }

    public StringTokenizer reset(char[] cArr) {
        reset();
        this.chars = cArr != null ? (char[]) cArr.clone() : null;
        return this;
    }

    public StringTokenizer reset(String str) {
        reset();
        this.chars = str != null ? str.toCharArray() : null;
        return this;
    }

    public StringTokenizer(char[] cArr) {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        this.delimMatcher = stringMatcherFactory.splitMatcher();
        this.quoteMatcher = stringMatcherFactory.noneMatcher();
        this.ignoredMatcher = stringMatcherFactory.noneMatcher();
        this.trimmerMatcher = stringMatcherFactory.noneMatcher();
        this.ignoreEmptyTokens = true;
        this.chars = cArr != null ? (char[]) cArr.clone() : null;
    }

    public StringTokenizer(char[] cArr, char c) {
        this(cArr);
        setDelimiterChar(c);
    }

    public StringTokenizer(char[] cArr, char c, char c2) {
        this(cArr, c);
        setQuoteChar(c2);
    }

    public StringTokenizer(char[] cArr, String str) {
        this(cArr);
        setDelimiterString(str);
    }

    public StringTokenizer(char[] cArr, StringMatcher stringMatcher) {
        this(cArr);
        setDelimiterMatcher(stringMatcher);
    }

    public StringTokenizer(char[] cArr, StringMatcher stringMatcher, StringMatcher stringMatcher2) {
        this(cArr, stringMatcher);
        setQuoteMatcher(stringMatcher2);
    }

    public StringTokenizer(String str) {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        this.delimMatcher = stringMatcherFactory.splitMatcher();
        this.quoteMatcher = stringMatcherFactory.noneMatcher();
        this.ignoredMatcher = stringMatcherFactory.noneMatcher();
        this.trimmerMatcher = stringMatcherFactory.noneMatcher();
        this.ignoreEmptyTokens = true;
        this.chars = str != null ? str.toCharArray() : null;
    }

    public StringTokenizer(String str, char c) {
        this(str);
        setDelimiterChar(c);
    }

    public StringTokenizer(String str, char c, char c2) {
        this(str, c);
        setQuoteChar(c2);
    }

    public StringTokenizer(String str, String str2) {
        this(str);
        setDelimiterString(str2);
    }

    public StringTokenizer(String str, StringMatcher stringMatcher) {
        this(str);
        setDelimiterMatcher(stringMatcher);
    }

    public StringTokenizer(String str, StringMatcher stringMatcher, StringMatcher stringMatcher2) {
        this(str, stringMatcher);
        setQuoteMatcher(stringMatcher2);
    }
}
