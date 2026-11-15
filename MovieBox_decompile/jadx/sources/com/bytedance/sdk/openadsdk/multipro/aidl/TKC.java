package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TKC implements Cursor {
    Map<String, List<String>> Sj;
    int TKC = 0;
    String[] sP;

    public TKC(Map<String, List<String>> map) {
        if (map == null || map.keySet() == null) {
            this.Sj = new HashMap();
            return;
        }
        this.Sj = map;
        try {
            this.sP = (String[]) map.keySet().toArray(new String[map.keySet().size()]);
        } catch (Exception unused) {
        }
    }

    @Override
    public byte[] getBlob(int i10) {
        return new byte[0];
    }

    @Override
    public int getColumnCount() {
        String[] strArr = this.sP;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    @Override
    public int getColumnIndex(String str) {
        String[] strArr = this.sP;
        if (strArr == null || strArr.length == 0) {
            return -1;
        }
        int i10 = 0;
        while (true) {
            String[] strArr2 = this.sP;
            if (i10 >= strArr2.length) {
                return 0;
            }
            if (str.equals(strArr2[i10])) {
                return i10;
            }
            i10++;
        }
    }

    @Override
    public int getColumnIndexOrThrow(String str) throws IllegalArgumentException {
        return 0;
    }

    @Override
    public String getColumnName(int i10) {
        if (i10 < 0) {
            return "";
        }
        String[] strArr = this.sP;
        return i10 < strArr.length ? strArr[i10] : "";
    }

    @Override
    public String[] getColumnNames() {
        return this.sP;
    }

    @Override
    public int getCount() {
        try {
            String[] strArr = this.sP;
            if (strArr != null && strArr.length != 0) {
                return this.Sj.get(strArr[0]).size();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override
    public double getDouble(int i10) {
        try {
            return Double.parseDouble(getString(i10));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    @Override
    public Bundle getExtras() {
        return null;
    }

    @Override
    public float getFloat(int i10) {
        try {
            return Float.parseFloat(getString(i10));
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    @Override
    public int getInt(int i10) {
        try {
            return Integer.parseInt(getString(i10));
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override
    public long getLong(int i10) {
        try {
            return Long.parseLong(getString(i10));
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override
    public Uri getNotificationUri() {
        return null;
    }

    @Override
    public int getPosition() {
        return this.TKC;
    }

    @Override
    public short getShort(int i10) {
        try {
            return Short.parseShort(getString(i10));
        } catch (Exception unused) {
            return (short) 0;
        }
    }

    @Override
    public String getString(int i10) {
        return (i10 < 0 || i10 >= getColumnCount()) ? "" : this.Sj.get(this.sP[i10]).get(getPosition());
    }

    @Override
    public int getType(int i10) {
        return 0;
    }

    @Override
    public boolean getWantsAllOnMoveCalls() {
        return false;
    }

    @Override
    public boolean isAfterLast() {
        return false;
    }

    @Override
    public boolean isBeforeFirst() {
        return false;
    }

    @Override
    public boolean isClosed() {
        return false;
    }

    @Override
    public boolean isFirst() {
        return this.TKC == 0;
    }

    @Override
    public boolean isLast() {
        return this.TKC == getCount() - 1;
    }

    @Override
    public boolean isNull(int i10) {
        return getString(i10) == null;
    }

    @Override
    public boolean move(int i10) {
        if (this.TKC + i10 >= getCount()) {
            return false;
        }
        this.TKC += i10;
        return true;
    }

    @Override
    public boolean moveToFirst() {
        if (getCount() <= 0) {
            return false;
        }
        this.TKC = 0;
        return true;
    }

    @Override
    public boolean moveToLast() {
        if (getCount() <= 0) {
            return false;
        }
        this.TKC = this.Sj.get(this.sP[0]).size() - 1;
        return true;
    }

    @Override
    public boolean moveToNext() {
        if (this.TKC + 1 >= getCount()) {
            return false;
        }
        this.TKC++;
        return true;
    }

    @Override
    public boolean moveToPosition(int i10) {
        if (i10 >= getCount()) {
            return false;
        }
        this.TKC = i10;
        return true;
    }

    @Override
    public boolean moveToPrevious() {
        int i10 = this.TKC;
        if (i10 - 1 < 0) {
            return false;
        }
        this.TKC = i10 - 1;
        return true;
    }

    @Override
    public boolean requery() {
        return false;
    }

    @Override
    public Bundle respond(Bundle bundle) {
        return null;
    }

    @Override
    public void close() {
    }

    @Override
    public void deactivate() {
    }

    @Override
    public void registerContentObserver(ContentObserver contentObserver) {
    }

    @Override
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
    }

    @Override
    public void setExtras(Bundle bundle) {
    }

    @Override
    public void unregisterContentObserver(ContentObserver contentObserver) {
    }

    @Override
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
    }

    @Override
    public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
    }

    @Override
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
    }
}
