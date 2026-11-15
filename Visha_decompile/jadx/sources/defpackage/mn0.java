package defpackage;

import freemarker.core.Environment;
import freemarker.core.NonNumericalException;
import freemarker.template.SimpleNumber;

public class mn0 extends ll0 {
    @Override
    public zfa h0(String str, Environment environment) throws NonNumericalException {
        try {
            return new SimpleNumber(environment.f().l(str));
        } catch (NumberFormatException unused) {
            throw NonNumericalException.newMalformedNumberException(this, str, environment);
        }
    }
}
