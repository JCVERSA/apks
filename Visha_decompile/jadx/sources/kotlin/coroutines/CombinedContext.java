package kotlin.coroutines;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.d;
import kotlin.jvm.internal.Ref$IntRef;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001+B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J*\u0010\u0018\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0015*\u00020\u00052\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u001e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001a2\u0006\u0010\u001b\u001a\u00028\u00002\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010 \u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0016¢\u0006\u0004\b \u0010!J\u001a\u0010#\u001a\u00020\f2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010\u000bJ\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(R\u0014\u0010\u0004\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010)R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010*¨\u0006,"}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/d;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", TtmlNode.LEFT, "Lkotlin/coroutines/d$b;", "element", MethodDecl.initName, "(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)V", "", PlayAudioData.TAG_SIZE, "()I", "", "contains", "(Lkotlin/coroutines/d$b;)Z", "context", "containsAll", "(Lkotlin/coroutines/CombinedContext;)Z", "", "writeReplace", "()Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/d$c;", "key", "get", "(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Ls74;)Ljava/lang/Object;", "minusKey", "(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "", "toString", "()Ljava/lang/String;", "Lkotlin/coroutines/d;", "Lkotlin/coroutines/d$b;", "Serialized", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CombinedContext implements d, Serializable {
    private final d.b element;
    private final d left;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\b\b\u0002\u0018\u0000 \u000e2\u00060\u0001j\u0002`\u0002:\u0001\u000fB\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "Lkotlin/coroutines/d;", "elements", MethodDecl.initName, "([Lkotlin/coroutines/d;)V", "", "readResolve", "()Ljava/lang/Object;", "[Lkotlin/coroutines/d;", "getElements", "()[Lkotlin/coroutines/d;", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        private final d[] elements;

        public Serialized(d[] dVarArr) {
            y45.j(dVarArr, "elements");
            this.elements = dVarArr;
        }

        private final Object readResolve() {
            d[] dVarArr = this.elements;
            d dVarPlus = EmptyCoroutineContext.INSTANCE;
            for (d dVar : dVarArr) {
                dVarPlus = dVarPlus.plus(dVar);
            }
            return dVarPlus;
        }

        public final d[] getElements() {
            return this.elements;
        }
    }

    public CombinedContext(d dVar, d.b bVar) {
        y45.j(dVar, TtmlNode.LEFT);
        y45.j(bVar, "element");
        this.left = dVar;
        this.element = bVar;
    }

    private final boolean contains(d.b element) {
        return y45.e(get(element.getKey()), element);
    }

    private final boolean containsAll(CombinedContext context) {
        while (contains(context.element)) {
            d dVar = context.left;
            if (!(dVar instanceof CombinedContext)) {
                y45.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return contains((d.b) dVar);
            }
            context = (CombinedContext) dVar;
        }
        return false;
    }

    private final int size() {
        int i = 2;
        while (true) {
            d dVar = this.left;
            this = dVar instanceof CombinedContext ? (CombinedContext) dVar : null;
            if (this == null) {
                return i;
            }
            i++;
        }
    }

    public static final String toString$lambda$2(String str, d.b bVar) {
        y45.j(str, "acc");
        y45.j(bVar, "element");
        if (str.length() == 0) {
            return bVar.toString();
        }
        return str + ", " + bVar;
    }

    private final Object writeReplace() {
        int size = size();
        final d[] dVarArr = new d[size];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        fold(zfb.a, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return CombinedContext.writeReplace$lambda$3(dVarArr, ref$IntRef, (zfb) obj, (d.b) obj2);
            }
        });
        if (ref$IntRef.element == size) {
            return new Serialized(dVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public static final zfb writeReplace$lambda$3(d[] dVarArr, Ref$IntRef ref$IntRef, zfb zfbVar, d.b bVar) {
        y45.j(zfbVar, "<unused var>");
        y45.j(bVar, "element");
        int i = ref$IntRef.element;
        ref$IntRef.element = i + 1;
        dVarArr[i] = bVar;
        return zfb.a;
    }

    public boolean equals(Object other) {
        if (this != other) {
            if (other instanceof CombinedContext) {
                CombinedContext combinedContext = (CombinedContext) other;
                if (combinedContext.size() != size() || !combinedContext.containsAll(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override
    public <R> R fold(R initial, s74 operation) {
        y45.j(operation, "operation");
        return (R) operation.invoke(this.left.fold(initial, operation), this.element);
    }

    @Override
    public <E extends d.b> E get(d.c key) {
        y45.j(key, "key");
        while (true) {
            E e = (E) this.element.get(key);
            if (e != null) {
                return e;
            }
            d dVar = this.left;
            if (!(dVar instanceof CombinedContext)) {
                return (E) dVar.get(key);
            }
            this = (CombinedContext) dVar;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override
    public d minusKey(d.c key) {
        y45.j(key, "key");
        if (this.element.get(key) != null) {
            return this.left;
        }
        d dVarMinusKey = this.left.minusKey(key);
        if (dVarMinusKey == this.left) {
            return this;
        }
        return dVarMinusKey == EmptyCoroutineContext.INSTANCE ? this.element : new CombinedContext(dVarMinusKey, this.element);
    }

    @Override
    public d plus(d dVar) {
        return d.a.b(this, dVar);
    }

    public String toString() {
        return '[' + ((String) fold("", new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return CombinedContext.toString$lambda$2((String) obj, (d.b) obj2);
            }
        })) + ']';
    }
}
