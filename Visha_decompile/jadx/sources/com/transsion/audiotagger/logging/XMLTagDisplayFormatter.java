package com.transsion.audiotagger.logging;

import java.text.StringCharacterIterator;

public class XMLTagDisplayFormatter extends AbstractTagDisplayFormatter {
    protected static final String XML_CLOSE_END = ">";
    protected static final String XML_CLOSE_START = "</";
    protected static final String XML_C_DATA_TAG_CLOSE = "]]>";
    protected static final String XML_C_DATA_TAG_OPEN = "<![CDATA[";
    protected static final String XML_OPEN_END = ">";
    protected static final String XML_OPEN_START = "<";
    protected static final String XML_SINGLE_TAG_CLOSE = " />";
    private static XMLTagDisplayFormatter formatter;
    StringBuffer sb = new StringBuffer();

    public static String replaceXMLCharacters(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator(str);
        for (char cFirst = stringCharacterIterator.first(); cFirst != 65535; cFirst = stringCharacterIterator.next()) {
            if (cFirst == '\"') {
                stringBuffer.append("&quot;");
            } else if (cFirst == '<') {
                stringBuffer.append("&lt;");
            } else if (cFirst == '>') {
                stringBuffer.append("&gt;");
            } else if (cFirst == '&') {
                stringBuffer.append("&amp;");
            } else if (cFirst != '\'') {
                stringBuffer.append(cFirst);
            } else {
                stringBuffer.append("&apos;");
            }
        }
        return stringBuffer.toString();
    }

    public static String xmlCData(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isLetterOrDigit(cCharAt) || Character.isSpaceChar(cCharAt)) {
                stringBuffer.append(cCharAt);
            } else {
                stringBuffer.append("&#x");
                stringBuffer.append(Integer.toString(Character.codePointAt(str, i), 16));
            }
        }
        return XML_C_DATA_TAG_OPEN + ((Object) stringBuffer) + XML_C_DATA_TAG_CLOSE;
    }

    public static String xmlClose(String str) {
        return XML_CLOSE_START + str + ">";
    }

    public static String xmlFullTag(String str, String str2) {
        return xmlOpen(str) + xmlCData(str2) + xmlClose(str);
    }

    public static String xmlOpen(String str) {
        return XML_OPEN_START + str + ">";
    }

    public static String xmlOpenHeading(String str, String str2) {
        return xmlOpen(str + " id=\"" + str2 + "\"");
    }

    public static String xmlSingleTag(String str) {
        return XML_OPEN_START + str + XML_SINGLE_TAG_CLOSE;
    }

    @Override
    public void addElement(String str, String str2) {
        this.sb.append(xmlFullTag(str, replaceXMLCharacters(str2)));
    }

    @Override
    public void closeHeadingElement(String str) {
        this.sb.append(xmlClose(str));
    }

    @Override
    public void openHeadingElement(String str, String str2) {
        if (str2.length() == 0) {
            this.sb.append(xmlOpen(str));
        } else {
            this.sb.append(xmlOpenHeading(str, replaceXMLCharacters(str2)));
        }
    }

    @Override
    public String toString() {
        return this.sb.toString();
    }

    @Override
    public void addElement(String str, int i) {
        addElement(str, String.valueOf(i));
    }

    @Override
    public void addElement(String str, boolean z) {
        addElement(str, String.valueOf(z));
    }

    @Override
    public void openHeadingElement(String str, boolean z) {
        openHeadingElement(str, String.valueOf(z));
    }

    @Override
    public void openHeadingElement(String str, int i) {
        openHeadingElement(str, String.valueOf(i));
    }
}
