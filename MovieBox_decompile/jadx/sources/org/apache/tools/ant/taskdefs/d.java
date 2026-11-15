package org.apache.tools.ant.taskdefs;

import java.net.URL;
import java.util.Enumeration;
import java.util.NoSuchElementException;

class d implements Enumeration {

    private boolean f68189a = true;

    private final URL f68190b;

    private final e f68191c;

    d(e eVar, URL url) {
        this.f68191c = eVar;
        this.f68190b = url;
    }

    @Override
    public boolean hasMoreElements() {
        return this.f68189a;
    }

    @Override
    public Object nextElement() {
        if (!this.f68189a) {
            throw new NoSuchElementException();
        }
        this.f68189a = false;
        return this.f68190b;
    }
}
