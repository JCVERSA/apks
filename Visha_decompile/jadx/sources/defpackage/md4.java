package defpackage;

import freemarker.template.SimpleCollection;
import freemarker.template.TemplateModelException;
import freemarker.template.a;
import java.util.ArrayList;
import java.util.List;

public final class md4 implements a, mga, nga, pfa, yfa {
    public static final zfa b = new md4();
    public static final bfa c = new SimpleCollection(new ArrayList(0));

    public static zfa b() {
        return b;
    }

    @Override
    public Object exec(List list) {
        return null;
    }

    @Override
    public zfa get(int i) throws TemplateModelException {
        throw new TemplateModelException("Empty list");
    }

    @Override
    public boolean getAsBoolean() {
        return false;
    }

    @Override
    public String getAsString() {
        return "";
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public bfa keys() {
        return c;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public bfa values() {
        return c;
    }

    @Override
    public zfa get(String str) {
        return null;
    }
}
