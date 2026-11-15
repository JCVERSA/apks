package c5;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class e0 implements z0 {

    public static final e0 f16515b = new e0();

    private final Member f16516a;

    public e0() {
        this.f16516a = null;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        Member member = this.f16516a;
        if (member == null) {
            o0Var.f16619k.t((Enum) obj);
            return;
        }
        try {
            o0Var.A(member instanceof Field ? ((Field) member).get(obj) : ((Method) member).invoke(obj, null));
        } catch (Exception e10) {
            throw new JSONException("getEnumValue error", e10);
        }
    }

    public e0(Member member) {
        this.f16516a = member;
    }
}
