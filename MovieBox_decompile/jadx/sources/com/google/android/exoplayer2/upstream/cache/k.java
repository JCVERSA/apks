package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CachedContentIndex;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
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
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

class k {

    private final HashMap f26588a;

    private final SparseArray f26589b;

    private final SparseBooleanArray f26590c;

    private final SparseBooleanArray f26591d;

    private c f26592e;

    private c f26593f;

    private static final class a implements c {

        private static final String[] f26594e = {"id", "key", TtmlNode.TAG_METADATA};

        private final h9.a f26595a;

        private final SparseArray f26596b = new SparseArray();

        private String f26597c;

        private String f26598d;

        public a(h9.a aVar) {
            this.f26595a = aVar;
        }

        private void i(SQLiteDatabase sQLiteDatabase, j jVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            k.t(jVar.d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(jVar.f26581a));
            contentValues.put("key", jVar.f26582b);
            contentValues.put(TtmlNode.TAG_METADATA, byteArray);
            sQLiteDatabase.replaceOrThrow((String) com.google.android.exoplayer2.util.a.e(this.f26598d), null, contentValues);
        }

        private static void j(h9.a aVar, String str) throws DatabaseIOException {
            try {
                String strN = n(str);
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    h9.c.c(writableDatabase, 1, str);
                    l(writableDatabase, strN);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e10) {
                throw new DatabaseIOException(e10);
            }
        }

        private void k(SQLiteDatabase sQLiteDatabase, int i10) {
            sQLiteDatabase.delete((String) com.google.android.exoplayer2.util.a.e(this.f26598d), "id = ?", new String[]{Integer.toString(i10)});
        }

