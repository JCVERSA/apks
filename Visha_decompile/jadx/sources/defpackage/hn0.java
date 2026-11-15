package defpackage;

import freemarker.core.Environment;
import freemarker.core.j;

public class hn0 extends ll0 {

    public static class a extends an0 {
        public a(j jVar, String str, Environment environment) {
            super(jVar, str, environment);
        }

        @Override
        public String b(String str) {
            return n0a.h(this.c, str);
        }
    }

    @Override
    public zfa h0(String str, Environment environment) {
        return new a(this, str, environment);
    }
}
