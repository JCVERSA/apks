package com.transsion.hubsdk.interfaces.provider;

import android.content.ContentResolver;
import android.content.Context;

public interface ITranSettingsAdapter {
    int getSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2);

    int getSecureIntForUser(String str, int i, int i2);

    String getSecureStringForUser(ContentResolver contentResolver, String str, int i);

    String getSecureStringForUser(String str, int i);

    float getSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i);

    float getSystemFloatForUser(String str, float f, int i);

    long getSystemLongForUser(ContentResolver contentResolver, String str, long j, int i);

    boolean putGlobalInt(Context context, String str, int i);

    boolean putSecureInt(Context context, String str, int i);

    boolean putSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2);

    boolean putSecureIntForUser(String str, int i, int i2);

    boolean putSecureStringForUser(ContentResolver contentResolver, String str, String str2, int i);

    boolean putSecureStringForUser(String str, String str2, int i);

    boolean putSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i);

    boolean putSystemFloatForUser(String str, float f, int i);
}
