package com.cloud.h5update.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public final class j {

    public static final j f20688a = new j();

    public static SharedPreferences f20689b;

    public static SharedPreferences.Editor f20690c;

    private j() {
    }

    private final SharedPreferences l() {
        return e();
    }

    public final SharedPreferences.Editor a() {
        SharedPreferences.Editor editor = f20690c;
        if (editor != null) {
            return editor;
        }
        Intrinsics.y("editor");
        return null;
    }

    public final int b(String key, int i10) {
        Intrinsics.h(key, "key");
        return l().getInt(key, i10);
    }

    public final long c(String key, long j10) {
        Intrinsics.h(key, "key");
        return l().getLong(key, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    public final Object d(String str, Class cls) throws Throwable {
        String string;
        ObjectInputStream objectInputStream;
        if (!l().contains(str) || (string = l().getString(str, null)) == null) {
            return null;
        }
        ?? Decode = Base64.decode(string, 0);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Decode);
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object object = objectInputStream.readObject();
                        try {
                            byteArrayInputStream.close();
                            objectInputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        return object;
                    } catch (StreamCorruptedException e11) {
                        e = e11;
                        e.printStackTrace();
                        byteArrayInputStream.close();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    } catch (IOException e12) {
                        e = e12;
                        e.printStackTrace();
                        byteArrayInputStream.close();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    } catch (ClassNotFoundException e13) {
                        e = e13;
                        e.printStackTrace();
                        byteArrayInputStream.close();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    }
                } catch (IOException e14) {
                    e14.printStackTrace();
                    return null;
                }
            } catch (StreamCorruptedException e15) {
                e = e15;
                objectInputStream = null;
            } catch (IOException e16) {
                e = e16;
                objectInputStream = null;
            } catch (ClassNotFoundException e17) {
                e = e17;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                Decode = 0;
                try {
                    byteArrayInputStream.close();
                    if (Decode != 0) {
                        Decode.close();
                    }
                } catch (IOException e18) {
                    e18.printStackTrace();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final SharedPreferences e() {
        SharedPreferences sharedPreferences = f20689b;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        Intrinsics.y("sharedPreferences");
        return null;
    }

    public final void f(Context context) {
        Intrinsics.h(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tupdate_sdk", 0);
        Intrinsics.g(sharedPreferences, "context.getSharedPrefere…REFERENCES, MODE_PRIVATE)");
        k(sharedPreferences);
        SharedPreferences.Editor editorEdit = e().edit();
        Intrinsics.g(editorEdit, "sharedPreferences.edit()");
        j(editorEdit);
    }

    public final void g(String key, long j10) {
        Intrinsics.h(key, "key");
        SharedPreferences.Editor editor = l().edit();
        Intrinsics.d(editor, "editor");
        editor.putLong(key, j10);
        editor.commit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public final void h(String str, Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ?? r10 = 0;
        ObjectOutputStream objectOutputStream = null;
        r10 = 0;
        try {
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(obj);
                    byte[] bArrEncode = Base64.encode(byteArrayOutputStream.toByteArray(), 0);
                    Intrinsics.g(bArrEncode, "encode(baos.toByteArray(), Base64.DEFAULT)");
                    String str2 = new String(bArrEncode, Charsets.UTF_8);
                    a().putString(str, str2);
                    a().commit();
                    byteArrayOutputStream.close();
                    objectOutputStream2.close();
                    r10 = str2;
                } catch (IOException e10) {
                    e = e10;
                    objectOutputStream = objectOutputStream2;
                    e.printStackTrace();
                    byteArrayOutputStream.close();
                    r10 = objectOutputStream;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                        r10 = objectOutputStream;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r10 = objectOutputStream2;
                    try {
                        byteArrayOutputStream.close();
                        if (r10 != 0) {
                            r10.close();
                        }
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e12) {
                e12.printStackTrace();
            }
        } catch (IOException e13) {
            e = e13;
        }
    }

    public final void i(String key) {
        Intrinsics.h(key, "key");
        a().remove(key);
        a().apply();
    }

    public final void j(SharedPreferences.Editor editor) {
        Intrinsics.h(editor, "<set-?>");
        f20690c = editor;
    }

    public final void k(SharedPreferences sharedPreferences) {
        Intrinsics.h(sharedPreferences, "<set-?>");
        f20689b = sharedPreferences;
    }
}
