package freemarker.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.bfa;
import defpackage.bga;
import defpackage.cga;
import defpackage.ffa;
import defpackage.g0d;
import defpackage.hga;
import defpackage.i0d;
import defpackage.j0d;
import defpackage.k0d;
import defpackage.kl0;
import defpackage.mga;
import defpackage.n0a;
import defpackage.nga;
import defpackage.ofa;
import defpackage.p71;
import defpackage.yfa;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.Constants;
import java.io.Serializable;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public abstract class BuiltInsForSequences {

    public static class a extends kl0 {

        public class C0344a implements yfa {
            public final nga b;

            @Override
            public Object exec(List list) throws TemplateModelException {
                a.this.a0(list, 1, 2);
                return new b(this.b, a.this.b0(list, 0).intValue(), list.size() > 1 ? (zfa) list.get(1) : null);
            }

            public C0344a(nga ngaVar) {
                this.b = ngaVar;
            }
        }

        public static class b implements nga {
            public final nga b;
            public final int c;
            public final zfa d;
            public final int e;

            @Override
            public zfa get(int i) {
                if (i >= this.e) {
                    return null;
                }
                return new c0(this, i);
            }

            @Override
            public int size() {
                return this.e;
            }

            public b(nga ngaVar, int i, zfa zfaVar) throws _TemplateModelException {
                if (i < 1) {
                    throw new _TemplateModelException(new Object[]{"The 1st argument to ?', key, ' (...) must be at least 1."});
                }
                this.b = ngaVar;
                this.c = i;
                this.d = zfaVar;
                this.e = ((ngaVar.size() + i) - 1) / i;
            }
        }

        @Override
        public zfa h0(nga ngaVar) {
            return new C0344a(ngaVar);
        }
    }

    public static class b extends kl0 {
        @Override
        public zfa h0(nga ngaVar) {
            if (ngaVar.size() == 0) {
                return null;
            }
            return ngaVar.get(0);
        }
    }

    public static class c extends j {

        public class a implements yfa {
            public final Environment b;
            public final bfa c;

            @Override
            public Object exec(List list) throws TemplateModelException {
                c.this.a0(list, 1, 3);
                boolean z = false;
                String strD0 = c.this.d0(list, 0);
                String strC0 = c.this.c0(list, 1);
                String strC1 = c.this.c0(list, 2);
                StringBuffer stringBuffer = new StringBuffer();
                bga it = this.c.iterator();
                int i = 0;
                while (it.hasNext()) {
                    zfa next = it.next();
                    if (next != null) {
                        if (z) {
                            stringBuffer.append(strD0);
                        } else {
                            z = true;
                        }
                        try {
                            stringBuffer.append(q0.c(next, null, null, this.b));
                        } catch (TemplateException e) {
                            throw new _TemplateModelException(e, new Object[]{"\"?", c.this.i, "\" failed at index ", new Integer(i), " with this error:\n\n", "---begin-message---\n", new j0d(e), "\n---end-message---"});
                        }
                    }
                    i++;
                }
                if (z) {
                    if (strC1 != null) {
                        stringBuffer.append(strC1);
                    }
                } else if (strC0 != null) {
                    stringBuffer.append(strC0);
                }
                return new SimpleScalar(stringBuffer.toString());
            }

            public a(Environment environment, bfa bfaVar) {
                this.b = environment;
                this.c = bfaVar;
            }
        }

        @Override
        public zfa F(Environment environment) throws _TemplateModelException, NonSequenceOrCollectionException {
            zfa zfaVarK = this.h.K(environment);
            if (zfaVarK instanceof bfa) {
                if (zfaVarK instanceof RightUnboundedRangeModel) {
                    throw new _TemplateModelException("The sequence to join was right-unbounded numerical range, thus it's infinitely long.");
                }
                return new a(environment, (bfa) zfaVarK);
            }
            if (zfaVarK instanceof nga) {
                return new a(environment, new CollectionAndSequence((nga) zfaVarK));
            }
            throw new NonSequenceOrCollectionException(this.h, zfaVarK, environment);
        }
    }

    public static class d extends kl0 {
        @Override
        public zfa h0(nga ngaVar) {
            if (ngaVar.size() == 0) {
                return null;
            }
            return ngaVar.get(ngaVar.size() - 1);
        }
    }

    public static class e extends kl0 {

        public static class a implements nga {
            public final nga b;

            public a(nga ngaVar) {
                this.b = ngaVar;
            }

            @Override
            public zfa get(int i) {
                nga ngaVar = this.b;
                return ngaVar.get((ngaVar.size() - 1) - i);
            }

            @Override
            public int size() {
                return this.b.size();
            }
        }

        @Override
        public zfa h0(nga ngaVar) {
            return ngaVar instanceof a ? ((a) ngaVar).b : new a(ngaVar);
        }
    }

    public static class f extends j {

        public class a implements yfa {
            public bfa b;
            public Environment c;

            @Override
            public Object exec(List list) throws TemplateModelException {
                f.this.Z(list, 1);
                int i = 0;
                zfa zfaVar = (zfa) list.get(0);
                bga it = this.b.iterator();
                while (it.hasNext()) {
                    if (BuiltInsForSequences.d(i, it.next(), zfaVar, this.c)) {
                        return freemarker.template.a.z6;
                    }
                    i++;
                }
                return freemarker.template.a.y6;
            }

            public a(bfa bfaVar, Environment environment) {
                this.b = bfaVar;
                this.c = environment;
            }
        }

        public class b implements yfa {
            public nga b;
            public Environment c;

            @Override
            public Object exec(List list) throws TemplateModelException {
                f.this.Z(list, 1);
                zfa zfaVar = (zfa) list.get(0);
                int size = this.b.size();
                for (int i = 0; i < size; i++) {
                    if (BuiltInsForSequences.d(i, this.b.get(i), zfaVar, this.c)) {
                        return freemarker.template.a.z6;
                    }
                }
                return freemarker.template.a.y6;
            }

            public b(nga ngaVar, Environment environment) {
                this.b = ngaVar;
                this.c = environment;
            }
        }

        @Override
        public zfa F(Environment environment) throws NonSequenceOrCollectionException {
            zfa zfaVarK = this.h.K(environment);
            if ((zfaVarK instanceof nga) && !BuiltInsForSequences.c(zfaVarK)) {
                return new b((nga) zfaVarK, environment);
            }
            if (zfaVarK instanceof bfa) {
                return new a((bfa) zfaVarK, environment);
            }
            throw new NonSequenceOrCollectionException(this.h, zfaVarK, environment);
        }
    }

    public static class g extends j {
        public int k;

        public class a implements yfa {
            public final nga b;
            public final bfa c;
            public final Environment d;

            public int b(zfa zfaVar) {
                return e(zfaVar, 0, Integer.MAX_VALUE);
            }

            public int c(zfa zfaVar, int i) {
                return g.this.k == 1 ? e(zfaVar, i, Integer.MAX_VALUE) : e(zfaVar, 0, i);
            }

            public int e(zfa zfaVar, int i, int i2) {
                int i3 = -1;
                if (i2 < 0) {
                    return -1;
                }
                bga it = this.c.iterator();
                for (int i4 = 0; it.hasNext() && i4 <= i2; i4++) {
                    zfa next = it.next();
                    if (i4 >= i && BuiltInsForSequences.d(i4, next, zfaVar, this.d)) {
                        if (g.this.k == 1) {
                            return i4;
                        }
                        i3 = i4;
                    }
                }
                return i3;
            }

            @Override
            public final Object exec(List list) throws TemplateModelException {
                int iL;
                int size = list.size();
                g.this.Y(size, 1, 2);
                zfa zfaVar = (zfa) list.get(0);
                if (size > 1) {
                    int iIntValue = g.this.b0(list, 1).intValue();
                    iL = this.b != null ? m(zfaVar, iIntValue) : c(zfaVar, iIntValue);
                } else {
                    iL = this.b != null ? l(zfaVar) : b(zfaVar);
                }
                return iL == -1 ? Constants.f : new SimpleNumber(iL);
            }

            public int l(zfa zfaVar) {
                int size = this.b.size();
                return n(zfaVar, g.this.k == 1 ? 0 : size - 1, size);
            }

            public final int m(zfa zfaVar, int i) {
                int size = this.b.size();
                if (g.this.k != 1) {
                    if (i >= size) {
                        i = size - 1;
                    }
                    if (i < 0) {
                        return -1;
                    }
                } else {
                    if (i >= size) {
                        return -1;
                    }
                    if (i < 0) {
                        i = 0;
                    }
                }
                return n(zfaVar, i, size);
            }

            public final int n(zfa zfaVar, int i, int i2) {
                if (g.this.k == 1) {
                    while (i < i2) {
                        if (BuiltInsForSequences.d(i, this.b.get(i), zfaVar, this.d)) {
                            return i;
                        }
                        i++;
                    }
                    return -1;
                }
                while (i >= 0) {
                    if (BuiltInsForSequences.d(i, this.b.get(i), zfaVar, this.d)) {
                        return i;
                    }
                    i--;
                }
                return -1;
            }

            public a(Environment environment) throws NonSequenceOrCollectionException {
                zfa zfaVarK = g.this.h.K(environment);
                bfa bfaVar = null;
                nga ngaVar = (!(zfaVarK instanceof nga) || BuiltInsForSequences.c(zfaVarK)) ? null : (nga) zfaVarK;
                this.b = ngaVar;
                if (ngaVar == null && (zfaVarK instanceof bfa)) {
                    bfaVar = (bfa) zfaVarK;
                }
                this.c = bfaVar;
                if (ngaVar == null && bfaVar == null) {
                    throw new NonSequenceOrCollectionException(g.this.h, zfaVarK, environment);
                }
                this.d = environment;
            }
        }

        public g(int i) {
            this.k = i;
        }

        @Override
        public zfa F(Environment environment) {
            return new a(environment);
        }
    }

    public static class h extends sortBI {

        public class a implements yfa {
            public nga b;

            public a(nga ngaVar) {
                this.b = ngaVar;
            }

            @Override
            public Object exec(List list) throws TemplateModelException {
                String[] strArr;
                if (list.size() < 1) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("?");
                    stringBuffer.append(h.this.i);
                    throw f1.j(stringBuffer.toString(), list.size(), 1);
                }
                Object obj = list.get(0);
                if (obj instanceof mga) {
                    strArr = new String[]{((mga) obj).getAsString()};
                } else {
                    if (!(obj instanceof nga)) {
                        throw new _TemplateModelException(new Object[]{"The argument to ?", h.this.i, "(key) must be a string (the name of the subvariable), or a sequence of strings (the \"path\" to the subvariable)."});
                    }
                    nga ngaVar = (nga) obj;
                    int size = ngaVar.size();
                    String[] strArr2 = new String[size];
                    for (int i = 0; i < size; i++) {
                        zfa zfaVar = ngaVar.get(i);
                        try {
                            strArr2[i] = ((mga) zfaVar).getAsString();
                        } catch (ClassCastException unused) {
                            if (!(zfaVar instanceof mga)) {
                                throw new _TemplateModelException(new Object[]{"The argument to ?", h.this.i, "(key), when it's a sequence, must be a sequence of strings, but the item at index ", new Integer(i), " is not a string."});
                            }
                        }
                    }
                    strArr = strArr2;
                }
                return sortBI.j0(this.b, strArr);
            }
        }

        @Override
        public zfa h0(nga ngaVar) {
            return new a(ngaVar);
        }
    }

    public static class sortBI extends kl0 {

        public static class BooleanKVPComparator implements Comparator, Serializable {
            private BooleanKVPComparator() {
            }

            @Override
            public int compare(Object obj, Object obj2) {
                boolean zBooleanValue = ((Boolean) ((a) obj).a).booleanValue();
                boolean zBooleanValue2 = ((Boolean) ((a) obj2).a).booleanValue();
                if (zBooleanValue) {
                    return !zBooleanValue2 ? 1 : 0;
                }
                return zBooleanValue2 ? -1 : 0;
            }
        }

        public static class DateKVPComparator implements Comparator, Serializable {
            private DateKVPComparator() {
            }

            @Override
            public int compare(Object obj, Object obj2) {
                return ((Date) ((a) obj).a).compareTo((Date) ((a) obj2).a);
            }
        }

        public static class LexicalKVPComparator implements Comparator {
            private Collator collator;

            public LexicalKVPComparator(Collator collator) {
                this.collator = collator;
            }

            @Override
            public int compare(Object obj, Object obj2) {
                return this.collator.compare(((a) obj).a, ((a) obj2).a);
            }
        }

        public static class NumericalKVPComparator implements Comparator {
            private freemarker.core.c ae;

            @Override
            public int compare(Object obj, Object obj2) {
                try {
                    return this.ae.e((Number) ((a) obj).a, (Number) ((a) obj2).a);
                } catch (TemplateException e) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Failed to compare numbers: ");
                    stringBuffer.append(e);
                    throw new ClassCastException(stringBuffer.toString());
                }
            }

            private NumericalKVPComparator(freemarker.core.c cVar) {
                this.ae = cVar;
            }
        }

        public static class a {
            public Object a;
            public Object b;

            public a(Object obj, Object obj2) {
                this.a = obj;
                this.b = obj2;
            }
        }

        public static TemplateModelException i0(int i, String str, String str2, int i2, zfa zfaVar) {
            String str3;
            String str4;
            if (i == 0) {
                str3 = ES6Iterator.VALUE_PROPERTY;
                str4 = "values";
            } else {
                str3 = "key value";
                str4 = "key values";
            }
            String str5 = str3;
            return new _TemplateModelException(new Object[]{l0(i, i2), "All ", str4, " in the sequence must be ", str2, ", because the first ", str5, " was that. However, the ", str5, " of the current item isn't a ", str, " but a ", new g0d(zfaVar), Consts.DOT});
        }

        public static nga j0(nga ngaVar, String[] strArr) throws TemplateModelException {
            String string;
            int size = ngaVar.size();
            if (size == 0) {
                return ngaVar;
            }
            ArrayList arrayList = new ArrayList(size);
            int length = strArr == null ? 0 : strArr.length;
            Comparator booleanKVPComparator = null;
            char c = 0;
            for (int i = 0; i < size; i++) {
                zfa zfaVar = ngaVar.get(i);
                zfa zfaVar2 = zfaVar;
                for (int i2 = 0; i2 < length; i2++) {
                    try {
                        zfaVar2 = ((ofa) zfaVar2).get(strArr[i2]);
                        if (zfaVar2 == null) {
                            Object[] objArrL0 = l0(length, i);
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("The ");
                            stringBuffer.append(n0a.D(strArr[i2]));
                            throw new _TemplateModelException(new Object[]{objArrL0, stringBuffer.toString(), " subvariable was not found."});
                        }
                    } catch (ClassCastException e) {
                        if (zfaVar2 instanceof ofa) {
                            throw e;
                        }
                        Object[] objArrL1 = l0(length, i);
                        if (i2 == 0) {
                            string = "Sequence items must be hashes when using ?sort_by. ";
                        } else {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("The ");
                            stringBuffer2.append(n0a.D(strArr[i2 - 1]));
                            string = stringBuffer2.toString();
                        }
                        throw new _TemplateModelException(new Object[]{objArrL1, string, " subvariable is not a hash, so ?sort_by ", "can't proceed with getting the ", new k0d(strArr[i2]), " subvariable."});
                    }
                }
                if (c == 0) {
                    if (zfaVar2 instanceof mga) {
                        booleanKVPComparator = new LexicalKVPComparator(Environment.y0().w0());
                        c = 1;
                    } else if (zfaVar2 instanceof hga) {
                        booleanKVPComparator = new NumericalKVPComparator(Environment.y0().f());
                        c = 2;
                    } else if (zfaVar2 instanceof ffa) {
                        booleanKVPComparator = new DateKVPComparator();
                        c = 3;
                    } else {
                        if (!(zfaVar2 instanceof freemarker.template.a)) {
                            throw new _TemplateModelException(new Object[]{l0(length, i), "Values used for sorting must be numbers, strings, date/times or booleans."});
                        }
                        booleanKVPComparator = new BooleanKVPComparator();
                        c = 4;
                    }
                }
                if (c == 1) {
                    try {
                        arrayList.add(new a(((mga) zfaVar2).getAsString(), zfaVar));
                    } catch (ClassCastException e2) {
                        if (zfaVar2 instanceof mga) {
                            throw e2;
                        }
                        throw i0(length, "string", "strings", i, zfaVar2);
                    }
                } else if (c == 2) {
                    try {
                        arrayList.add(new a(((hga) zfaVar2).getAsNumber(), zfaVar));
                    } catch (ClassCastException unused) {
                        if (!(zfaVar2 instanceof hga)) {
                            throw i0(length, "number", "numbers", i, zfaVar2);
                        }
                    }
                } else if (c == 3) {
                    try {
                        arrayList.add(new a(((ffa) zfaVar2).f(), zfaVar));
                    } catch (ClassCastException unused2) {
                        if (!(zfaVar2 instanceof ffa)) {
                            throw i0(length, "date/time", "date/times", i, zfaVar2);
                        }
                    }
                } else {
                    if (c != 4) {
                        throw new BugException("Unexpected key type");
                    }
                    try {
                        arrayList.add(new a(Boolean.valueOf(((freemarker.template.a) zfaVar2).getAsBoolean()), zfaVar));
                    } catch (ClassCastException unused3) {
                        if (!(zfaVar2 instanceof freemarker.template.a)) {
                            throw i0(length, TypedValues.Custom.S_BOOLEAN, "booleans", i, zfaVar2);
                        }
                    }
                }
            }
            try {
                Collections.sort(arrayList, booleanKVPComparator);
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.set(i3, ((a) arrayList.get(i3)).b);
                }
                return new cga(arrayList);
            } catch (Exception e3) {
                Object[] objArrK0 = k0(length);
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Unexpected error while sorting:");
                stringBuffer3.append(e3);
                throw new _TemplateModelException(e3, new Object[]{objArrK0, stringBuffer3.toString()});
            }
        }

        public static Object[] k0(int i) {
            return new Object[]{i == 0 ? "?sort" : "?sort_by(...)", " failed: "};
        }

        public static Object[] l0(int i, int i2) {
            return new Object[]{i == 0 ? "?sort" : "?sort_by(...)", " failed at sequence index ", new Integer(i2), i2 == 0 ? ": " : " (0-based): "};
        }

        @Override
        public zfa h0(nga ngaVar) {
            return j0(ngaVar, null);
        }
    }

    public static boolean c(zfa zfaVar) {
        return (zfaVar instanceof p71) && !((p71) zfaVar).p();
    }

    public static boolean d(int i, zfa zfaVar, zfa zfaVar2, Environment environment) throws _TemplateModelException {
        try {
            return q0.d(zfaVar, null, 1, null, zfaVar2, null, null, false, true, true, true, environment);
        } catch (TemplateException e2) {
            throw new _TemplateModelException(e2, new Object[]{"This error has occurred when comparing sequence item at 0-based index ", new Integer(i), " to the searched item:\n", new i0d(e2)});
        }
    }
}
