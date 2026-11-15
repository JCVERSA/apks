package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.h0e;
import defpackage.p1e;
import defpackage.tm1;
import defpackage.wd8;
import defpackage.z09;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@KeepName
public final class DataHolder extends AbstractSafeParcelable implements Closeable {

    @NonNull
    public static final Parcelable.Creator<DataHolder> CREATOR = new p1e();
    private static final a zaf = new com.google.android.gms.common.data.a(new String[0], null);
    final int zaa;
    Bundle zab;
    int[] zac;
    int zad;
    boolean zae;
    private final String[] zag;
    private final CursorWindow[] zah;
    private final int zai;

    @Nullable
    private final Bundle zaj;
    private boolean zak;

    public static class a {
        public final String[] a;
        public final ArrayList b = new ArrayList();
        public final HashMap c = new HashMap();

        public a(String[] strArr, String str, h0e h0eVar) {
            this.a = (String[]) wd8.l(strArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static a builder(@NonNull String[] strArr) {
        return new a(strArr, null, 0 == true ? 1 : 0);
    }

    @NonNull
    public static DataHolder empty(int i) {
        return new DataHolder(zaf, i, (Bundle) null);
    }

    private final void zae(String str, int i) {
        Bundle bundle = this.zab;
        if (bundle == null || !bundle.containsKey(str)) {
            throw new IllegalArgumentException("No such column: ".concat(String.valueOf(str)));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i < 0 || i >= this.zad) {
            throw new CursorIndexOutOfBoundsException(i, this.zad);
        }
    }

    private static CursorWindow[] zaf(a aVar, int i) {
        if (aVar.a.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList arrayList = aVar.b;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(aVar.a.length);
        int i2 = 0;
        boolean z = false;
        while (i2 < size) {
            try {
                if (!cursorWindow.allocRow()) {
                    Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + i2 + ")");
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i2);
                    cursorWindow.setNumColumns(aVar.a.length);
                    arrayList2.add(cursorWindow);
                    if (!cursorWindow.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) arrayList.get(i2);
                int i3 = 0;
                boolean zPutDouble = true;
                while (true) {
                    if (i3 >= aVar.a.length) {
                        z = zPutDouble ? false : true;
                        i2++;
                    } else if (zPutDouble) {
                        String str = aVar.a[i3];
                        Object obj = map.get(str);
                        if (obj == null) {
                            zPutDouble = cursorWindow.putNull(i2, i3);
                        } else if (obj instanceof String) {
                            zPutDouble = cursorWindow.putString((String) obj, i2, i3);
                        } else if (obj instanceof Long) {
                            zPutDouble = cursorWindow.putLong(((Long) obj).longValue(), i2, i3);
                        } else if (obj instanceof Integer) {
                            zPutDouble = cursorWindow.putLong(((Integer) obj).intValue(), i2, i3);
                        } else if (obj instanceof Boolean) {
                            zPutDouble = cursorWindow.putLong(true != ((Boolean) obj).booleanValue() ? 0L : 1L, i2, i3);
                        } else if (obj instanceof byte[]) {
                            zPutDouble = cursorWindow.putBlob((byte[]) obj, i2, i3);
                        } else if (obj instanceof Double) {
                            zPutDouble = cursorWindow.putDouble(((Double) obj).doubleValue(), i2, i3);
                        } else {
                            if (!(obj instanceof Float)) {
                                throw new IllegalArgumentException("Unsupported object for column " + str + ": " + obj.toString());
                            }
                            zPutDouble = cursorWindow.putDouble(((Float) obj).floatValue(), i2, i3);
                        }
                        i3++;
                    }
                    if (z) {
                        throw new zad("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                    }
                    Log.d("DataHolder", "Couldn't populate window data for row " + i2 + " - allocating new window.");
                    cursorWindow.freeLastRow();
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i2);
                    cursorWindow.setNumColumns(aVar.a.length);
                    arrayList2.add(cursorWindow);
                    i2--;
                    i2++;
                }
            } catch (RuntimeException e) {
                int size2 = arrayList2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ((CursorWindow) arrayList2.get(i4)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    @Override
    public void close() {
        synchronized (this) {
            try {
                if (!this.zae) {
                    this.zae = true;
                    int i = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.zah;
                        if (i >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i].close();
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalize() throws Throwable {
        try {
            if (this.zak && this.zah.length > 0 && !isClosed()) {
                close();
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: " + toString() + ")");
            }
        } finally {
            super.finalize();
        }
    }

    public boolean getBoolean(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getLong(i, this.zab.getInt(str)) == 1;
    }

    @NonNull
    public byte[] getByteArray(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getBlob(i, this.zab.getInt(str));
    }

    public int getCount() {
        return this.zad;
    }

    public int getInteger(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getInt(i, this.zab.getInt(str));
    }

    public long getLong(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getLong(i, this.zab.getInt(str));
    }

    @Nullable
    public Bundle getMetadata() {
        return this.zaj;
    }

    public int getStatusCode() {
        return this.zai;
    }

    @NonNull
    public String getString(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getString(i, this.zab.getInt(str));
    }

    public int getWindowIndex(int i) {
        int length;
        int i2 = 0;
        wd8.o(i >= 0 && i < this.zad);
        while (true) {
            int[] iArr = this.zac;
            length = iArr.length;
            if (i2 >= length) {
                break;
            }
            if (i < iArr[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == length ? i2 - 1 : i2;
    }

    public boolean hasColumn(@NonNull String str) {
        return this.zab.containsKey(str);
    }

    public boolean hasNull(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].isNull(i, this.zab.getInt(str));
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.zae;
        }
        return z;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        String[] strArr = this.zag;
        int iA = z09.a(parcel);
        z09.E(parcel, 1, strArr, false);
        z09.G(parcel, 2, this.zah, i, false);
        z09.s(parcel, 3, getStatusCode());
        z09.j(parcel, 4, getMetadata(), false);
        z09.s(parcel, 1000, this.zaa);
        z09.b(parcel, iA);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final double zaa(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getDouble(i, this.zab.getInt(str));
    }

    public final float zab(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getFloat(i, this.zab.getInt(str));
    }

    public final void zac(@NonNull String str, int i, int i2, @NonNull CharArrayBuffer charArrayBuffer) {
        zae(str, i);
        this.zah[i2].copyStringToBuffer(i, this.zab.getInt(str), charArrayBuffer);
    }

    public final void zad() {
        this.zab = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.zag;
            if (i2 >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i2], i2);
            i2++;
        }
        this.zac = new int[this.zah.length];
        int numRows = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zah;
            if (i >= cursorWindowArr.length) {
                this.zad = numRows;
                return;
            }
            this.zac[i] = numRows;
            numRows += this.zah[i].getNumRows() - (numRows - cursorWindowArr[i].getStartPosition());
            i++;
        }
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, @Nullable Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = i;
        this.zag = strArr;
        this.zah = cursorWindowArr;
        this.zai = i2;
        this.zaj = bundle;
    }

    public DataHolder(@NonNull String[] strArr, @NonNull CursorWindow[] cursorWindowArr, int i, @Nullable Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = 1;
        this.zag = (String[]) wd8.l(strArr);
        this.zah = (CursorWindow[]) wd8.l(cursorWindowArr);
        this.zai = i;
        this.zaj = bundle;
        zad();
    }

    public DataHolder(@NonNull Cursor cursor, int i, @Nullable Bundle bundle) {
        int startPosition;
        tm1 tm1Var = new tm1(cursor);
        String[] columnNames = tm1Var.getColumnNames();
        ArrayList arrayList = new ArrayList();
        try {
            int count = tm1Var.getCount();
            CursorWindow window = tm1Var.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                startPosition = 0;
            } else {
                window.acquireReference();
                tm1Var.a(null);
                arrayList.add(window);
                startPosition = window.getNumRows();
            }
            while (startPosition < count && tm1Var.moveToPosition(startPosition)) {
                CursorWindow window2 = tm1Var.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    tm1Var.a(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(startPosition);
                    tm1Var.fillWindow(startPosition, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                startPosition = window2.getStartPosition() + window2.getNumRows();
            }
            tm1Var.close();
            this(columnNames, (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]), i, bundle);
        } catch (Throwable th) {
            tm1Var.close();
            throw th;
        }
    }

    private DataHolder(a aVar, int i, @Nullable Bundle bundle) {
        this(aVar.a, zaf(aVar, -1), i, (Bundle) null);
    }
}
