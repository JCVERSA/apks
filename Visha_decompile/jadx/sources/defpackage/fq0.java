package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.common.collect.ImmutableSet;
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
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class fq0 {
    public final HashMap a;
    public final SparseArray b;
    public final SparseBooleanArray c;
    public final SparseBooleanArray d;
    public c e;
    public c f;

    public static final class a implements c {
        public static final String[] e = {TtmlNode.ATTR_ID, "key", TtmlNode.TAG_METADATA};
        public final bt1 a;
        public final SparseArray b = new SparseArray();
        public String c;
        public String d;

        public a(bt1 bt1Var) {
            this.a = bt1Var;
        }

        public static void d(bt1 bt1Var, String str) throws DatabaseIOException {
            try {
                String strH = h(str);
                SQLiteDatabase writableDatabase = bt1Var.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    sob.c(writableDatabase, 1, str);
                    f(writableDatabase, strH);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        public static void f(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        public static String h(String str) {
            return "ExoPlayerCacheIndex" + str;
        }

        @Override
        public void a(eq0 eq0Var) {
            this.b.put(eq0Var.a, eq0Var);
        }

        @Override
        public void b(eq0 eq0Var, boolean z) {
            if (z) {
                this.b.delete(eq0Var.a);
            } else {
                this.b.put(eq0Var.a, null);
            }
        }

        public final void c(SQLiteDatabase sQLiteDatabase, eq0 eq0Var) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            fq0.t(eq0Var.c(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put(TtmlNode.ATTR_ID, Integer.valueOf(eq0Var.a));
            contentValues.put("key", eq0Var.b);
            contentValues.put(TtmlNode.TAG_METADATA, byteArray);
            sQLiteDatabase.replaceOrThrow((String) zi.e(this.d), null, contentValues);
        }

        @Override
        public void delete() throws DatabaseIOException {
            d(this.a, (String) zi.e(this.c));
        }

        public final void e(SQLiteDatabase sQLiteDatabase, int i) {
            sQLiteDatabase.delete((String) zi.e(this.d), "id = ?", new String[]{Integer.toString(i)});
        }

        @Override
        public boolean exists() {
            return sob.b(this.a.getReadableDatabase(), 1, (String) zi.e(this.c)) != -1;
        }

        public final Cursor g() {
            return this.a.getReadableDatabase().query((String) zi.e(this.d), e, null, null, null, null, null);
        }

        public final void i(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            sob.d(sQLiteDatabase, 1, (String) zi.e(this.c), 1);
            f(sQLiteDatabase, (String) zi.e(this.d));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.d + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        @Override
        public void initialize(long j) {
            String hexString = Long.toHexString(j);
            this.c = hexString;
            this.d = h(hexString);
        }

        @Override
        public void load(HashMap map, SparseArray sparseArray) throws DatabaseIOException {
            zi.g(this.b.size() == 0);
            try {
                if (sob.b(this.a.getReadableDatabase(), 1, (String) zi.e(this.c)) != 1) {
                    SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        i(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                Cursor cursorG = g();
                while (cursorG.moveToNext()) {
                    try {
                        eq0 eq0Var = new eq0(cursorG.getInt(0), (String) zi.e(cursorG.getString(1)), fq0.q(new DataInputStream(new ByteArrayInputStream(cursorG.getBlob(2)))));
                        map.put(eq0Var.b, eq0Var);
                        sparseArray.put(eq0Var.a, eq0Var.b);
                    } catch (Throwable th2) {
                        if (cursorG != null) {
                            try {
                                cursorG.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
                cursorG.close();
            } catch (SQLiteException e2) {
                map.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e2);
            }
        }

        @Override
        public void storeFully(HashMap map) throws DatabaseIOException {
            try {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    i(writableDatabase);
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        c(writableDatabase, (eq0) it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        @Override
        public void storeIncremental(HashMap map) throws DatabaseIOException {
            if (this.b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i = 0; i < this.b.size(); i++) {
                    try {
                        eq0 eq0Var = (eq0) this.b.valueAt(i);
                        if (eq0Var == null) {
                            e(writableDatabase, this.b.keyAt(i));
                        } else {
                            c(writableDatabase, eq0Var);
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
                throw new DatabaseIOException(e2);
            }
        }
    }

    public static class b implements c {
        public final boolean a;
        public final Cipher b;
        public final SecretKeySpec c;
        public final SecureRandom d;
        public final zk e;
        public boolean f;
        public wu8 g;

        public b(File file, byte[] bArr, boolean z) {
            Cipher cipherI;
            SecretKeySpec secretKeySpec;
            zi.g((bArr == null && z) ? false : true);
            if (bArr != null) {
                zi.a(bArr.length == 16);
                try {
                    cipherI = fq0.i();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                zi.a(!z);
                cipherI = null;
                secretKeySpec = null;
            }
            this.a = z;
            this.b = cipherI;
            this.c = secretKeySpec;
            this.d = z ? new SecureRandom() : null;
            this.e = new zk(file);
        }

        @Override
        public void a(eq0 eq0Var) {
            this.f = true;
        }

        @Override
        public void b(eq0 eq0Var, boolean z) {
            this.f = true;
        }

        public final int c(eq0 eq0Var, int i) {
            int i2;
            int iHashCode;
            int iHashCode2 = (eq0Var.a * 31) + eq0Var.b.hashCode();
            if (i < 2) {
                long jB = yg1.b(eq0Var.c());
                i2 = iHashCode2 * 31;
                iHashCode = (int) (jB ^ (jB >>> 32));
            } else {
                i2 = iHashCode2 * 31;
                iHashCode = eq0Var.c().hashCode();
            }
            return i2 + iHashCode;
        }

        public final eq0 d(int i, DataInputStream dataInputStream) throws IOException {
            p02 p02VarQ;
            int i2 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i < 2) {
                long j = dataInputStream.readLong();
                zg1 zg1Var = new zg1();
                zg1.g(zg1Var, j);
                p02VarQ = p02.c.e(zg1Var);
            } else {
                p02VarQ = fq0.q(dataInputStream);
            }
            return new eq0(i2, utf, p02VarQ);
        }

        @Override
        public void delete() {
            this.e.a();
        }

        public final boolean e(HashMap map, SparseArray sparseArray) throws Throwable {
            if (!this.e.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.e.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i = dataInputStream2.readInt();
                    if (i >= 0 && i <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.b == null) {
                                blb.m(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.b.init(2, (Key) blb.j(this.c), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.b));
                            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                                throw new IllegalStateException(e);
                            }
                        } else if (this.a) {
                            this.f = true;
                        }
                        int i2 = dataInputStream2.readInt();
                        int iC = 0;
                        for (int i3 = 0; i3 < i2; i3++) {
                            eq0 eq0VarD = d(i, dataInputStream2);
                            map.put(eq0VarD.b, eq0VarD);
                            sparseArray.put(eq0VarD.a, eq0VarD.b);
                            iC += c(eq0VarD, i);
                        }
                        int i4 = dataInputStream2.readInt();
                        boolean z = dataInputStream2.read() == -1;
                        if (i4 == iC && z) {
                            blb.m(dataInputStream2);
                            return true;
                        }
                        blb.m(dataInputStream2);
                        return false;
                    }
                    blb.m(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        blb.m(dataInputStream);
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        blb.m(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override
        public boolean exists() {
            return this.e.c();
        }

        public final void f(eq0 eq0Var, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(eq0Var.a);
            dataOutputStream.writeUTF(eq0Var.b);
            fq0.t(eq0Var.c(), dataOutputStream);
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
        public final void g(HashMap map) throws Throwable {
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream outputStreamF = this.e.f();
                wu8 wu8Var = this.g;
                if (wu8Var == null) {
                    this.g = new wu8(outputStreamF);
                } else {
                    wu8Var.a(outputStreamF);
                }
                wu8 wu8Var2 = this.g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(wu8Var2);
                try {
                    dataOutputStream2.writeInt(2);
                    int iC = 0;
                    dataOutputStream2.writeInt(this.a ? 1 : 0);
                    if (this.a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) blb.j(this.d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) blb.j(this.b)).init(1, (Key) blb.j(this.c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(wu8Var2, this.b));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    dataOutputStream2.writeInt(map.size());
                    for (eq0 eq0Var : map.values()) {
                        f(eq0Var, dataOutputStream2);
                        iC += c(eq0Var, 2);
                    }
                    dataOutputStream2.writeInt(iC);
                    this.e.b(dataOutputStream2);
                    blb.m(null);
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    blb.m(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override
        public void initialize(long j) {
        }

        @Override
        public void load(HashMap map, SparseArray sparseArray) {
            zi.g(!this.f);
            if (e(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.e.a();
        }

        @Override
        public void storeFully(HashMap map) throws Throwable {
            g(map);
            this.f = false;
        }

        @Override
        public void storeIncremental(HashMap map) throws Throwable {
            if (this.f) {
                storeFully(map);
            }
        }
    }

    public interface c {
        void a(eq0 eq0Var);

        void b(eq0 eq0Var, boolean z);

        void delete();

        boolean exists();

        void initialize(long j);

        void load(HashMap map, SparseArray sparseArray);

        void storeFully(HashMap map);

        void storeIncremental(HashMap map);
    }

    public fq0(bt1 bt1Var, File file, byte[] bArr, boolean z, boolean z2) {
        zi.g((bt1Var == null && file == null) ? false : true);
        this.a = new HashMap();
        this.b = new SparseArray();
        this.c = new SparseBooleanArray();
        this.d = new SparseBooleanArray();
        a aVar = bt1Var != null ? new a(bt1Var) : null;
        b bVar = file != null ? new b(new File(file, "cached_content_index.exi"), bArr, z) : null;
        if (aVar == null || (bVar != null && z2)) {
            this.e = (c) blb.j(bVar);
            this.f = aVar;
        } else {
            this.e = aVar;
            this.f = bVar;
        }
    }

    public static Cipher i() {
        if (blb.a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", BouncyCastleProvider.PROVIDER_NAME);
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static int l(SparseArray sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt >= 0) {
            return iKeyAt;
        }
        while (i < size && i == sparseArray.keyAt(i)) {
            i++;
        }
        return i;
    }

    public static boolean o(String str) {
        return str.startsWith("cached_content_index.exi");
    }

    public static p02 q(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 < 0) {
                throw new IOException("Invalid value size: " + i3);
            }
            int iMin = Math.min(i3, 10485760);
            byte[] bArrCopyOf = blb.f;
            int i4 = 0;
            while (i4 != i3) {
                int i5 = i4 + iMin;
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i5);
                dataInputStream.readFully(bArrCopyOf, i4, iMin);
                iMin = Math.min(i3 - i5, 10485760);
                i4 = i5;
            }
            map.put(utf, bArrCopyOf);
        }
        return new p02(map);
    }

    public static void t(p02 p02Var, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry> setF = p02Var.f();
        dataOutputStream.writeInt(setF.size());
        for (Map.Entry entry : setF) {
            dataOutputStream.writeUTF((String) entry.getKey());
            byte[] bArr = (byte[]) entry.getValue();
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
    }

    public final eq0 d(String str) {
        int iL = l(this.b);
        eq0 eq0Var = new eq0(iL, str);
        this.a.put(str, eq0Var);
        this.b.put(iL, str);
        this.d.put(iL, true);
        this.e.a(eq0Var);
        return eq0Var;
    }

    public void e(String str, zg1 zg1Var) {
        eq0 eq0VarM = m(str);
        if (eq0VarM.b(zg1Var)) {
            this.e.a(eq0VarM);
        }
    }

    public int f(String str) {
        return m(str).a;
    }

    public eq0 g(String str) {
        return (eq0) this.a.get(str);
    }

    public Collection h() {
        return Collections.unmodifiableCollection(this.a.values());
    }

    public yg1 j(String str) {
        eq0 eq0VarG = g(str);
        return eq0VarG != null ? eq0VarG.c() : p02.c;
    }

    public String k(int i) {
        return (String) this.b.get(i);
    }

    public eq0 m(String str) {
        eq0 eq0Var = (eq0) this.a.get(str);
        return eq0Var == null ? d(str) : eq0Var;
    }

    public void n(long j) {
        c cVar;
        this.e.initialize(j);
        c cVar2 = this.f;
        if (cVar2 != null) {
            cVar2.initialize(j);
        }
        if (this.e.exists() || (cVar = this.f) == null || !cVar.exists()) {
            this.e.load(this.a, this.b);
        } else {
            this.f.load(this.a, this.b);
            this.e.storeFully(this.a);
        }
        c cVar3 = this.f;
        if (cVar3 != null) {
            cVar3.delete();
            this.f = null;
        }
    }

    public void p(String str) {
        eq0 eq0Var = (eq0) this.a.get(str);
        if (eq0Var != null && eq0Var.f() && eq0Var.h()) {
            this.a.remove(str);
            int i = eq0Var.a;
            boolean z = this.d.get(i);
            this.e.b(eq0Var, z);
            if (z) {
                this.b.remove(i);
                this.d.delete(i);
            } else {
                this.b.put(i, null);
                this.c.put(i, true);
            }
        }
    }

    public void r() {
        dgb it = ImmutableSet.copyOf((Collection) this.a.keySet()).iterator();
        while (it.hasNext()) {
            p((String) it.next());
        }
    }

    public void s() {
        this.e.storeIncremental(this.a);
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            this.b.remove(this.c.keyAt(i));
        }
        this.c.clear();
        this.d.clear();
    }
}
