package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;

class b extends VersionedParcel {

    private final SparseIntArray f14894d;

    private final Parcel f14895e;

    private final int f14896f;

    private final int f14897g;

    private final String f14898h;

    private int f14899i;

    private int f14900j;

    private int f14901k;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new androidx.collection.a(), new androidx.collection.a(), new androidx.collection.a());
    }

    @Override
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.f14895e.writeInt(-1);
        } else {
            this.f14895e.writeInt(bArr.length);
            this.f14895e.writeByteArray(bArr);
        }
    }

    @Override
    protected void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f14895e, 0);
    }

    @Override
    public void E(int i10) {
        this.f14895e.writeInt(i10);
    }

    @Override
    public void G(Parcelable parcelable) {
        this.f14895e.writeParcelable(parcelable, 0);
    }

    @Override
    public void I(String str) {
        this.f14895e.writeString(str);
    }

    @Override
    public void a() {
        int i10 = this.f14899i;
        if (i10 >= 0) {
            int i11 = this.f14894d.get(i10);
            int iDataPosition = this.f14895e.dataPosition();
            this.f14895e.setDataPosition(i11);
            this.f14895e.writeInt(iDataPosition - i11);
            this.f14895e.setDataPosition(iDataPosition);
        }
    }

    @Override
    protected VersionedParcel b() {
        Parcel parcel = this.f14895e;
        int iDataPosition = parcel.dataPosition();
        int i10 = this.f14900j;
        if (i10 == this.f14896f) {
            i10 = this.f14897g;
        }
        return new b(parcel, iDataPosition, i10, this.f14898h + "  ", this.f14891a, this.f14892b, this.f14893c);
    }

    @Override
    public boolean g() {
        return this.f14895e.readInt() != 0;
    }

    @Override
    public byte[] i() {
        int i10 = this.f14895e.readInt();
        if (i10 < 0) {
            return null;
        }
        byte[] bArr = new byte[i10];
        this.f14895e.readByteArray(bArr);
        return bArr;
    }

    @Override
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f14895e);
    }

    @Override
    public boolean m(int i10) {
        while (this.f14900j < this.f14897g) {
            int i11 = this.f14901k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            this.f14895e.setDataPosition(this.f14900j);
            int i12 = this.f14895e.readInt();
            this.f14901k = this.f14895e.readInt();
            this.f14900j += i12;
        }
        return this.f14901k == i10;
    }

    @Override
    public int o() {
        return this.f14895e.readInt();
    }

    @Override
    public Parcelable q() {
        return this.f14895e.readParcelable(getClass().getClassLoader());
    }

    @Override
    public String s() {
        return this.f14895e.readString();
    }

    @Override
    public void w(int i10) {
        a();
        this.f14899i = i10;
        this.f14894d.put(i10, this.f14895e.dataPosition());
        E(0);
        E(i10);
    }

    @Override
    public void y(boolean z10) {
        this.f14895e.writeInt(z10 ? 1 : 0);
    }

    private b(Parcel parcel, int i10, int i11, String str, androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3) {
        super(aVar, aVar2, aVar3);
        this.f14894d = new SparseIntArray();
        this.f14899i = -1;
        this.f14901k = -1;
        this.f14895e = parcel;
        this.f14896f = i10;
        this.f14897g = i11;
        this.f14900j = i10;
        this.f14898h = str;
    }
}
