package defpackage;

import java.util.function.Consumer;
import org.apache.commons.text.TextStringBuilder;

public final class nha implements Consumer {
    public final TextStringBuilder b;

    @Override
    public final void accept(Object obj) {
        this.b.append(obj);
    }
}
