package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.ey5;
import defpackage.h80;
import defpackage.m2e;
import defpackage.nc5;
import defpackage.th;
import defpackage.wd8;
import defpackage.z09;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.text.StringSubstitutor;

public class SafeParcelResponse extends FastSafeParcelableJsonResponse {

    @NonNull
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new m2e();
    private final int zaa;
    private final Parcel zab;
    private final int zac;
    private final zan zad;

    @Nullable
    private final String zae;
    private int zaf;
    private int zag;

    public SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
        this.zaa = i;
        this.zab = (Parcel) wd8.l(parcel);
        this.zac = 2;
        this.zad = zanVar;
        this.zae = zanVar == null ? null : zanVar.zaa();
        this.zaf = 2;
    }

    @NonNull
    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(@NonNull T t) {
        String str = (String) wd8.l(t.getClass().getCanonicalName());
        zan zanVar = new zan(t.getClass());
        zaF(zanVar, t);
        zanVar.zac();
        zanVar.zad();
        return new SafeParcelResponse(t, zanVar, str);
    }

    private static void zaF(zan zanVar, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (zanVar.zaf(cls)) {
            return;
        }
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        zanVar.zae(cls, fieldMappings);
        Iterator<String> it = fieldMappings.keySet().iterator();
        while (it.hasNext()) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(it.next());
            Class cls2 = field.zag;
            if (cls2 != null) {
                try {
                    zaF(zanVar, (FastJsonResponse) cls2.newInstance());
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException("Could not access object of type ".concat(String.valueOf(((Class) wd8.l(field.zag)).getCanonicalName())), e);
                } catch (InstantiationException e2) {
                    throw new IllegalStateException("Could not instantiate an object of type ".concat(String.valueOf(((Class) wd8.l(field.zag)).getCanonicalName())), e2);
                }
            }
        }
    }

    private final void zaG(FastJsonResponse.Field field) {
        if (field.zaf == -1) {
            throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
        }
        Parcel parcel = this.zab;
        if (parcel == null) {
            throw new IllegalStateException("Internal Parcel object is null.");
        }
        int i = this.zaf;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
            }
        } else {
            this.zag = z09.a(parcel);
            this.zaf = 1;
        }
    }

    private final void zaH(StringBuilder sb, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) entry.getValue()).getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int iL = SafeParcelReader.L(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.v(iC));
            if (entry2 != null) {
                if (z) {
                    sb.append(StringUtils.COMMA);
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.zaj()) {
                    int i = field.zac;
                    switch (i) {
                        case 0:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Integer.valueOf(SafeParcelReader.E(parcel, iC))));
                            break;
                        case 1:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.c(parcel, iC)));
                            break;
                        case 2:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Long.valueOf(SafeParcelReader.G(parcel, iC))));
                            break;
                        case 3:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Float.valueOf(SafeParcelReader.A(parcel, iC))));
                            break;
                        case 4:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Double.valueOf(SafeParcelReader.y(parcel, iC))));
                            break;
                        case 5:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.a(parcel, iC)));
                            break;
                        case 6:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Boolean.valueOf(SafeParcelReader.w(parcel, iC))));
                            break;
                        case 7:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.p(parcel, iC)));
                            break;
                        case 8:
                        case 9:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.g(parcel, iC)));
                            break;
                        case 10:
                            Bundle bundleF = SafeParcelReader.f(parcel, iC);
                            HashMap map2 = new HashMap();
                            for (String str2 : bundleF.keySet()) {
                                map2.put(str2, (String) wd8.l(bundleF.getString(str2)));
                            }
                            zaJ(sb, field, FastJsonResponse.zaD(field, map2));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException("Unknown field out type = " + i);
                    }
                } else if (field.zad) {
                    sb.append("[");
                    switch (field.zac) {
                        case 0:
                            th.f(sb, SafeParcelReader.j(parcel, iC));
                            break;
                        case 1:
                            th.h(sb, SafeParcelReader.d(parcel, iC));
                            break;
                        case 2:
                            th.g(sb, SafeParcelReader.l(parcel, iC));
                            break;
                        case 3:
                            th.e(sb, SafeParcelReader.i(parcel, iC));
                            break;
                        case 4:
                            th.d(sb, SafeParcelReader.h(parcel, iC));
                            break;
                        case 5:
                            th.h(sb, SafeParcelReader.b(parcel, iC));
                            break;
                        case 6:
                            th.i(sb, SafeParcelReader.e(parcel, iC));
                            break;
                        case 7:
                            th.j(sb, SafeParcelReader.q(parcel, iC));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] parcelArrN = SafeParcelReader.n(parcel, iC);
                            int length = parcelArrN.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(StringUtils.COMMA);
                                }
                                parcelArrN[i2].setDataPosition(0);
                                zaH(sb, field.zah(), parcelArrN[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.zac) {
                        case 0:
                            sb.append(SafeParcelReader.E(parcel, iC));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.c(parcel, iC));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.G(parcel, iC));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.A(parcel, iC));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.y(parcel, iC));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.a(parcel, iC));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.w(parcel, iC));
                            break;
                        case 7:
                            String strP = SafeParcelReader.p(parcel, iC);
                            sb.append("\"");
                            sb.append(nc5.a(strP));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] bArrG = SafeParcelReader.g(parcel, iC);
                            sb.append("\"");
                            sb.append(h80.a(bArrG));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] bArrG2 = SafeParcelReader.g(parcel, iC);
                            sb.append("\"");
                            sb.append(h80.b(bArrG2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle bundleF2 = SafeParcelReader.f(parcel, iC);
                            Set<String> setKeySet = bundleF2.keySet();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str3 : setKeySet) {
                                if (!z2) {
                                    sb.append(StringUtils.COMMA);
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\":\"");
                                sb.append(nc5.a(bundleF2.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append(StringSubstitutor.DEFAULT_VAR_END);
                            break;
                        case 11:
                            Parcel parcelM = SafeParcelReader.m(parcel, iC);
                            parcelM.setDataPosition(0);
                            zaH(sb, field.zah(), parcelM);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == iL) {
            sb.append('}');
            return;
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + iL, parcel);
    }

    private static final void zaI(StringBuilder sb, int i, @Nullable Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(nc5.a(wd8.l(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(h80.a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(h80.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                ey5.a(sb, (HashMap) wd8.l(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i);
        }
    }

    private static final void zaJ(StringBuilder sb, FastJsonResponse.Field field, Object obj) {
        if (!field.zab) {
            zaI(sb, field.zaa, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            zaI(sb, field.zaa, arrayList.get(i));
        }
        sb.append("]");
    }

    @Override
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        zaG(field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) wd8.l(arrayList)).size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).zaE());
        }
        z09.A(this.zab, field.getSafeParcelableFieldId(), arrayList2, true);
    }

    @Override
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(@NonNull FastJsonResponse.Field field, @NonNull String str, @NonNull T t) {
        zaG(field);
        z09.z(this.zab, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t).zaE(), true);
    }

    @Override
    @Nullable
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zab((String) wd8.l(this.zae));
    }

    @Override
    @NonNull
    public final Object getValueObject(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override
    public final boolean isPrimitiveFieldSet(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override
    public final void setBooleanInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, boolean z) {
        zaG(field);
        z09.g(this.zab, field.getSafeParcelableFieldId(), z);
    }

    @Override
    public final void setDecodedBytesInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable byte[] bArr) {
        zaG(field);
        z09.k(this.zab, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override
    public final void setIntegerInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, int i) {
        zaG(field);
        z09.s(this.zab, field.getSafeParcelableFieldId(), i);
    }

    @Override
    public final void setLongInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, long j) {
        zaG(field);
        z09.w(this.zab, field.getSafeParcelableFieldId(), j);
    }

    @Override
    public final void setStringInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable String str2) {
        zaG(field);
        z09.D(this.zab, field.getSafeParcelableFieldId(), str2, true);
    }

    @Override
    public final void setStringMapInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable Map<String, String> map) {
        zaG(field);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) wd8.l(map)).keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        z09.j(this.zab, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override
    public final void setStringsInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        z09.E(this.zab, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override
    @NonNull
    public final String toString() {
        wd8.m(this.zad, "Cannot convert to JSON on client side.");
        Parcel parcelZaE = zaE();
        parcelZaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zaH(sb, (Map) wd8.l(this.zad.zab((String) wd8.l(this.zae))), parcelZaE);
        return sb.toString();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        zan zanVar;
        int i2 = this.zaa;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.z(parcel, 2, zaE(), false);
        int i3 = this.zac;
        if (i3 != 0) {
            zanVar = i3 != 1 ? this.zad : this.zad;
        } else {
            zanVar = null;
        }
        z09.B(parcel, 3, zanVar, i, false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final Parcel zaE() {
        int i = this.zaf;
        if (i == 0) {
            int iA = z09.a(this.zab);
            this.zag = iA;
            z09.b(this.zab, iA);
            this.zaf = 2;
        } else if (i == 1) {
            z09.b(this.zab, this.zag);
            this.zaf = 2;
        }
        return this.zab;
    }

    @Override
    public final void zab(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        zaG(field);
        z09.c(this.zab, field.getSafeParcelableFieldId(), bigDecimal, true);
    }

    @Override
    public final void zad(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = (BigDecimal) arrayList.get(i);
        }
        z09.d(this.zab, field.getSafeParcelableFieldId(), bigDecimalArr, true);
    }

    @Override
    public final void zaf(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable BigInteger bigInteger) {
        zaG(field);
        z09.e(this.zab, field.getSafeParcelableFieldId(), bigInteger, true);
    }

    @Override
    public final void zah(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = (BigInteger) arrayList.get(i);
        }
        z09.f(this.zab, field.getSafeParcelableFieldId(), bigIntegerArr, true);
    }

    @Override
    public final void zak(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = ((Boolean) arrayList.get(i)).booleanValue();
        }
        z09.h(this.zab, field.getSafeParcelableFieldId(), zArr, true);
    }

    @Override
    public final void zan(@NonNull FastJsonResponse.Field field, @NonNull String str, double d) {
        zaG(field);
        z09.l(this.zab, field.getSafeParcelableFieldId(), d);
    }

    @Override
    public final void zap(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        z09.m(this.zab, field.getSafeParcelableFieldId(), dArr, true);
    }

    @Override
    public final void zar(@NonNull FastJsonResponse.Field field, @NonNull String str, float f) {
        zaG(field);
        z09.o(this.zab, field.getSafeParcelableFieldId(), f);
    }

    @Override
    public final void zat(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = ((Float) arrayList.get(i)).floatValue();
        }
        z09.p(this.zab, field.getSafeParcelableFieldId(), fArr, true);
    }

    @Override
    public final void zaw(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        z09.t(this.zab, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override
    public final void zaz(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) wd8.l(arrayList)).size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = ((Long) arrayList.get(i)).longValue();
        }
        z09.x(this.zab, field.getSafeParcelableFieldId(), jArr, true);
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, zan zanVar, String str) {
        this.zaa = 1;
        Parcel parcelObtain = Parcel.obtain();
        this.zab = parcelObtain;
        safeParcelable.writeToParcel(parcelObtain, 0);
        this.zac = 1;
        this.zad = (zan) wd8.l(zanVar);
        this.zae = (String) wd8.l(str);
        this.zaf = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.zaa = 1;
        this.zab = Parcel.obtain();
        this.zac = 0;
        this.zad = (zan) wd8.l(zanVar);
        this.zae = (String) wd8.l(str);
        this.zaf = 0;
    }
}
