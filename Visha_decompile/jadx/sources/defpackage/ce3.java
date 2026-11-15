package defpackage;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class ce3 extends jm9 {
    @Override
    public Metadata b(eo6 eo6Var, ByteBuffer byteBuffer) {
        return new Metadata(c(new qw7(byteBuffer.array(), byteBuffer.limit())));
    }

    public EventMessage c(qw7 qw7Var) {
        return new EventMessage((String) zi.e(qw7Var.w()), (String) zi.e(qw7Var.w()), qw7Var.v(), qw7Var.v(), Arrays.copyOfRange(qw7Var.d(), qw7Var.e(), qw7Var.f()));
    }
}
