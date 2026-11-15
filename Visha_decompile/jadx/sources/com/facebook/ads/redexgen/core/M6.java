package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

@MetaExoPlayerCustomization(type = {"NON_FINAL"}, value = "D54147219: For usage in Hero Simple Cache")
public final class M6 {
    public static byte[] A06;
    public static String[] A07 = {"1eaMPdLcC8DbZCkn0iIyVPFCZSdDAanS", "Exaxr4PlErBkBzdiwoicKn", "2BC", "jQaYCx7PV0mXn8Zj7H8rC7xxlui6spsC", "wp2nCKHDQcjkZqDMhhhKbFGW7G", "lMJ", "SjVm96go47njO9ADG8uLls", "QdN"};
    public M5 A00;
    public M5 A01;
    public final SparseArray<String> A02;
    public final SparseBooleanArray A03;
    public final SparseBooleanArray A04;
    public final HashMap<String, M4> A05;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A06 = new byte[]{20, 16, 6, 122, 22, 23, 22, 122, 5, 30, 22, 6, 96, 5, 20, 17, 17, 28, 27, 18, 32, 33, 66, 101, 125, 106, 103, 98, 111, 43, 125, 106, 103, 126, 110, 43, 120, 98, 113, 110, 49, 43, 127, 125, 127, 116, 121, 120, 67, 127, 115, 114, 104, 121, 114, 104, 67, 117, 114, 120, 121, 100, 50, 121, 100, 117};
    }

    static {
        A07();
    }

    public M6(InterfaceC06364m interfaceC06364m, File file, byte[] bArr, boolean z, boolean z2) {
        C3M.A08((interfaceC06364m == null && file == null) ? false : true);
        this.A05 = new HashMap<>();
        this.A02 = new SparseArray<>();
        this.A04 = new SparseBooleanArray();
        this.A03 = new SparseBooleanArray();
        C1962iu c1962iu = interfaceC06364m != null ? new C1962iu(interfaceC06364m) : null;
        M5 databaseStorage = file != null ? new C1961it(new File(file, A04(42, 24, 47)), bArr, z) : null;
        if (c1962iu == null || (databaseStorage != null && z2)) {
            M5 legacyStorage = (M5) AbstractC06244a.A0f(databaseStorage);
            this.A01 = legacyStorage;
            this.A00 = c1962iu;
        } else {
            this.A01 = c1962iu;
            this.A00 = databaseStorage;
        }
    }

    public static int A00(SparseArray<String> idToKey) {
        int id;
        int size = idToKey.size();
        if (size == 0) {
            id = 0;
        } else {
            int size2 = size - 1;
            id = idToKey.keyAt(size2) + 1;
        }
        if (id < 0) {
            id = 0;
            while (id < size) {
                int size3 = idToKey.keyAt(id);
                if (id != size3) {
                    break;
                }
                id++;
            }
        }
        return id;
    }

    private M4 A01(String str) {
        int iA00 = A00(this.A02);
        M4 m4 = new M4(iA00, str);
        this.A05.put(str, m4);
        this.A02.put(iA00, str);
        this.A03.put(iA00, true);
        this.A01.AFa(m4);
        return m4;
    }

    public static C1960is A02(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int nextBytesToRead = 0; nextBytesToRead < i; nextBytesToRead++) {
            String utf = dataInputStream.readUTF();
            int bytesRead = dataInputStream.readInt();
            if (bytesRead >= 0) {
                int valueSize = 0;
                int i2 = Math.min(bytesRead, 10485760);
                byte[] bArrCopyOf = AbstractC06244a.A07;
                while (valueSize != bytesRead) {
                    int size = valueSize + i2;
                    bArrCopyOf = Arrays.copyOf(bArrCopyOf, size);
                    dataInputStream.readFully(bArrCopyOf, valueSize, i2);
                    valueSize += i2;
                    int size2 = bytesRead - valueSize;
                    i2 = Math.min(size2, 10485760);
                }
                map.put(utf, bArrCopyOf);
            } else {
                throw new IOException(A04(22, 20, 56) + bytesRead);
            }
        }
        return new C1960is(map);
    }

    public static Cipher A05() throws NoSuchPaddingException, NoSuchAlgorithmException {
        int i = AbstractC06244a.A02;
        String strA04 = A04(0, 20, 102);
        if (i == 18) {
            try {
                return Cipher.getInstance(strA04, A04(20, 2, 81));
            } catch (Throwable unused) {
            }
        }
        Cipher cipher = Cipher.getInstance(strA04);
        String[] strArr = A07;
        if (strArr[6].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[6] = "EBBbD5OLh9DYDBrMigQNtJ";
        strArr2[1] = "xQSZ94mu2vygjBv0Ab9r12";
        return cipher;
    }

    public static void A08(C1960is c1960is, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> setA06 = c1960is.A06();
        dataOutputStream.writeInt(setA06.size());
        for (Map.Entry<String, byte[]> entry : setA06) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    public static boolean A0A(String str) {
        return str.startsWith(A04(42, 24, 47));
    }

    public final int A0B(String str) {
        return A0D(str).A01;
    }

    public final M4 A0C(String str) {
        return this.A05.get(str);
    }

    public final M4 A0D(String str) {
        M4 cachedContent = this.A05.get(str);
        return cachedContent == null ? A01(str) : cachedContent;
    }

    public final C1960is A0E(String str) {
        M4 cachedContent = A0C(str);
        return cachedContent != null ? cachedContent.A03() : C1960is.A03;
    }

    public final String A0F(int i) {
        return this.A02.get(i);
    }

    public final Collection<M4> A0G() {
        return Collections.unmodifiableCollection(this.A05.values());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A0H() {
        AbstractC2346pg abstractC2346pgA0N = AbstractC0778Al.A07(this.A05.keySet()).A0N();
        while (true) {
            boolean zHasNext = abstractC2346pgA0N.hasNext();
            String[] strArr = A07;
            if (strArr[7].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[6] = "jpVmrDDiLa6KSoRZ9DaLqT";
            strArr2[1] = "R0FMfILNqJLoUgBryCIaQS";
            if (zHasNext) {
                A0K((String) abstractC2346pgA0N.next());
            } else {
                return;
            }
        }
    }

    public final void A0I() throws IOException {
        this.A01.AJY(this.A05);
        int size = this.A04.size();
        for (int i = 0; i < size; i++) {
            SparseArray<String> sparseArray = this.A02;
            int removedIdCount = this.A04.keyAt(i);
            sparseArray.remove(removedIdCount);
        }
        this.A04.clear();
        this.A03.clear();
    }

    public final void A0J(long j) throws IOException {
        this.A01.AA7(j);
        if (this.A00 != null) {
            this.A00.AA7(j);
        }
        if (!this.A01.A6K() && this.A00 != null && this.A00.A6K()) {
            this.A00.AAj(this.A05, this.A02);
            this.A01.AJX(this.A05);
        } else {
            this.A01.AAj(this.A05, this.A02);
        }
        if (this.A00 != null) {
            M5 m5 = this.A00;
            String[] strArr = A07;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[6] = "sHyLaDKMqWdH53QwNCQNuy";
            strArr2[1] = "kZIq1iKkwSA0yGMJ22HAvZ";
            m5.A5h();
            this.A00 = null;
        }
    }

    public final void A0K(String str) {
        M4 m4 = this.A05.get(str);
        if (m4 != null && m4.A09() && m4.A0A()) {
            this.A05.remove(str);
            int i = m4.A01;
            boolean z = this.A03.get(i);
            this.A01.AEv(m4, z);
            if (z) {
                this.A02.remove(i);
                this.A03.delete(i);
            } else {
                this.A02.put(i, null);
                this.A04.put(i, true);
            }
        }
    }

    public final void A0L(String str, M9 m9) {
        M4 m4A0D = A0D(str);
        if (m4A0D.A0E(m9)) {
            this.A01.AFa(m4A0D);
        }
    }
}