        private static void l(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        private Cursor m() {
            return this.f26595a.getReadableDatabase().query((String) com.google.android.exoplayer2.util.a.e(this.f26598d), f26594e, null, null, null, null, null);
        }

        private static String n(String str) {
            return "ExoPlayerCacheIndex" + str;
        }

        private void o(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            h9.c.d(sQLiteDatabase, 1, (String) com.google.android.exoplayer2.util.a.e(this.f26597c), 1);
            l(sQLiteDatabase, (String) com.google.android.exoplayer2.util.a.e(this.f26598d));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f26598d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        @Override
        public boolean a() {
            return h9.c.b(this.f26595a.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.e(this.f26597c)) != -1;
        }

        @Override
        public void b(HashMap map) throws DatabaseIOException {
            if (this.f26596b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f26595a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i10 = 0; i10 < this.f26596b.size(); i10++) {
                    try {
                        j jVar = (j) this.f26596b.valueAt(i10);
                        if (jVar == null) {
                            k(writableDatabase, this.f26596b.keyAt(i10));
                        } else {
                            i(writableDatabase, jVar);
                        }
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f26596b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e10) {
                throw new DatabaseIOException(e10);
            }
        }

        @Override
        public void c(long j10) {
            String hexString = Long.toHexString(j10);
            this.f26597c = hexString;
            this.f26598d = n(hexString);
        }

        @Override
        public void d(HashMap map) throws DatabaseIOException {
            try {
                SQLiteDatabase writableDatabase = this.f26595a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    o(writableDatabase);
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        i(writableDatabase, (j) it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f26596b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e10) {
                throw new DatabaseIOException(e10);
            }
        }

        @Override
        public void e(HashMap map, SparseArray sparseArray) throws DatabaseIOException {
            com.google.android.exoplayer2.util.a.g(this.f26596b.size() == 0);
            try {
                if (h9.c.b(this.f26595a.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.e(this.f26597c)) != 1) {
                    SQLiteDatabase writableDatabase = this.f26595a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        o(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                Cursor cursorM = m();
                while (cursorM.moveToNext()) {
                    try {
                        j jVar = new j(cursorM.getInt(0), (String) com.google.android.exoplayer2.util.a.e(cursorM.getString(1)), k.q(new DataInputStream(new ByteArrayInputStream(cursorM.getBlob(2)))));
                        map.put(jVar.f26582b, jVar);
                        sparseArray.put(jVar.f26581a, jVar.f26582b);
                    } catch (Throwable th3) {
                        if (cursorM != null) {
                            try {
                                cursorM.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                }
                cursorM.close();
            } catch (SQLiteException e10) {
                map.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e10);
            }
        }

        @Override
        public void f() throws DatabaseIOException {
            j(this.f26595a, (String) com.google.android.exoplayer2.util.a.e(this.f26597c));
        }

        @Override
        public void g(j jVar, boolean z10) {
            if (z10) {
                this.f26596b.delete(jVar.f26581a);
            } else {
                this.f26596b.put(jVar.f26581a, null);
            }
        }

        @Override
        public void h(j jVar) {
            this.f26596b.put(jVar.f26581a, jVar);
        }
    }

    private interface c {
        boolean a();

        void b(HashMap map);

        void c(long j10);

        void d(HashMap map);

        void e(HashMap map, SparseArray sparseArray);

        void f();

        void g(j jVar, boolean z10);

        void h(j jVar);
    }

    public k(h9.a aVar, File file, byte[] bArr, boolean z10, boolean z11) {
        com.google.android.exoplayer2.util.a.g((aVar == null && file == null) ? false : true);
        this.f26588a = new HashMap();
        this.f26589b = new SparseArray();
        this.f26590c = new SparseBooleanArray();
        this.f26591d = new SparseBooleanArray();
        a aVar2 = aVar != null ? new a(aVar) : null;
        b bVar = file != null ? new b(new File(file, CachedContentIndex.FILE_NAME), bArr, z10) : null;
        if (aVar2 == null || (bVar != null && z11)) {
            this.f26592e = (c) p0.j(bVar);
            this.f26593f = aVar2;
        } else {
            this.f26592e = aVar2;
            this.f26593f = bVar;
        }
    }

    private j d(String str) {
        int iL = l(this.f26589b);
        j jVar = new j(iL, str);
        this.f26588a.put(str, jVar);
        this.f26589b.put(iL, str);
        this.f26591d.put(iL, true);
        this.f26592e.h(jVar);
        return jVar;
    }

    public static Cipher i() {
        if (p0.f26854a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    static int l(SparseArray sparseArray) {
        int size = sparseArray.size();
        int i10 = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt >= 0) {
            return iKeyAt;
        }
        while (i10 < size && i10 == sparseArray.keyAt(i10)) {
            i10++;
        }
        return i10;
    }

    public static boolean o(String str) {
        return str.startsWith(CachedContentIndex.FILE_NAME);
    }

    public static o q(DataInputStream dataInputStream) throws IOException {
        int i10 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < i10; i11++) {
            String utf = dataInputStream.readUTF();
            int i12 = dataInputStream.readInt();
            if (i12 < 0) {
                throw new IOException("Invalid value size: " + i12);
            }
            int iMin = Math.min(i12, 10485760);
            byte[] bArrCopyOf = p0.f26859f;
            int i13 = 0;
            while (i13 != i12) {
                int i14 = i13 + iMin;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i14);
                dataInputStream.readFully(bArrCopyOf, i13, iMin);
                iMin = Math.min(i12 - i14, 10485760);
                i13 = i14;
            }
            map.put(utf, bArrCopyOf);
        }
        return new o(map);
    }

    public static void t(o oVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setD = oVar.d();
        dataOutputStream.writeInt(setD.size());
        for (Map.Entry entry : setD) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public void e(String str, n nVar) {
        j jVarM = m(str);
        if (jVarM.b(nVar)) {
            this.f26592e.h(jVarM);
        }
    }

    public int f(String str) {
        return m(str).f26581a;
    }

    public j g(String str) {
        return (j) this.f26588a.get(str);
    }

    public Collection h() {
        return Collections.unmodifiableCollection(this.f26588a.values());
    }

    public m j(String str) {
        j jVarG = g(str);
        return jVarG != null ? jVarG.d() : o.f26608c;
    }

    public String k(int i10) {
        return (String) this.f26589b.get(i10);
    }

    public j m(String str) {
        j jVar = (j) this.f26588a.get(str);
        return jVar == null ? d(str) : jVar;
    }

    public void n(long j10) {
        c cVar;
        this.f26592e.c(j10);
        c cVar2 = this.f26593f;
        if (cVar2 != null) {
            cVar2.c(j10);
        }
        if (this.f26592e.a() || (cVar = this.f26593f) == null || !cVar.a()) {
            this.f26592e.e(this.f26588a, this.f26589b);
        } else {
            this.f26593f.e(this.f26588a, this.f26589b);
            this.f26592e.d(this.f26588a);
        }
        c cVar3 = this.f26593f;
        if (cVar3 != null) {
            cVar3.f();
            this.f26593f = null;
        }
    }

    public void p(String str) {
        j jVar = (j) this.f26588a.get(str);
        if (jVar != null && jVar.g() && jVar.i()) {
            this.f26588a.remove(str);
            int i10 = jVar.f26581a;
            boolean z10 = this.f26591d.get(i10);
            this.f26592e.g(jVar, z10);
            if (z10) {
                this.f26589b.remove(i10);
                this.f26591d.delete(i10);
            } else {
                this.f26589b.put(i10, null);
                this.f26590c.put(i10, true);
            }
        }
    }

    public void r() {
        r4 it = ImmutableSet.copyOf((Collection) this.f26588a.keySet()).iterator();
        while (it.hasNext()) {
            p((String) it.next());
        }
    }

    public void s() {
        this.f26592e.b(this.f26588a);
        int size = this.f26590c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f26589b.remove(this.f26590c.keyAt(i10));
        }
        this.f26590c.clear();
        this.f26591d.clear();
    }

    private static class b implements c {

        private final boolean f26599a;

        private final Cipher f26600b;

        private final SecretKeySpec f26601c;

        private final SecureRandom f26602d;

        private final com.google.android.exoplayer2.util.b f26603e;

        private boolean f26604f;

        private r f26605g;

        public b(File file, byte[] bArr, boolean z10) {
            Cipher cipherI;
            SecretKeySpec secretKeySpec;
            com.google.android.exoplayer2.util.a.g((bArr == null && z10) ? false : true);
            if (bArr != null) {
                com.google.android.exoplayer2.util.a.a(bArr.length == 16);
                try {
                    cipherI = k.i();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e10) {
                    throw new IllegalStateException(e10);
                }
            } else {
                com.google.android.exoplayer2.util.a.a(!z10);
                cipherI = null;
                secretKeySpec = null;
            }
            this.f26599a = z10;
            this.f26600b = cipherI;
            this.f26601c = secretKeySpec;
            this.f26602d = z10 ? new SecureRandom() : null;
            this.f26603e = new com.google.android.exoplayer2.util.b(file);
        }

        private int i(j jVar, int i10) {
            int i11;
            int iHashCode;
            int iHashCode2 = (jVar.f26581a * 31) + jVar.f26582b.hashCode();
            if (i10 < 2) {
                long jA = l.a(jVar.d());
                i11 = iHashCode2 * 31;
                iHashCode = (int) (jA ^ (jA >>> 32));
            } else {
                i11 = iHashCode2 * 31;
                iHashCode = jVar.d().hashCode();
            }
            return i11 + iHashCode;
        }

        private j j(int i10, DataInputStream dataInputStream) throws IOException {
            o oVarQ;
            int i11 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i10 < 2) {
                long j10 = dataInputStream.readLong();
                n nVar = new n();
                n.g(nVar, j10);
                oVarQ = o.f26608c.c(nVar);
            } else {
                oVarQ = k.q(dataInputStream);
            }
            return new j(i11, utf, oVarQ);
        }

        private boolean k(HashMap map, SparseArray sparseArray) throws Throwable {
            if (!this.f26603e.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f26603e.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i10 = dataInputStream2.readInt();
                    if (i10 >= 0 && i10 <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.f26600b == null) {
                                p0.n(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.f26600b.init(2, (Key) p0.j(this.f26601c), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f26600b));
                            } catch (InvalidAlgorithmParameterException e10) {
                                e = e10;
                                throw new IllegalStateException(e);
                            } catch (InvalidKeyException e11) {
                                e = e11;
                                throw new IllegalStateException(e);
                            }
                        } else if (this.f26599a) {
                            this.f26604f = true;
                        }
                        int i11 = dataInputStream2.readInt();
                        int i12 = 0;
                        for (int i13 = 0; i13 < i11; i13++) {
                            j jVarJ = j(i10, dataInputStream2);
                            map.put(jVarJ.f26582b, jVarJ);
                            sparseArray.put(jVarJ.f26581a, jVarJ.f26582b);
                            i12 += i(jVarJ, i10);
                        }
                        int i14 = dataInputStream2.readInt();
                        boolean z10 = dataInputStream2.read() == -1;
                        if (i14 == i12 && z10) {
                            p0.n(dataInputStream2);
                            return true;
                        }
                        p0.n(dataInputStream2);
                        return false;
                    }
                    p0.n(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        p0.n(dataInputStream);
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        p0.n(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private void l(j jVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(jVar.f26581a);
            dataOutputStream.writeUTF(jVar.f26582b);
            k.t(jVar.d(), dataOutputStream);
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
        private void m(HashMap map) throws Throwable {
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream outputStreamF = this.f26603e.f();
                r rVar = this.f26605g;
                if (rVar == null) {
                    this.f26605g = new r(outputStreamF);
                } else {
                    rVar.b(outputStreamF);
                }
                r rVar2 = this.f26605g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(rVar2);
                try {
                    dataOutputStream2.writeInt(2);
                    int i10 = 0;
                    dataOutputStream2.writeInt(this.f26599a ? 1 : 0);
                    if (this.f26599a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) p0.j(this.f26602d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) p0.j(this.f26600b)).init(1, (Key) p0.j(this.f26601c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(rVar2, this.f26600b));
                        } catch (InvalidAlgorithmParameterException e10) {
                            e = e10;
                            throw new IllegalStateException(e);
                        } catch (InvalidKeyException e11) {
                            e = e11;
                            throw new IllegalStateException(e);
                        }
                    }
                    dataOutputStream2.writeInt(map.size());
                    for (j jVar : map.values()) {
                        l(jVar, dataOutputStream2);
                        i10 += i(jVar, 2);
                    }
                    dataOutputStream2.writeInt(i10);
                    this.f26603e.b(dataOutputStream2);
                    p0.n(null);
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = dataOutputStream2;
                    p0.n(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override
        public boolean a() {
            return this.f26603e.c();
        }

        @Override
        public void b(HashMap map) throws Throwable {
            if (this.f26604f) {
                d(map);
            }
        }

        @Override
        public void d(HashMap map) throws Throwable {
            m(map);
            this.f26604f = false;
        }

        @Override
        public void e(HashMap map, SparseArray sparseArray) {
            com.google.android.exoplayer2.util.a.g(!this.f26604f);
            if (k(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.f26603e.a();
        }

        @Override
        public void f() {
            this.f26603e.a();
        }

        @Override
        public void g(j jVar, boolean z10) {
            this.f26604f = true;
        }

        @Override
        public void h(j jVar) {
            this.f26604f = true;
        }

        @Override
        public void c(long j10) {
        }
    }
}
