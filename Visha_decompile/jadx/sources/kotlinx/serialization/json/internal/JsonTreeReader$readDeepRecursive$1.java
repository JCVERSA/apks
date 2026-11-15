package kotlinx.serialization.json.internal;

import defpackage.c3;
import defpackage.nt1;
import defpackage.pu1;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0002*\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lpu1;", "Lzfb;", "Lkotlinx/serialization/json/b;", "it", "<anonymous>", "(Lkotlin/DeepRecursiveScope;V)Lkotlinx/serialization/json/JsonElement;"}, k = 3, mv = {1, 8, 0})
@nt1(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", l = {112}, m = "invokeSuspend")
public final class JsonTreeReader$readDeepRecursive$1 extends RestrictedSuspendLambda implements u74 {
    private Object L$0;
    int label;
    final JsonTreeReader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readDeepRecursive$1(JsonTreeReader jsonTreeReader, wh1<? super JsonTreeReader$readDeepRecursive$1> wh1Var) {
        super(3, wh1Var);
        this.this$0 = jsonTreeReader;
    }

    @Override
    public final Object invoke(pu1 pu1Var, zfb zfbVar, wh1<? super kotlinx.serialization.json.b> wh1Var) {
        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this.this$0, wh1Var);
        jsonTreeReader$readDeepRecursive$1.L$0 = pu1Var;
        return jsonTreeReader$readDeepRecursive$1.invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            pu1 pu1Var = (pu1) this.L$0;
            byte bF = this.this$0.a.F();
            if (bF == 1) {
                return this.this$0.j(true);
            }
            if (bF == 0) {
                return this.this$0.j(false);
            }
            if (bF != 6) {
                if (bF == 8) {
                    return this.this$0.f();
                }
                c3.y(this.this$0.a, "Can't begin reading element, unexpected token", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            JsonTreeReader jsonTreeReader = this.this$0;
            this.label = 1;
            obj = jsonTreeReader.h(pu1Var, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return (kotlinx.serialization.json.b) obj;
    }
}
