package kotlinx.serialization.json;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.livecaption.constant.ICode;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.rb5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \t2\u00020\u0001:\u0001\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0006\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Lkotlinx/serialization/json/c;", "Lkotlinx/serialization/json/b;", MethodDecl.initName, "()V", "", "toString", "()Ljava/lang/String;", "b", ICode.CALL.CALL_KEY_CONTENT, "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lwa5;", "Lkotlinx/serialization/json/JsonNull;", "kotlinx-serialization-json"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9(with = rb5.class)
public abstract class c extends b {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ef5 serializer() {
            return rb5.a;
        }

        public Companion() {
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String b();

    public String toString() {
        return b();
    }

    public c() {
        super(null);
    }
}
