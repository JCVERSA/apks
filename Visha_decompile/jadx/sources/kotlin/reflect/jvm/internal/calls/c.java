package kotlin.reflect.jvm.internal.calls;

import defpackage.c05;
import defpackage.clb;
import defpackage.eh5;
import defpackage.h05;
import defpackage.jk0;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.u15;
import defpackage.wn8;
import defpackage.wq0;
import defpackage.xt1;
import defpackage.y45;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.h;

public final class c implements kotlin.reflect.jvm.internal.calls.a {
    public final kotlin.reflect.jvm.internal.calls.a a;
    public final boolean b;
    public final a c;

    public static final class a {
        public final u15 a;
        public final Method[] b;
        public final Method c;

        public a(u15 u15Var, Method[] methodArr, Method method) {
            y45.j(u15Var, "argumentRange");
            y45.j(methodArr, "unbox");
            this.a = u15Var;
            this.b = methodArr;
            this.c = method;
        }

        public final u15 a() {
            return this.a;
        }

        public final Method[] b() {
            return this.b;
        }

        public final Method c() {
            return this.c;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004d  */
    public c(CallableMemberDescriptor callableMemberDescriptor, kotlin.reflect.jvm.internal.calls.a aVar, boolean z) {
        a aVar2;
        Class clsI;
        y45.j(callableMemberDescriptor, "descriptor");
        y45.j(aVar, "caller");
        this.a = aVar;
        this.b = z;
        eh5 returnType = callableMemberDescriptor.getReturnType();
        y45.g(returnType);
        Class clsI2 = c05.i(returnType);
        Method methodD = clsI2 != null ? c05.d(clsI2, callableMemberDescriptor) : null;
        int i = 0;
        if (h05.a(callableMemberDescriptor)) {
            aVar2 = new a(u15.f.a(), new Method[0], methodD);
        } else {
            int i2 = -1;
            if (!(aVar instanceof b.h.c)) {
                if (callableMemberDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.c) {
                    if (!(aVar instanceof jk0)) {
                        i2 = 0;
                    }
                } else if (callableMemberDescriptor.Z() == null || (aVar instanceof jk0)) {
                    i2 = 0;
                } else {
                    xt1 xt1VarB = callableMemberDescriptor.b();
                    y45.i(xt1VarB, "descriptor.containingDeclaration");
                    if (h05.b(xt1VarB)) {
                        i2 = 0;
                    } else {
                        i2 = 1;
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            ro8 ro8VarB0 = callableMemberDescriptor.b0();
            eh5 type = ro8VarB0 != null ? ro8VarB0.getType() : null;
            if (type != null) {
                arrayList.add(type);
            } else if (callableMemberDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.c) {
                qw0 qw0VarF = ((kotlin.reflect.jvm.internal.impl.descriptors.c) callableMemberDescriptor).F();
                y45.i(qw0VarF, "descriptor.constructedClass");
                if (qw0VarF.g()) {
                    xt1 xt1VarB2 = qw0VarF.b();
                    y45.h(xt1VarB2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    arrayList.add(((qw0) xt1VarB2).q());
                }
            } else {
                xt1 xt1VarB3 = callableMemberDescriptor.b();
                y45.i(xt1VarB3, "descriptor.containingDeclaration");
                if ((xt1VarB3 instanceof qw0) && h05.b(xt1VarB3)) {
                    arrayList.add(((qw0) xt1VarB3).q());
                }
            }
            List listF = callableMemberDescriptor.f();
            y45.i(listF, "descriptor.valueParameters");
            Iterator it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(((h) it.next()).getType());
            }
            int size = arrayList.size() + i2 + (this.b ? ((arrayList.size() + 31) / 32) + 1 : 0) + (((callableMemberDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.e) && ((kotlin.reflect.jvm.internal.impl.descriptors.e) callableMemberDescriptor).isSuspend()) ? 1 : 0);
            if (wq0.a(this) != size) {
                throw new KotlinReflectionInternalError("Inconsistent number of parameters in the descriptor and Java reflection object: " + wq0.a(this) + " != " + size + "\nCalling: " + callableMemberDescriptor + "\nParameter types: " + a() + ")\nDefault: " + this.b);
            }
            u15 u15VarQ = wn8.q(Math.max(i2, 0), arrayList.size() + i2);
            Method[] methodArr = new Method[size];
            while (i < size) {
                methodArr[i] = (i > u15VarQ.c() || u15VarQ.b() > i || (clsI = c05.i((eh5) arrayList.get(i - i2))) == null) ? null : c05.f(clsI, callableMemberDescriptor);
                i++;
            }
            aVar2 = new a(u15VarQ, methodArr, methodD);
        }
        this.c = aVar2;
    }

    @Override
    public List a() {
        return this.a.a();
    }

    @Override
    public Member b() {
        return this.a.b();
    }

    @Override
    public Object call(Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke;
        y45.j(objArr, "args");
        a aVar = this.c;
        u15 u15VarA = aVar.a();
        Method[] methodArrB = aVar.b();
        Method methodC = aVar.c();
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        y45.i(objArrCopyOf, "copyOf(this, size)");
        int iB = u15VarA.b();
        int iC = u15VarA.c();
        if (iB <= iC) {
            while (true) {
                Method method = methodArrB[iB];
                Object objG = objArr[iB];
                if (method != null) {
                    if (objG != null) {
                        objG = method.invoke(objG, null);
                    } else {
                        Class<?> returnType = method.getReturnType();
                        y45.i(returnType, "method.returnType");
                        objG = clb.g(returnType);
                    }
                }
                objArrCopyOf[iB] = objG;
                if (iB == iC) {
                    break;
                }
                iB++;
            }
        }
        Object objCall = this.a.call(objArrCopyOf);
        return (methodC == null || (objInvoke = methodC.invoke(null, objCall)) == null) ? objCall : objInvoke;
    }

    @Override
    public Type getReturnType() {
        return this.a.getReturnType();
    }
}
