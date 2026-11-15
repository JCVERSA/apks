package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.cx7;
import java.io.IOException;
import java.io.InputStream;

public abstract class b implements cx7 {
    public static final d a = d.c();

    public final g d(g gVar) throws InvalidProtocolBufferException {
        if (gVar == null || gVar.isInitialized()) {
            return gVar;
        }
        throw e(gVar).asInvalidProtocolBufferException().setUnfinishedMessage(gVar);
    }

    public final UninitializedMessageException e(g gVar) {
        return gVar instanceof a ? ((a) gVar).newUninitializedMessageException() : new UninitializedMessageException(gVar);
    }

    @Override
    public g a(InputStream inputStream, d dVar) {
        return d(h(inputStream, dVar));
    }

    @Override
    public g b(InputStream inputStream, d dVar) {
        return d(i(inputStream, dVar));
    }

    public g h(InputStream inputStream, d dVar) throws InvalidProtocolBufferException {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            return i(new a.AbstractC0400a.C0401a(inputStream, c.A(i, inputStream)), dVar);
        } catch (IOException e) {
            throw new InvalidProtocolBufferException(e.getMessage());
        }
    }

    public g i(InputStream inputStream, d dVar) throws InvalidProtocolBufferException {
        c cVarG = c.g(inputStream);
        g gVar = (g) c(cVarG, dVar);
        try {
            cVarG.a(0);
            return gVar;
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(gVar);
        }
    }
}
