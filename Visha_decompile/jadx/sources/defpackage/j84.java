package defpackage;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.c;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class j84 extends bm9 {
    public static final a F = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j84 a(h84 h84Var, boolean z) {
            y45.j(h84Var, "functionClass");
            List listR = h84Var.r();
            j84 j84Var = new j84(h84Var, null, CallableMemberDescriptor.Kind.DECLARATION, z, null);
            ro8 ro8VarR = h84Var.R();
            List listK = y71.k();
            List listK2 = y71.k();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listR) {
                if (((hcb) obj).h() != Variance.IN_VARIANCE) {
                    break;
                }
                arrayList.add(obj);
            }
            Iterable<mz4> iterableJ1 = i81.j1(arrayList);
            ArrayList arrayList2 = new ArrayList(z71.v(iterableJ1, 10));
            for (mz4 mz4Var : iterableJ1) {
                arrayList2.add(j84.F.b(j84Var, mz4Var.c(), (hcb) mz4Var.d()));
            }
            j84Var.M0(null, ro8VarR, listK, listK2, arrayList2, ((hcb) i81.A0(listR)).q(), Modality.ABSTRACT, b92.e);
            j84Var.U0(true);
            return j84Var;
        }

        public final h b(j84 j84Var, int i, hcb hcbVar) {
            String lowerCase;
            String strB = hcbVar.getName().b();
            y45.i(strB, "typeParameter.name.asString()");
            if (y45.e(strB, "T")) {
                lowerCase = "instance";
            } else if (y45.e(strB, ExifInterface.LONGITUDE_EAST)) {
                lowerCase = "receiver";
            } else {
                lowerCase = strB.toLowerCase(Locale.ROOT);
                y45.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            }
            md mdVarB = md.u1.b();
            by6 by6VarG = by6.g(lowerCase);
            y45.i(by6VarG, "identifier(name)");
            sm9 sm9VarQ = hcbVar.q();
            y45.i(sm9VarQ, "typeParameter.defaultType");
            yt9 yt9Var = yt9.a;
            y45.i(yt9Var, "NO_SOURCE");
            return new ValueParameterDescriptorImpl(j84Var, null, i, mdVarB, by6VarG, sm9VarQ, false, false, false, null, yt9Var);
        }

        public a() {
        }
    }

    public j84(xt1 xt1Var, j84 j84Var, CallableMemberDescriptor.Kind kind, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(xt1Var, j84Var, kind, z);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.impl.a G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        y45.j(xt1Var, "newOwner");
        y45.j(kind, "kind");
        y45.j(mdVar, "annotations");
        y45.j(yt9Var, "source");
        return new j84(xt1Var, (j84) eVar, kind, isSuspend());
    }

    @Override
    public e H0(kotlin.reflect.jvm.internal.impl.descriptors.impl.a.c cVar) {
        y45.j(cVar, "configuration");
        j84 j84Var = (j84) super.H0(cVar);
        if (j84Var == null) {
            return null;
        }
        List listF = j84Var.f();
        y45.i(listF, "substituted.valueParameters");
        List list = listF;
        if ((list instanceof Collection) && list.isEmpty()) {
            return j84Var;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            eh5 type = ((h) it.next()).getType();
            y45.i(type, "it.type");
            if (c.d(type) != null) {
                List listF2 = j84Var.f();
                y45.i(listF2, "substituted.valueParameters");
                List list2 = listF2;
                ArrayList arrayList = new ArrayList(z71.v(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    eh5 type2 = ((h) it2.next()).getType();
                    y45.i(type2, "it.type");
                    arrayList.add(c.d(type2));
                }
                return j84Var.k1(arrayList);
            }
        }
        return j84Var;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public boolean isInline() {
        return false;
    }

    public final e k1(List list) {
        by6 by6Var;
        int size = f().size() - list.size();
        boolean z = true;
        if (size == 0) {
            List listF = f();
            y45.i(listF, "valueParameters");
            List<Pair> listL1 = i81.l1(list, listF);
            if (!(listL1 instanceof Collection) || !listL1.isEmpty()) {
                for (Pair pair : listL1) {
                    if (!y45.e((by6) pair.component1(), ((h) pair.component2()).getName())) {
                    }
                }
            }
            return this;
        }
        List listF2 = f();
        y45.i(listF2, "valueParameters");
        List<h> list2 = listF2;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (h hVar : list2) {
            by6 name = hVar.getName();
            y45.i(name, "it.name");
            int index = hVar.getIndex();
            int i = index - size;
            if (i >= 0 && (by6Var = (by6) list.get(i)) != null) {
                name = by6Var;
            }
            arrayList.add(hVar.D0(this, name, index));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a.c cVarN0 = N0(TypeSubstitutor.b);
        List list3 = list;
        if ((list3 instanceof Collection) && list3.isEmpty()) {
            z = false;
        } else {
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                if (((by6) it.next()) == null) {
                }
            }
            z = false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a.c cVarG = cVarN0.G(z).m(arrayList).g(a());
        y45.i(cVarG, "newCopyBuilder(TypeSubst…   .setOriginal(original)");
        e eVarH0 = super.H0(cVarG);
        y45.g(eVarH0);
        return eVarH0;
    }

    @Override
    public boolean v() {
        return false;
    }

    public j84(xt1 xt1Var, j84 j84Var, CallableMemberDescriptor.Kind kind, boolean z) {
        super(xt1Var, j84Var, md.u1.b(), ak7.i, kind, yt9.a);
        a1(true);
        c1(z);
        T0(false);
    }
}
