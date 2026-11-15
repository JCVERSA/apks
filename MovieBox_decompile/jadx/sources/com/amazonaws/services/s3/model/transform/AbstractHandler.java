package com.amazonaws.services.s3.model.transform;

import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

abstract class AbstractHandler extends DefaultHandler {

    private final StringBuilder f18232a = new StringBuilder();

    private final LinkedList f18233b = new LinkedList();

    AbstractHandler() {
    }

    protected final boolean a() {
        return this.f18233b.isEmpty();
    }

    protected abstract void b(String str, String str2, String str3);

    protected abstract void c(String str, String str2, String str3, Attributes attributes);

    @Override
    public final void characters(char[] cArr, int i10, int i11) {
        this.f18232a.append(cArr, i10, i11);
    }

    protected final String d() {
        return this.f18232a.toString();
    }

    protected final boolean e(String... strArr) {
        if (strArr.length != this.f18233b.size()) {
            return false;
        }
        int i10 = 0;
        for (String str : this.f18233b) {
            String str2 = strArr[i10];
            if (!str2.equals("*") && !str2.equals(str)) {
                return false;
            }
            i10++;
        }
        return true;
    }

    @Override
    public final void endElement(String str, String str2, String str3) {
        this.f18233b.removeLast();
        b(str, str2, str3);
    }

    @Override
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        this.f18232a.setLength(0);
        c(str, str2, str3, attributes);
        this.f18233b.add(str2);
    }
}
