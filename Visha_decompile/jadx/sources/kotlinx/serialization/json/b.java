package kotlinx.serialization.json;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.ef5;
import defpackage.ld9;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lkotlinx/serialization/json/b;", "", MethodDecl.initName, "()V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lkotlinx/serialization/json/a;", "Lkotlinx/serialization/json/JsonObject;", "Lkotlinx/serialization/json/c;", "kotlinx-serialization-json"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9(with = JsonElementSerializer.class)
public abstract class b {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ef5 serializer() {
            return JsonElementSerializer.a;
        }

        public Companion() {
        }
    }

    public b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public b() {
    }
}
