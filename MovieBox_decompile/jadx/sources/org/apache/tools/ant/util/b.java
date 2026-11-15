package org.apache.tools.ant.util;

import java.util.Enumeration;
import java.util.NoSuchElementException;

public class b {

    private static final class a implements Enumeration {

        private final Enumeration f68390a;

        private final Enumeration f68391b;

        public a(Enumeration enumeration, Enumeration enumeration2) {
            this.f68390a = enumeration;
            this.f68391b = enumeration2;
        }

        @Override
        public boolean hasMoreElements() {
            return this.f68390a.hasMoreElements() || this.f68391b.hasMoreElements();
        }

        @Override
        public Object nextElement() {
            return this.f68390a.hasMoreElements() ? this.f68390a.nextElement() : this.f68391b.nextElement();
        }
    }

    public static final class C0836b implements Enumeration {
        @Override
        public boolean hasMoreElements() {
            return false;
        }

        @Override
        public Object nextElement() {
            throw new NoSuchElementException();
        }
    }

    public static Enumeration a(Enumeration enumeration, Enumeration enumeration2) {
        return new a(enumeration, enumeration2);
    }
}
