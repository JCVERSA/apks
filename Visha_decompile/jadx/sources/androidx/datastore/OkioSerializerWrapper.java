package androidx.datastore;

import androidx.datastore.core.Serializer;
import androidx.datastore.core.okio.OkioSerializer;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import okio.BufferedSink;
import okio.BufferedSource;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0096@¢\u0006\u0004\b\t\u0010\nJ \u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\fH\u0096@¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0011R\u0014\u0010\u0014\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Landroidx/datastore/OkioSerializerWrapper;", "T", "Landroidx/datastore/core/okio/OkioSerializer;", "Landroidx/datastore/core/Serializer;", "delegate", MethodDecl.initName, "(Landroidx/datastore/core/Serializer;)V", "Lokio/BufferedSource;", "source", "readFrom", "(Lokio/BufferedSource;Lwh1;)Ljava/lang/Object;", "t", "Lokio/BufferedSink;", "sink", "Lzfb;", "writeTo", "(Ljava/lang/Object;Lokio/BufferedSink;Lwh1;)Ljava/lang/Object;", "Landroidx/datastore/core/Serializer;", "getDefaultValue", "()Ljava/lang/Object;", "defaultValue", "datastore_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OkioSerializerWrapper<T> implements OkioSerializer<T> {
    private final Serializer<T> delegate;

    public OkioSerializerWrapper(Serializer<T> serializer) {
        y45.j(serializer, "delegate");
        this.delegate = serializer;
    }

    @Override
    public T getDefaultValue() {
        return this.delegate.getDefaultValue();
    }

    @Override
    public Object readFrom(BufferedSource bufferedSource, wh1<? super T> wh1Var) {
        return this.delegate.readFrom(bufferedSource.inputStream(), wh1Var);
    }

    @Override
    public Object writeTo(T t, BufferedSink bufferedSink, wh1<? super zfb> wh1Var) {
        Object objWriteTo = this.delegate.writeTo(t, bufferedSink.outputStream(), wh1Var);
        return objWriteTo == z45.f() ? objWriteTo : zfb.a;
    }
}
