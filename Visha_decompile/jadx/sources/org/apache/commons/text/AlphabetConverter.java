package org.apache.commons.text;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.text.AlphabetConverter;

public final class AlphabetConverter {
    private static final String ARROW = " -> ";
    private final int encodedLetterLength;
    private final Map<String, String> encodedToOriginal;
    private final Map<Integer, String> originalToEncoded;

    private AlphabetConverter(Map<Integer, String> map, Map<String, String> map2, int i) {
        this.originalToEncoded = map;
        this.encodedToOriginal = map2;
        this.encodedLetterLength = i;
    }

    private void addSingleEncoding(int i, String str, Collection<Integer> collection, Iterator<Integer> it, Map<Integer, String> map) {
        if (i > 0) {
            for (Integer num : collection) {
                int iIntValue = num.intValue();
                if (!it.hasNext()) {
                    return;
                }
                if (i != this.encodedLetterLength || !map.containsKey(num)) {
                    addSingleEncoding(i - 1, str + codePointToString(iIntValue), collection, it, map);
                }
            }
            return;
        }
        Integer next = it.next();
        while (true) {
            Integer num2 = next;
            if (!map.containsKey(num2)) {
                String strCodePointToString = codePointToString(num2.intValue());
                this.originalToEncoded.put(num2, str);
                this.encodedToOriginal.put(str, strCodePointToString);
                return;
            } else {
                String strCodePointToString2 = codePointToString(num2.intValue());
                this.originalToEncoded.put(num2, strCodePointToString2);
                this.encodedToOriginal.put(strCodePointToString2, strCodePointToString2);
                if (!it.hasNext()) {
                    return;
                } else {
                    next = it.next();
                }
            }
        }
    }

    private static String codePointToString(int i) {
        return Character.charCount(i) == 1 ? String.valueOf((char) i) : new String(Character.toChars(i));
    }

    private static Integer[] convertCharsToIntegers(Character[] chArr) {
        if (ArrayUtils.isEmpty(chArr)) {
            return ArrayUtils.EMPTY_INTEGER_OBJECT_ARRAY;
        }
        Integer[] numArr = new Integer[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            numArr[i] = Integer.valueOf(chArr[i].charValue());
        }
        return numArr;
    }

    public static AlphabetConverter createConverter(Integer[] numArr, Integer[] numArr2, Integer[] numArr3) {
        Integer num;
        LinkedHashSet<Integer> linkedHashSet = new LinkedHashSet(Arrays.asList(numArr));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(Arrays.asList(numArr2));
        LinkedHashSet<Integer> linkedHashSet3 = new LinkedHashSet(Arrays.asList(numArr3));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        HashMap map = new HashMap();
        for (Integer num2 : linkedHashSet3) {
            int iIntValue = num2.intValue();
            if (!linkedHashSet.contains(num2)) {
                throw new IllegalArgumentException("Can not use 'do not encode' list because original alphabet does not contain '" + codePointToString(iIntValue) + "'");
            }
            if (!linkedHashSet2.contains(num2)) {
                throw new IllegalArgumentException("Can not use 'do not encode' list because encoding alphabet does not contain '" + codePointToString(iIntValue) + "'");
            }
            map.put(num2, codePointToString(iIntValue));
        }
        if (linkedHashSet2.size() < linkedHashSet.size()) {
            if (linkedHashSet2.size() - linkedHashSet3.size() < 2) {
                throw new IllegalArgumentException("Must have at least two encoding characters (excluding those in the 'do not encode' list), but has " + (linkedHashSet2.size() - linkedHashSet3.size()));
            }
            int size = (linkedHashSet.size() - linkedHashSet3.size()) / (linkedHashSet2.size() - linkedHashSet3.size());
            int i = 1;
            while (size / linkedHashSet2.size() >= 1) {
                size /= linkedHashSet2.size();
                i++;
            }
            int i2 = i + 1;
            AlphabetConverter alphabetConverter = new AlphabetConverter(linkedHashMap, linkedHashMap2, i2);
            alphabetConverter.addSingleEncoding(i2, "", linkedHashSet2, linkedHashSet.iterator(), map);
            return alphabetConverter;
        }
        Iterator it = linkedHashSet2.iterator();
        for (Integer num3 : linkedHashSet) {
            String strCodePointToString = codePointToString(num3.intValue());
            if (map.containsKey(num3)) {
                linkedHashMap.put(num3, strCodePointToString);
                linkedHashMap2.put(strCodePointToString, strCodePointToString);
            } else {
                Object next = it.next();
                while (true) {
                    num = (Integer) next;
                    if (!linkedHashSet3.contains(num)) {
                        break;
                    }
                    next = it.next();
                }
                String strCodePointToString2 = codePointToString(num.intValue());
                linkedHashMap.put(num3, strCodePointToString2);
                linkedHashMap2.put(strCodePointToString2, strCodePointToString);
            }
        }
        return new AlphabetConverter(linkedHashMap, linkedHashMap2, 1);
    }

