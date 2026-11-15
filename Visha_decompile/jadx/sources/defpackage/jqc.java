package defpackage;

import java.io.IOException;
import java.security.Principal;

public class jqc extends hqc implements Principal {
    public jqc(cqc cqcVar) {
        super((s1) cqcVar.j());
    }

    @Override
    public byte[] getEncoded() {
        try {
            return l("DER");
        } catch (IOException e) {
            throw new RuntimeException(e.toString());
        }
    }

    @Override
    public String getName() {
        return toString();
    }
}
