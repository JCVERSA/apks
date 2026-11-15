package com.yandex.mobile.ads.nativeads.template;

import android.os.Parcel;
import android.os.Parcelable;
import com.yandex.mobile.ads.impl.la1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0010J \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/la1;", "Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;", "sizeConstraintType", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;F)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "b", "Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;", "getSizeConstraintType", "()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;", "c", "F", "getValue", "()F", "SizeConstraintType", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class SizeConstraint implements Parcelable, la1 {
    public static final Parcelable.Creator<SizeConstraint> CREATOR = new a();

    private final SizeConstraintType sizeConstraintType;

    private final float value;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.nativeads.template.SizeConstraint$SizeConstraintType[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.nativeads.template.SizeConstraint$SizeConstraintType[]) from 0x002a: INVOKE (r0v1 com.yandex.mobile.ads.nativeads.template.SizeConstraint$SizeConstraintType[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;", "", "Lcom/yandex/mobile/ads/impl/la1$b;", "FIXED", "FIXED_RATIO", "PREFERRED_RATIO", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class SizeConstraintType implements la1.b {
        FIXED(la1.a.b),
        FIXED_RATIO(la1.a.c),
        PREFERRED_RATIO(la1.a.d);

        private final la1.a b;

        static {
            kotlin.enums.a.a(sizeConstraintTypeArr);
        }

        private SizeConstraintType(la1.a aVar) {
            super(str, i);
            this.b = aVar;
        }

        public static SizeConstraintType valueOf(String str) {
            return (SizeConstraintType) Enum.valueOf(SizeConstraintType.class, str);
        }

        public static SizeConstraintType[] values() {
            return (SizeConstraintType[]) c.clone();
        }

        @Override
        public final la1.a getB() {
            return this.b;
        }
    }

    public static final class a implements Parcelable.Creator<SizeConstraint> {
        @Override
        public final SizeConstraint createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new SizeConstraint(SizeConstraintType.valueOf(parcel.readString()), parcel.readFloat());
        }

        @Override
        public final SizeConstraint[] newArray(int i) {
            return new SizeConstraint[i];
        }
    }

    public SizeConstraint(SizeConstraintType sizeConstraintType, float f) {
        y45.j(sizeConstraintType, "sizeConstraintType");
        this.sizeConstraintType = sizeConstraintType;
        this.value = f;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(SizeConstraint.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.SizeConstraint");
        SizeConstraint sizeConstraint = (SizeConstraint) other;
        return getSizeConstraintType() == sizeConstraint.getSizeConstraintType() && getValue() == sizeConstraint.getValue();
    }

    @Override
    public float getValue() {
        return this.value;
    }

    public int hashCode() {
        return Float.hashCode(getValue()) + (getSizeConstraintType().hashCode() * 31);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.sizeConstraintType.name());
        parcel.writeFloat(this.value);
    }

    @Override
    public SizeConstraintType getSizeConstraintType() {
        return this.sizeConstraintType;
    }
}
