package kotlin.reflect.jvm.internal.calls;

import defpackage.i81;
import defpackage.y45;
import defpackage.z71;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import org.mozilla.javascript.ES6Iterator;

public final class AnnotationConstructorCaller implements a {
    public final Class a;
    public final List b;
    public final CallMode c;
    public final List d;
    public final List e;
    public final List f;
    public final List g;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "", "(Ljava/lang/String;I)V", "CALL_BY_NAME", "POSITIONAL_CALL", "kotlin-reflection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum CallMode {
        CALL_BY_NAME,
        POSITIONAL_CALL
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "", "(Ljava/lang/String;I)V", "JAVA", "KOTLIN", "kotlin-reflection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Origin {
        JAVA,
        KOTLIN
    }

    public AnnotationConstructorCaller(Class cls, List list, CallMode callMode, Origin origin, List list2) {
        y45.j(cls, "jClass");
        y45.j(list, "parameterNames");
        y45.j(callMode, "callMode");
        y45.j(origin, "origin");
        y45.j(list2, "methods");
        this.a = cls;
        this.b = list;
        this.c = callMode;
        this.d = list2;
        List list3 = list2;
        ArrayList arrayList = new ArrayList(z71.v(list3, 10));
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(((Method) it.next()).getGenericReturnType());
        }
        this.e = arrayList;
        List list4 = this.d;
        ArrayList arrayList2 = new ArrayList(z71.v(list4, 10));
        Iterator it2 = list4.iterator();
        while (it2.hasNext()) {
            Class<?> returnType = ((Method) it2.next()).getReturnType();
            y45.i(returnType, "it");
            Class<?> clsG = ReflectClassUtilKt.g(returnType);
            if (clsG != null) {
                returnType = clsG;
            }
            arrayList2.add(returnType);
        }
        this.f = arrayList2;
        List list5 = this.d;
        ArrayList arrayList3 = new ArrayList(z71.v(list5, 10));
        Iterator it3 = list5.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((Method) it3.next()).getDefaultValue());
        }
        this.g = arrayList3;
        if (this.c == CallMode.POSITIONAL_CALL && origin == Origin.JAVA && !i81.G0(this.b, ES6Iterator.VALUE_PROPERTY).isEmpty()) {
            throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
        }
    }

    @Override
    public List a() {
        return this.e;
    }

    @Override
    public Member b() {
        return (Member) d();
    }

    public void c(Object[] objArr) {
        a.C0371a.a(this, objArr);
    }

    @Override
    public Object call(Object[] objArr) {
        y45.j(objArr, "args");
        c(objArr);
        ArrayList arrayList = new ArrayList(objArr.length);
        int length = objArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Object obj = objArr[i];
            int i3 = i2 + 1;
            Object objK = (obj == null && this.c == CallMode.CALL_BY_NAME) ? this.g.get(i2) : AnnotationConstructorCallerKt.k(obj, (Class) this.f.get(i2));
            if (objK == null) {
                AnnotationConstructorCallerKt.j(i2, (String) this.b.get(i2), (Class) this.f.get(i2));
                throw null;
            }
            arrayList.add(objK);
            i++;
            i2 = i3;
        }
        return AnnotationConstructorCallerKt.d(this.a, kotlin.collections.a.y(i81.l1(this.b, arrayList)), this.d);
    }

    public Void d() {
        return null;
    }

    @Override
    public Type getReturnType() {
        return this.a;
    }

    public AnnotationConstructorCaller(Class cls, List list, CallMode callMode, Origin origin, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        List list3;
        if ((i & 16) != 0) {
            List list4 = list;
            ArrayList arrayList = new ArrayList(z71.v(list4, 10));
            Iterator it = list4.iterator();
            while (it.hasNext()) {
                arrayList.add(cls.getDeclaredMethod((String) it.next(), null));
            }
            list3 = arrayList;
        } else {
            list3 = list2;
        }
        this(cls, list, callMode, origin, list3);
    }
}