    public static AlphabetConverter createConverterFromChars(Character[] chArr, Character[] chArr2, Character[] chArr3) {
        return createConverter(convertCharsToIntegers(chArr), convertCharsToIntegers(chArr2), convertCharsToIntegers(chArr3));
    }

    public static AlphabetConverter createConverterFromMap(Map<Integer, String> map) {
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = 1;
        for (Map.Entry entry : mapUnmodifiableMap.entrySet()) {
            linkedHashMap.put(entry.getValue(), codePointToString(((Integer) entry.getKey()).intValue()));
            if (((String) entry.getValue()).length() > length) {
                length = ((String) entry.getValue()).length();
            }
        }
        return new AlphabetConverter(mapUnmodifiableMap, linkedHashMap, length);
    }

    public static void lambda$toString$0(StringBuilder sb, Integer num, String str) {
        sb.append(codePointToString(num.intValue()));
        sb.append(ARROW);
        sb.append(num);
        sb.append(System.lineSeparator());
    }

    public String decode(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            int iCodePointAt = str.codePointAt(i);
            String strCodePointToString = codePointToString(iCodePointAt);
            if (strCodePointToString.equals(this.originalToEncoded.get(Integer.valueOf(iCodePointAt)))) {
                sb.append(strCodePointToString);
                i++;
            } else {
                if (this.encodedLetterLength + i > str.length()) {
                    throw new UnsupportedEncodingException("Unexpected end of string while decoding " + str);
                }
                String strSubstring = str.substring(i, this.encodedLetterLength + i);
                String str2 = this.encodedToOriginal.get(strSubstring);
                if (str2 == null) {
                    throw new UnsupportedEncodingException("Unexpected string without decoding (" + strSubstring + ") in " + str);
                }
                sb.append(str2);
                i += this.encodedLetterLength;
            }
        }
        return sb.toString();
    }

    public String encode(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            String str2 = this.originalToEncoded.get(Integer.valueOf(iCodePointAt));
            if (str2 == null) {
                throw new UnsupportedEncodingException("Couldn't find encoding for '" + codePointToString(iCodePointAt) + "' in " + str);
            }
            sb.append(str2);
            iCharCount += Character.charCount(iCodePointAt);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AlphabetConverter)) {
            return false;
        }
        AlphabetConverter alphabetConverter = (AlphabetConverter) obj;
        return this.originalToEncoded.equals(alphabetConverter.originalToEncoded) && this.encodedToOriginal.equals(alphabetConverter.encodedToOriginal) && this.encodedLetterLength == alphabetConverter.encodedLetterLength;
    }

    public int getEncodedCharLength() {
        return this.encodedLetterLength;
    }

    public Map<Integer, String> getOriginalToEncoded() {
        return Collections.unmodifiableMap(this.originalToEncoded);
    }

    public int hashCode() {
        return Objects.hash(this.originalToEncoded, this.encodedToOriginal, Integer.valueOf(this.encodedLetterLength));
    }

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        this.originalToEncoded.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AlphabetConverter.lambda$toString$0(sb, (Integer) obj, (String) obj2);
            }
        });
        return sb.toString();
    }
}
