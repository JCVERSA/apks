package com.yandex.mobile.ads.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

final class kn {
    private final HashMap<String, jn> a = new HashMap<>();
    private final SparseArray<String> b = new SparseArray<>();
    private final SparseBooleanArray c = new SparseBooleanArray();
    private final SparseBooleanArray d = new SparseBooleanArray();
    private c e;

    @Nullable
    private c f;

    public static class b implements c {
        private final boolean a = false;

        @Nullable
        private final Cipher b = null;

        @Nullable
        private final SecretKeySpec c = null;

        @Nullable
        private final SecureRandom d = null;
        private final mh e;
        private boolean f;

        @Nullable
        private or1 g;

        public b(File file) {
            this.e = new mh(file);
        }

        @Override
        public final void a(long j) {
        }

        @Override
        public final void b() {
            this.e.a();
        }

        @Override
        public final boolean a() {
            return this.e.b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public final void b(HashMap<String, jn> map) throws Throwable {
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream outputStreamD = this.e.d();
                or1 or1Var = this.g;
                if (or1Var == null) {
                    this.g = new or1(outputStreamD);
                } else {
                    or1Var.a(outputStreamD);
                }
                or1 or1Var2 = this.g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(or1Var2);
                try {
                    dataOutputStream2.writeInt(2);
                    dataOutputStream2.writeInt(this.a ? 1 : 0);
                    if (this.a) {
                        byte[] bArr = new byte[16];
                        SecureRandom secureRandom = this.d;
                        int i = f92.a;
                        secureRandom.nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            this.b.init(1, this.c, new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(or1Var2, this.b));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    try {
                        dataOutputStream2.writeInt(map.size());
                        int iA = 0;
                        for (jn jnVar : map.values()) {
                            dataOutputStream2.writeInt(jnVar.a);
                            dataOutputStream2.writeUTF(jnVar.b);
                            Set<Map.Entry<String, byte[]>> setA = jnVar.a().a();
                            dataOutputStream2.writeInt(setA.size());
                            for (Map.Entry<String, byte[]> entry : setA) {
                                dataOutputStream2.writeUTF(entry.getKey());
                                byte[] value = entry.getValue();
                                dataOutputStream2.writeInt(value.length);
                                dataOutputStream2.write(value);
                            }
                            iA += a(jnVar, 2);
                        }
                        dataOutputStream2.writeInt(iA);
                        this.e.a(dataOutputStream2);
                        int i2 = f92.a;
                        this.f = false;
                    } catch (Throwable th) {
                        th = th;
                        dataOutputStream = dataOutputStream2;
                        dataOutputStream2 = dataOutputStream;
                        f92.a((Closeable) dataOutputStream2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    f92.a((Closeable) dataOutputStream2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private static int a(jn jnVar, int i) {
            int iHashCode = jnVar.b.hashCode() + (jnVar.a * 31);
            if (i < 2) {
                long jB = jnVar.a().b();
                return (iHashCode * 31) + ((int) (jB ^ (jB >>> 32)));
            }
            return (iHashCode * 31) + jnVar.a().hashCode();
        }

        @Override
        public final void a(HashMap<String, jn> map, SparseArray<String> sparseArray) throws Throwable {
            if (!this.f) {
                if (this.e.b()) {
                    DataInputStream dataInputStream = null;
                    try {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(this.e.c());
                        DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                        try {
                            int i = dataInputStream2.readInt();
                            if (i >= 0 && i <= 2) {
                                if ((dataInputStream2.readInt() & 1) != 0) {
                                    if (this.b != null) {
                                        byte[] bArr = new byte[16];
                                        dataInputStream2.readFully(bArr);
                                        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
                                        try {
                                            Cipher cipher = this.b;
                                            SecretKeySpec secretKeySpec = this.c;
                                            int i2 = f92.a;
                                            cipher.init(2, secretKeySpec, ivParameterSpec);
                                            dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.b));
                                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                                            throw new IllegalStateException(e);
                                        }
                                    } else {
                                        f92.a((Closeable) dataInputStream2);
                                    }
                                } else if (this.a) {
                                    this.f = true;
                                }
                                int i3 = dataInputStream2.readInt();
                                int iA = 0;
                                for (int i4 = 0; i4 < i3; i4++) {
                                    jn jnVarA = a(i, dataInputStream2);
                                    map.put(jnVarA.b, jnVarA);
                                    sparseArray.put(jnVarA.a, jnVarA.b);
                                    iA += a(jnVarA, i);
                                }
                                int i5 = dataInputStream2.readInt();
                                boolean z = dataInputStream2.read() == -1;
                                if (i5 == iA && z) {
                                    f92.a((Closeable) dataInputStream2);
                                    return;
                                }
                                f92.a((Closeable) dataInputStream2);
                            } else {
                                f92.a((Closeable) dataInputStream2);
                            }
                        } catch (IOException unused) {
                            dataInputStream = dataInputStream2;
                            if (dataInputStream != null) {
                                f92.a((Closeable) dataInputStream);
                            }
                        } catch (Throwable th) {
                            th = th;
                            dataInputStream = dataInputStream2;
                            if (dataInputStream != null) {
                                f92.a((Closeable) dataInputStream);
                            }
                            throw th;
                        }
                    } catch (IOException unused2) {
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    map.clear();
                    sparseArray.clear();
                    this.e.a();
                    return;
                }
                return;
            }
            throw new IllegalStateException();
        }

        @Override
        public final void a(jn jnVar, boolean z) {
            this.f = true;
        }

        @Override
        public final void a(jn jnVar) {
            this.f = true;
        }

        private static jn a(int i, DataInputStream dataInputStream) throws IOException {
            nz nzVarA;
            int i2 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i >= 2) {
                nzVarA = kn.a(dataInputStream);
            } else {
                long j = dataInputStream.readLong();
                es esVar = new es();
                es.a(esVar, j);
                nzVarA = nz.c.a(esVar);
            }
            return new jn(i2, utf, nzVarA);
        }

        @Override
        public final void a(HashMap<String, jn> map) throws Throwable {
            if (this.f) {
                b(map);
            }
        }
    }

    public interface c {
        void a(long j);

        void a(jn jnVar);

        void a(jn jnVar, boolean z);

        void a(HashMap<String, jn> map) throws Throwable;

        void a(HashMap<String, jn> map, SparseArray<String> sparseArray) throws Throwable;

        boolean a() throws Throwable;

        void b() throws Throwable;

        void b(HashMap<String, jn> map) throws Throwable;
    }

    public kn(@Nullable k60 k60Var, @Nullable File file) {
        a aVar = new a(k60Var);
        b bVar = new b(new File(file, "monetization_cached_content_index.exi"));
        this.e = aVar;
        this.f = bVar;
    }

    public final void a(String str, es esVar) {
        jn jnVarC = c(str);
        if (jnVarC.a(esVar)) {
            this.e.a(jnVarC);
        }
    }

    public final jn c(String str) {
        jn jnVar = this.a.get(str);
        if (jnVar != null) {
            return jnVar;
        }
        SparseArray<String> sparseArray = this.b;
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            while (i < size && i == sparseArray.keyAt(i)) {
                i++;
            }
            iKeyAt = i;
        }
        jn jnVar2 = new jn(iKeyAt, str, nz.c);
        this.a.put(str, jnVar2);
        this.b.put(iKeyAt, str);
        this.d.put(iKeyAt, true);
        this.e.a(jnVar2);
        return jnVar2;
    }

    public final void d(String str) {
        jn jnVar = this.a.get(str);
        if (jnVar != null && jnVar.c() && jnVar.d()) {
            this.a.remove(str);
            int i = jnVar.a;
            boolean z = this.d.get(i);
            this.e.a(jnVar, z);
            if (z) {
                this.b.remove(i);
                this.d.delete(i);
            } else {
                this.b.put(i, null);
                this.c.put(i, true);
            }
        }
    }

    public final nz b(String str) {
        jn jnVar = this.a.get(str);
        return jnVar != null ? jnVar.a() : nz.c;
    }

    public static final class a implements c {
        private static final String[] e = {TtmlNode.ATTR_ID, "key", TtmlNode.TAG_METADATA};
        private final zv a;
        private final SparseArray<jn> b = new SparseArray<>();
        private String c;
        private String d;

        public a(k60 k60Var) {
            this.a = k60Var;
        }

        @Override
        public final boolean a() throws Throwable {
            SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
            String str = this.c;
            str.getClass();
            return jb2.a(readableDatabase, 1, str) != -1;
        }

        @Override
        public final void b() throws Throwable {
            zv zvVar = this.a;
            String str = this.c;
            str.getClass();
            try {
                String strConcat = "ExoPlayerCacheIndex".concat(str);
                SQLiteDatabase writableDatabase = zvVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    int i = jb2.a;
                    try {
                        if (f92.a(writableDatabase, "ExoPlayerVersions")) {
                            writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(1), str});
                        }
                        writableDatabase.execSQL("DROP TABLE IF EXISTS " + strConcat);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (SQLException e2) {
                        throw new yv(e2);
                    }
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            } catch (SQLException e3) {
                throw new yv(e3);
            }
        }

        @Override
        public final void a(long j) {
            String hexString = Long.toHexString(j);
            this.c = hexString;
            this.d = "ExoPlayerCacheIndex" + hexString;
        }

        @Override
        public final void a(HashMap<String, jn> map, SparseArray<String> sparseArray) throws Throwable {
            if (this.b.size() == 0) {
                try {
                    SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
                    String str = this.c;
                    str.getClass();
                    if (jb2.a(readableDatabase, 1, str) != 1) {
                        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                        writableDatabase.beginTransactionNonExclusive();
                        try {
                            String str2 = this.c;
                            str2.getClass();
                            jb2.a(writableDatabase, 1, str2, 1);
                            String str3 = this.d;
                            str3.getClass();
                            writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str3));
                            writableDatabase.execSQL("CREATE TABLE " + this.d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                        } catch (Throwable th) {
                            writableDatabase.endTransaction();
                            throw th;
                        }
                    }
                    SQLiteDatabase readableDatabase2 = this.a.getReadableDatabase();
                    String str4 = this.d;
                    str4.getClass();
                    Cursor cursorQuery = readableDatabase2.query(str4, e, null, null, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        try {
                            int i = cursorQuery.getInt(0);
                            String string = cursorQuery.getString(1);
                            string.getClass();
                            map.put(string, new jn(i, string, kn.a(new DataInputStream(new ByteArrayInputStream(cursorQuery.getBlob(2))))));
                            sparseArray.put(i, string);
                        } catch (Throwable th2) {
                            if (cursorQuery != null) {
                                try {
                                    cursorQuery.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                    cursorQuery.close();
                    return;
                } catch (SQLiteException e2) {
                    map.clear();
                    sparseArray.clear();
                    throw new yv(e2);
                }
            }
            throw new IllegalStateException();
        }

        @Override
        public final void b(HashMap<String, jn> map) throws Throwable {
            try {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    String str = this.c;
                    str.getClass();
                    jb2.a(writableDatabase, 1, str, 1);
                    String str2 = this.d;
                    str2.getClass();
                    writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str2));
                    writableDatabase.execSQL("CREATE TABLE " + this.d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
                    for (jn jnVar : map.values()) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        nz nzVarA = jnVar.a();
                        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                        Set<Map.Entry<String, byte[]>> setA = nzVarA.a();
                        dataOutputStream.writeInt(setA.size());
                        for (Map.Entry<String, byte[]> entry : setA) {
                            dataOutputStream.writeUTF(entry.getKey());
                            byte[] value = entry.getValue();
                            dataOutputStream.writeInt(value.length);
                            dataOutputStream.write(value);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(TtmlNode.ATTR_ID, Integer.valueOf(jnVar.a));
                        contentValues.put("key", jnVar.b);
                        contentValues.put(TtmlNode.TAG_METADATA, byteArray);
                        String str3 = this.d;
                        str3.getClass();
                        writableDatabase.replaceOrThrow(str3, null, contentValues);
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e2) {
                throw new yv(e2);
            }
        }

        @Override
        public final void a(jn jnVar, boolean z) {
            if (z) {
                this.b.delete(jnVar.a);
            } else {
                this.b.put(jnVar.a, null);
            }
        }

        @Override
        public final void a(jn jnVar) {
            this.b.put(jnVar.a, jnVar);
        }

        @Override
        public final void a(HashMap<String, jn> map) throws Throwable {
            if (this.b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i = 0; i < this.b.size(); i++) {
                    try {
                        jn jnVarValueAt = this.b.valueAt(i);
                        if (jnVarValueAt == null) {
                            int iKeyAt = this.b.keyAt(i);
                            String str = this.d;
                            str.getClass();
                            writableDatabase.delete(str, "id = ?", new String[]{Integer.toString(iKeyAt)});
                        } else {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            nz nzVarA = jnVarValueAt.a();
                            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                            Set<Map.Entry<String, byte[]>> setA = nzVarA.a();
                            dataOutputStream.writeInt(setA.size());
                            for (Map.Entry<String, byte[]> entry : setA) {
                                dataOutputStream.writeUTF(entry.getKey());
                                byte[] value = entry.getValue();
                                dataOutputStream.writeInt(value.length);
                                dataOutputStream.write(value);
                            }
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(TtmlNode.ATTR_ID, Integer.valueOf(jnVarValueAt.a));
                            contentValues.put("key", jnVarValueAt.b);
                            contentValues.put(TtmlNode.TAG_METADATA, byteArray);
                            String str2 = this.d;
                            str2.getClass();
                            writableDatabase.replaceOrThrow(str2, null, contentValues);
                        }
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e2) {
                throw new yv(e2);
            }
        }
    }

    @Nullable
    public final jn a(String str) {
        return this.a.get(str);
    }

    public final void b() {
        Iterator it = mk0.a(this.a.keySet()).iterator();
        while (it.hasNext()) {
            d((String) it.next());
        }
    }

    public final Collection<jn> a() {
        return Collections.unmodifiableCollection(this.a.values());
    }

    @Nullable
    public final String a(int i) {
        return this.b.get(i);
    }

    @WorkerThread
    public final void a(long j) throws Throwable {
        c cVar;
        this.e.a(j);
        c cVar2 = this.f;
        if (cVar2 != null) {
            cVar2.a(j);
        }
        if (!this.e.a() && (cVar = this.f) != null && cVar.a()) {
            this.f.a(this.a, this.b);
            this.e.b(this.a);
        } else {
            this.e.a(this.a, this.b);
        }
        c cVar3 = this.f;
        if (cVar3 != null) {
            cVar3.b();
            this.f = null;
        }
    }

    @WorkerThread
    public final void c() throws Throwable {
        this.e.a(this.a);
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            this.b.remove(this.c.keyAt(i));
        }
        this.c.clear();
        this.d.clear();
    }

    public static nz a(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 >= 0) {
                int iMin = Math.min(i3, 10485760);
                byte[] bArrCopyOf = f92.f;
                int i4 = 0;
                while (i4 != i3) {
                    int i5 = i4 + iMin;
                    bArrCopyOf = Arrays.copyOf(bArrCopyOf, i5);
                    dataInputStream.readFully(bArrCopyOf, i4, iMin);
                    iMin = Math.min(i3 - i5, 10485760);
                    i4 = i5;
                }
                map.put(utf, bArrCopyOf);
            } else {
                throw new IOException(oe.a("Invalid value size: ", i3));
            }
        }
        return new nz(map);
    }
}
