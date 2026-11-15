package kotlinx.serialization.json;

import com.transsion.livecaption.constant.ICode;
import defpackage.c74;
import defpackage.cb5;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004HÆ\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\u000b\u001a\u00020\u00078\u0016X\u0096D¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\f"}, d2 = {"Lkotlinx/serialization/json/JsonNull;", "Lkotlinx/serialization/json/c;", MethodDecl.initName, "()V", "Lef5;", "serializer", "()Lef5;", "", "b", "Ljava/lang/String;", "()Ljava/lang/String;", ICode.CALL.CALL_KEY_CONTENT, "kotlinx-serialization-json"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9(with = cb5.class)
public final class JsonNull extends c {
    public static final JsonNull INSTANCE = new JsonNull();

    public static final String content = "null";
    public static final yi5 c = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
        @Override
        public final ef5 invoke() {
            return cb5.a;
        }
    });

    public JsonNull() {
        super(null);
    }

    @Override
    public String b() {
        return content;
    }

    public final ef5 c() {
        return (ef5) c.getValue();
    }

    public final ef5 serializer() {
        return c();
    }
}
