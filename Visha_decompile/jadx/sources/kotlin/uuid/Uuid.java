package kotlin.uuid;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.g1a;
import defpackage.qeb;
import defpackage.s74;
import defpackage.y45;
import java.io.Serializable;
import java.util.Comparator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.uuid.Uuid;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0007\u0018\u0000 '2\u00060\u0001j\u0002`\u0002:\u0001(B\u0019\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J@\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\tH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000b\u0010\fJ@\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u00000\tH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0014J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR \u0010\u0004\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0004\u0010 \u0012\u0004\b#\u0010$\u001a\u0004\b!\u0010\"R \u0010\u0005\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010 \u0012\u0004\b&\u0010$\u001a\u0004\b%\u0010\"\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {"Lkotlin/uuid/Uuid;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "mostSignificantBits", "leastSignificantBits", MethodDecl.initName, "(JJ)V", "T", "Lkotlin/Function2;", "action", "toLongs", "(Ls74;)Ljava/lang/Object;", "Lqeb;", "toULongs", "", "writeReplace", "()Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "toHexString", "", "toByteArray", "()[B", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "J", "getMostSignificantBits", "()J", "getMostSignificantBits$annotations", "()V", "getLeastSignificantBits", "getLeastSignificantBits$annotations", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Uuid implements Serializable {
    public static final int SIZE_BITS = 128;
    public static final int SIZE_BYTES = 16;
    private final long leastSignificantBits;
    private final long mostSignificantBits;

    public static final Companion INSTANCE = new Companion(null);
    private static final Uuid NIL = new Uuid(0, 0);
    private static final Comparator<Uuid> LEXICAL_ORDER = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return Uuid.LEXICAL_ORDER$lambda$0((Uuid) obj, (Uuid) obj2);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Uuid a(long j, long j2) {
            return (j == 0 && j2 == 0) ? b() : new Uuid(j, j2);
        }

        public final Uuid b() {
            return Uuid.NIL;
        }

        public Companion() {
        }
    }

    public Uuid(long j, long j2) {
        this.mostSignificantBits = j;
        this.leastSignificantBits = j2;
    }

    public static final int LEXICAL_ORDER$lambda$0(Uuid uuid, Uuid uuid2) {
        y45.j(uuid, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(uuid2, "b");
        long j = uuid.mostSignificantBits;
        return j != uuid2.mostSignificantBits ? Long.compareUnsigned(qeb.b(j), qeb.b(uuid2.mostSignificantBits)) : Long.compareUnsigned(qeb.b(uuid.leastSignificantBits), qeb.b(uuid2.leastSignificantBits));
    }

    public static void getLeastSignificantBits$annotations() {
    }

    public static void getMostSignificantBits$annotations() {
    }

    private final <T> T toLongs(s74 action) {
        y45.j(action, "action");
        return (T) action.invoke(Long.valueOf(getMostSignificantBits()), Long.valueOf(getLeastSignificantBits()));
    }

    private final <T> T toULongs(s74 action) {
        y45.j(action, "action");
        return (T) action.invoke(qeb.a(qeb.b(getMostSignificantBits())), qeb.a(qeb.b(getLeastSignificantBits())));
    }

    private final Object writeReplace() {
        return a.a(this);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) other;
        return this.mostSignificantBits == uuid.mostSignificantBits && this.leastSignificantBits == uuid.leastSignificantBits;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public int hashCode() {
        long j = this.mostSignificantBits ^ this.leastSignificantBits;
        return ((int) (j >> 32)) ^ ((int) j);
    }

    public final byte[] toByteArray() {
        byte[] bArr = new byte[16];
        b.e(this.mostSignificantBits, bArr, 0);
        b.e(this.leastSignificantBits, bArr, 8);
        return bArr;
    }

    public final String toHexString() {
        byte[] bArr = new byte[32];
        b.d(this.leastSignificantBits, bArr, 16, 8);
        b.d(this.mostSignificantBits, bArr, 0, 8);
        return g1a.B(bArr);
    }

    public String toString() {
        byte[] bArr = new byte[36];
        b.d(this.leastSignificantBits, bArr, 24, 6);
        bArr[23] = 45;
        b.d(this.leastSignificantBits >>> 48, bArr, 19, 2);
        bArr[18] = 45;
        b.d(this.mostSignificantBits, bArr, 14, 2);
        bArr[13] = 45;
        b.d(this.mostSignificantBits >>> 16, bArr, 9, 2);
        bArr[8] = 45;
        b.d(this.mostSignificantBits >>> 32, bArr, 0, 4);
        return g1a.B(bArr);
    }
}
