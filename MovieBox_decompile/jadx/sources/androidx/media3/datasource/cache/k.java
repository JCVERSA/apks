package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media3.common.util.a1;
import androidx.media3.database.DatabaseIOException;
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

    private final HashMap f10529a;

    private final SparseArray f10530b;

    private final SparseBooleanArray f10531c;

    private final SparseBooleanArray f10532d;

    private c f10533e;

    private c f10534f;

    private static final class a implements c {

        private static final String[] f10535e = {"id", "key", TtmlNode.TAG_METADATA};

        private final v1.a f10536a;

        private final SparseArray f10537b = new SparseArray();

        private String f10538c;

        private String f10539d;

        public a(v1.a aVar) {
            this.f10536a = aVar;
        }

        private void i(SQLiteDatabase sQLiteDatabase, j jVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            k.r(jVar.d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(jVar.f10522a));
            contentValues.put("key", jVar.f10523b);
            contentValues.put(TtmlNode.TAG_METADATA, byteArray);
            sQLiteDatabase.replaceOrThrow((String) androidx.media3.common.util.a.e(this.f10539d), null, contentValues);
        }

        private static void j(v1.a aVar, String str) throws DatabaseIOException {
            try {
                String strN = n(str);
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    v1.c.c(writableDatabase, 1, str);
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
            sQLiteDatabase.delete((String) androidx.media3.common.util.a.e(this.f10539d), "id = ?", new String[]{Integer.toString(i10)});
        }

        private static void l(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        private Cursor m() {
            return this.f10536a.getReadableDatabase().query((String) androidx.media3.common.util.a.e(this.f10539d), f10535e, null, null, null, null, null);
        }

        private static String n(String str) {
            return "ExoPlayerCacheIndex" + str;
        }

        private void o(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            v1.c.d(sQLiteDatabase, 1, (String) androidx.media3.common.util.a.e(this.f10538c), 1);
            l(sQLiteDatabase, (String) androidx.media3.common.util.a.e(this.f10539d));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f10539d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        @Override
        public boolean a() throws DatabaseIOException {
            try {
                return v1.c.b(this.f10536a.getReadableDatabase(), 1, (String) androidx.media3.common.util.a.e(this.f10538c)) != -1;
            } catch (SQLException e10) {
                throw new DatabaseIOException(e10);
            }
        }

        @Override
        public void b(HashMap map) throws DatabaseIOException {
            if (this.f10537b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f10536a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i10 = 0; i10 < this.f10537b.size(); i10++) {
                    try {
                        j jVar = (j) this.f10537b.valueAt(i10);
                        if (jVar == null) {
                            k(writableDatabase, this.f10537b.keyAt(i10));
                        } else {
                            i(writableDatabase, jVar);
                        }
                    } catch (Throwable th2) {
                        writableDatabase.endTransaction();
                        throw th2;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f10537b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e10) {
                throw new DatabaseIOException(e10);
            }
        }

        @Override
        public void c(long j10) {
            String hexString = Long.toHexString(j10);
            this.f10538c = hexString;
            this.f10539d = n(hexString);
        }

        @Override
        public void d(HashMap map) throws DatabaseIOException {
            try {
                SQLiteDatabase writableDatabase = this.f10536a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    o(writableDatabase);
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        i(writableDatabase, (j) it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f10537b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e10) {
                throw new DatabaseIOException(e10);
            }
        }

        @Override
        public void e(HashMap map, SparseArray sparseArray) throws DatabaseIOException {
            androidx.media3.common.util.a.g(this.f10537b.size() == 0);
            try {
                if (v1.c.b(this.f10536a.getReadableDatabase(), 1, (String) androidx.media3.common.util.a.e(this.f10538c)) != 1) {
                    SQLiteDatabase writableDatabase = this.f10536a.getWritableDatabase();
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
                        j jVar = new j(cursorM.getInt(0), (String) androidx.media3.common.util.a.e(cursorM.getString(1)), k.o(new DataInputStream(new ByteArrayInputStream(cursorM.getBlob(2)))));
                        map.put(jVar.f10523b, jVar);
                        sparseArray.put(jVar.f10522a, jVar.f10523b);
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
            j(this.f10536a, (String) androidx.media3.common.util.a.e(this.f10538c));
        }

        @Override
        public void g(j jVar, boolean z10) {
            if (z10) {
                this.f10537b.delete(jVar.f10522a);
            } else {
                this.f10537b.put(jVar.f10522a, null);
            }
        }

        @Override
        public void h(j jVar) {
            this.f10537b.put(jVar.f10522a, jVar);
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

    public k(v1.a aVar, File file, byte[] bArr, boolean z10, boolean z11) {
        androidx.media3.common.util.a.g((aVar == null && file == null) ? false : true);
        this.f10529a = new HashMap();
        this.f10530b = new SparseArray();
        this.f10531c = new SparseBooleanArray();
        this.f10532d = new SparseBooleanArray();
        a aVar2 = aVar != null ? new a(aVar) : null;
        b bVar = file != null ? new b(new File(file, CachedContentIndex.FILE_NAME), bArr, z10) : null;
        if (aVar2 == null || (bVar != null && z11)) {
            this.f10533e = (c) a1.i(bVar);
            this.f10534f = aVar2;
        } else {
            this.f10533e = aVar2;
            this.f10534f = bVar;
        }
    }

    private j c(String str) {
        int iJ = j(this.f10530b);
        j jVar = new j(iJ, str);
        this.f10529a.put(str, jVar);
        this.f10530b.put(iJ, str);
        this.f10532d.put(iJ, true);
        this.f10533e.h(jVar);
        return jVar;
    }

    static int j(SparseArray sparseArray) {
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

    public static boolean m(String str) {
        return str.startsWith(CachedContentIndex.FILE_NAME);
    }

    public static o o(DataInputStream dataInputStream) throws IOException {
        int i10 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < i10; i11++) {
            String utf = dataInputStream.readUTF();
            int i12 = dataInputStream.readInt();
            if (i12 < 0) {
                throw new IOException("Invalid value size: " + i12);
            }
            int iMin = Math.min(i12, 10485760);
            byte[] bArrCopyOf = a1.f10043f;
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

    public static void r(o oVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setD = oVar.d();
        dataOutputStream.writeInt(setD.size());
        for (Map.Entry entry : setD) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public void d(String str, n nVar) {
        j jVarK = k(str);
        if (jVarK.b(nVar)) {
            this.f10533e.h(jVarK);
        }
    }

    public int e(String str) {
        return k(str).f10522a;
    }

    public j f(String str) {
        return (j) this.f10529a.get(str);
    }

    public Collection g() {
        return Collections.unmodifiableCollection(this.f10529a.values());
    }

    public m h(String str) {
        j jVarF = f(str);
        return jVarF != null ? jVarF.d() : o.f10549c;
    }

    public String i(int i10) {
        return (String) this.f10530b.get(i10);
    }

    public j k(String str) {
        j jVar = (j) this.f10529a.get(str);
        return jVar == null ? c(str) : jVar;
    }

    public void l(long j10) {
        c cVar;
        this.f10533e.c(j10);
        c cVar2 = this.f10534f;
        if (cVar2 != null) {
            cVar2.c(j10);
        }
        if (this.f10533e.a() || (cVar = this.f10534f) == null || !cVar.a()) {
            this.f10533e.e(this.f10529a, this.f10530b);
        } else {
            this.f10534f.e(this.f10529a, this.f10530b);
            this.f10533e.d(this.f10529a);
        }
        c cVar3 = this.f10534f;
        if (cVar3 != null) {
            cVar3.f();
            this.f10534f = null;
        }
    }

    public void n(String str) {
        j jVar = (j) this.f10529a.get(str);
        if (jVar != null && jVar.g() && jVar.i()) {
            this.f10529a.remove(str);
            int i10 = jVar.f10522a;
            boolean z10 = this.f10532d.get(i10);
            this.f10533e.g(jVar, z10);
            if (z10) {
                this.f10530b.remove(i10);
                this.f10532d.delete(i10);
            } else {
                this.f10530b.put(i10, null);
                this.f10531c.put(i10, true);
            }
        }
    }

    public void p() {
        r4 it = ImmutableSet.copyOf((Collection) this.f10529a.keySet()).iterator();
        while (it.hasNext()) {
            n((String) it.next());
        }
    }

    public void q() {
        this.f10533e.b(this.f10529a);
        int size = this.f10531c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f10530b.remove(this.f10531c.keyAt(i10));
        }
        this.f10531c.clear();
        this.f10532d.clear();
    }

    private static class b implements c {

        private final boolean f10540a;

        private final Cipher f10541b;

        private final SecretKeySpec f10542c;

        private final SecureRandom f10543d;

        private final androidx.media3.common.util.b f10544e;

        private boolean f10545f;

        private r f10546g;

        public b(File file, byte[] bArr, boolean z10) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            androidx.media3.common.util.a.g((bArr == null && z10) ? false : true);
            if (bArr != null) {
                androidx.media3.common.util.a.a(bArr.length == 16);
                try {
                    cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e10) {
                    throw new IllegalStateException(e10);
                }
            } else {
                androidx.media3.common.util.a.a(!z10);
                cipher = null;
                secretKeySpec = null;
            }
            this.f10540a = z10;
            this.f10541b = cipher;
            this.f10542c = secretKeySpec;
            this.f10543d = z10 ? new SecureRandom() : null;
            this.f10544e = new androidx.media3.common.util.b(file);
        }

        private int i(j jVar, int i10) {
            int i11;
            int iHashCode;
            int iHashCode2 = (jVar.f10522a * 31) + jVar.f10523b.hashCode();
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
            o oVarO;
            int i11 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i10 < 2) {
                long j10 = dataInputStream.readLong();
                n nVar = new n();
                n.g(nVar, j10);
                oVarO = o.f10549c.c(nVar);
            } else {
                oVarO = k.o(dataInputStream);
            }
            return new j(i11, utf, oVarO);
        }

        private boolean k(HashMap map, SparseArray sparseArray) throws Throwable {
            if (!this.f10544e.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f10544e.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i10 = dataInputStream2.readInt();
                    if (i10 >= 0 && i10 <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.f10541b == null) {
                                a1.m(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.f10541b.init(2, (Key) a1.i(this.f10542c), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f10541b));
                            } catch (InvalidAlgorithmParameterException e10) {
                                e = e10;
                                throw new IllegalStateException(e);
                            } catch (InvalidKeyException e11) {
                                e = e11;
                                throw new IllegalStateException(e);
                            }
                        } else if (this.f10540a) {
                            this.f10545f = true;
                        }
                        int i11 = dataInputStream2.readInt();
                        int i12 = 0;
                        for (int i13 = 0; i13 < i11; i13++) {
                            j jVarJ = j(i10, dataInputStream2);
                            map.put(jVarJ.f10523b, jVarJ);
                            sparseArray.put(jVarJ.f10522a, jVarJ.f10523b);
                            i12 += i(jVarJ, i10);
                        }
                        int i14 = dataInputStream2.readInt();
                        boolean z10 = dataInputStream2.read() == -1;
                        if (i14 == i12 && z10) {
                            a1.m(dataInputStream2);
                            return true;
                        }
                        a1.m(dataInputStream2);
                        return false;
                    }
                    a1.m(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        a1.m(dataInputStream);
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        a1.m(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private void l(j jVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(jVar.f10522a);
            dataOutputStream.writeUTF(jVar.f10523b);
            k.r(jVar.d(), dataOutputStream);
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
                OutputStream outputStreamF = this.f10544e.f();
                r rVar = this.f10546g;
                if (rVar == null) {
                    this.f10546g = new r(outputStreamF);
                } else {
                    rVar.b(outputStreamF);
                }
                r rVar2 = this.f10546g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(rVar2);
                try {
                    dataOutputStream2.writeInt(2);
                    int i10 = 0;
                    dataOutputStream2.writeInt(this.f10540a ? 1 : 0);
                    if (this.f10540a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) a1.i(this.f10543d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) a1.i(this.f10541b)).init(1, (Key) a1.i(this.f10542c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(rVar2, this.f10541b));
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
                    this.f10544e.b(dataOutputStream2);
                    a1.m(null);
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = dataOutputStream2;
                    a1.m(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override
        public boolean a() {
            return this.f10544e.c();
        }

        @Override
        public void b(HashMap map) throws Throwable {
            if (this.f10545f) {
                d(map);
            }
        }

        @Override
        public void d(HashMap map) throws Throwable {
            m(map);
            this.f10545f = false;
        }

        @Override
        public void e(HashMap map, SparseArray sparseArray) {
            androidx.media3.common.util.a.g(!this.f10545f);
            if (k(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.f10544e.a();
        }

        @Override
        public void f() {
            this.f10544e.a();
        }

        @Override
        public void g(j jVar, boolean z10) {
            this.f10545f = true;
        }

        @Override
        public void h(j jVar) {
            this.f10545f = true;
        }

        @Override
        public void c(long j10) {
        }
    }
}
