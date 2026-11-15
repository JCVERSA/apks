package com.transsion.audiotagger.logging;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class PlainTextTagDisplayFormatter extends AbstractTagDisplayFormatter {
    private static PlainTextTagDisplayFormatter formatter;
    StringBuffer sb = new StringBuffer();
    StringBuffer indent = new StringBuffer();

    public static AbstractTagDisplayFormatter getInstanceOf() {
        if (formatter == null) {
            formatter = new PlainTextTagDisplayFormatter();
        }
        return formatter;
    }

    @Override
    public void addElement(String str, String str2) {
        StringBuffer stringBuffer = this.sb;
        stringBuffer.append(this.indent);
        stringBuffer.append(str);
        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        stringBuffer.append(str2);
        stringBuffer.append('\n');
    }

    @Override
    public void closeHeadingElement(String str) {
        decreaseLevel();
    }

    public void decreaseLevel() {
        this.level--;
        StringBuffer stringBuffer = this.indent;
        this.indent = new StringBuffer(stringBuffer.substring(0, stringBuffer.length() - 2));
    }

    public void increaseLevel() {
        this.level++;
        this.indent.append("  ");
    }

    @Override
    public void openHeadingElement(String str, String str2) {
        addElement(str, str2);
        increaseLevel();
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
