package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class na2 implements Parcelable {
    public static final Parcelable.Creator<na2> CREATOR = new a();
    private final b b;
    private final float c;

    public static final class a implements Parcelable.Creator<na2> {
        @Override
        public final na2 createFromParcel(Parcel parcel) {
            y45.j(parcel, "source");
            y45.j(parcel, "parcel");
            return new na2(parcel.readInt() == -1 ? null : b.values()[parcel.readInt()], parcel.readFloat());
        }

        @Override
        public final na2[] newArray(int i) {
            return new na2[i];
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.na2$b[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.na2$b[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.na2$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class b {
        b,
        c,
        d;

        static {
            kotlin.enums.a.a(bVarArr);
        }

        private b() {
            super(str, i);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) e.clone();
        }
    }

    public na2(b bVar, float f) {
        this.b = bVar;
        this.c = f;
    }

    public final b c() {
        return this.b;
    }

    public final float d() {
        return this.c;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "dest");
        b bVar = this.b;
        parcel.writeInt(bVar != null ? bVar.ordinal() : -1);
        parcel.writeFloat(this.c);
    }
}
