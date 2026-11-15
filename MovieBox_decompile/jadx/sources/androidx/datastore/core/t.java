package androidx.datastore.core;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.coroutines.Continuation;

public interface t {
    Object a();

    Object b(Object obj, OutputStream outputStream, Continuation continuation);

    Object c(InputStream inputStream, Continuation continuation);
}
