package androidx.profileinstaller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

abstract class l {

    static final byte[] f13743a = {112, 114, 111, 0};

    static final byte[] f13744b = {112, 114, 109, 0};

    private static void A(byte[] bArr, int i10, int i11, e eVar) {
        int iM = m(i10, i11, eVar.f13731g);
        int i12 = iM / 8;
        bArr[i12] = (byte) ((1 << (iM % 8)) | bArr[i12]);
    }

    private static void B(InputStream inputStream) {
        f.h(inputStream);
        int iJ = f.j(inputStream);
        if (iJ == 6 || iJ == 7) {
            return;
        }
        while (iJ > 0) {
            f.j(inputStream);
            for (int iJ2 = f.j(inputStream); iJ2 > 0; iJ2--) {
                f.h(inputStream);
            }
            iJ--;
        }
    }

    static boolean C(OutputStream outputStream, byte[] bArr, e[] eVarArr) throws IOException {
        if (Arrays.equals(bArr, n.f13756a)) {
            P(outputStream, eVarArr);
            return true;
        }
        if (Arrays.equals(bArr, n.f13757b)) {
            O(outputStream, eVarArr);
            return true;
        }
        if (Arrays.equals(bArr, n.f13759d)) {
            M(outputStream, eVarArr);
            return true;
        }
        if (Arrays.equals(bArr, n.f13758c)) {
            N(outputStream, eVarArr);
            return true;
        }
        if (!Arrays.equals(bArr, n.f13760e)) {
            return false;
        }
        L(outputStream, eVarArr);
        return true;
    }

    private static void D(OutputStream outputStream, e eVar) throws IOException {
        int[] iArr = eVar.f13732h;
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = iArr[i10];
            f.p(outputStream, i12 - i11);
            i10++;
            i11 = i12;
        }
    }

    private static o E(e[] eVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f.p(byteArrayOutputStream, eVarArr.length);
            int i10 = 2;
            for (e eVar : eVarArr) {
                f.q(byteArrayOutputStream, eVar.f13727c);
                f.q(byteArrayOutputStream, eVar.f13728d);
                f.q(byteArrayOutputStream, eVar.f13731g);
                String strJ = j(eVar.f13725a, eVar.f13726b, n.f13756a);
                int iK = f.k(strJ);
                f.p(byteArrayOutputStream, iK);
                i10 = i10 + 14 + iK;
                f.n(byteArrayOutputStream, strJ);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i10 == byteArray.length) {
                o oVar = new o(FileSectionType.DEX_FILES, i10, byteArray, false);
                byteArrayOutputStream.close();
                return oVar;
            }
            throw f.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    static void F(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(f13743a);
        outputStream.write(bArr);
    }

    private static void G(OutputStream outputStream, e eVar) throws IOException {
        K(outputStream, eVar);
        D(outputStream, eVar);
        I(outputStream, eVar);
    }

    private static void H(OutputStream outputStream, e eVar, String str) throws IOException {
        f.p(outputStream, f.k(str));
        f.p(outputStream, eVar.f13729e);
        f.q(outputStream, eVar.f13730f);
        f.q(outputStream, eVar.f13727c);
        f.q(outputStream, eVar.f13731g);
        f.n(outputStream, str);
    }

    private static void I(OutputStream outputStream, e eVar) throws IOException {
        byte[] bArr = new byte[k(eVar.f13731g)];
        for (Map.Entry entry : eVar.f13733i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                A(bArr, 2, iIntValue, eVar);
            }
            if ((iIntValue2 & 4) != 0) {
                A(bArr, 4, iIntValue, eVar);
            }
        }
        outputStream.write(bArr);
    }

    private static void J(OutputStream outputStream, int i10, e eVar) throws IOException {
        byte[] bArr = new byte[l(i10, eVar.f13731g)];
        for (Map.Entry entry : eVar.f13733i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i11 = 0;
            for (int i12 = 1; i12 <= 4; i12 <<= 1) {
                if (i12 != 1 && (i12 & i10) != 0) {
                    if ((i12 & iIntValue2) == i12) {
                        int i13 = (eVar.f13731g * i11) + iIntValue;
                        int i14 = i13 / 8;
                        bArr[i14] = (byte) ((1 << (i13 % 8)) | bArr[i14]);
                    }
                    i11++;
                }
            }
        }
        outputStream.write(bArr);
    }

    private static void K(OutputStream outputStream, e eVar) throws IOException {
        int i10 = 0;
        for (Map.Entry entry : eVar.f13733i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                f.p(outputStream, iIntValue - i10);
                f.p(outputStream, 0);
                i10 = iIntValue;
            }
        }
    }

    private static void L(OutputStream outputStream, e[] eVarArr) throws IOException {
        f.p(outputStream, eVarArr.length);
        for (e eVar : eVarArr) {
            String strJ = j(eVar.f13725a, eVar.f13726b, n.f13760e);
            f.p(outputStream, f.k(strJ));
            f.p(outputStream, eVar.f13733i.size());
            f.p(outputStream, eVar.f13732h.length);
            f.q(outputStream, eVar.f13727c);
            f.n(outputStream, strJ);
            Iterator it = eVar.f13733i.keySet().iterator();
            while (it.hasNext()) {
                f.p(outputStream, ((Integer) it.next()).intValue());
            }
            for (int i10 : eVar.f13732h) {
                f.p(outputStream, i10);
            }
        }
    }

    private static void M(OutputStream outputStream, e[] eVarArr) throws IOException {
        f.r(outputStream, eVarArr.length);
        for (e eVar : eVarArr) {
            int size = eVar.f13733i.size() * 4;
            String strJ = j(eVar.f13725a, eVar.f13726b, n.f13759d);
            f.p(outputStream, f.k(strJ));
            f.p(outputStream, eVar.f13732h.length);
            f.q(outputStream, size);
            f.q(outputStream, eVar.f13727c);
            f.n(outputStream, strJ);
            Iterator it = eVar.f13733i.keySet().iterator();
            while (it.hasNext()) {
                f.p(outputStream, ((Integer) it.next()).intValue());
                f.p(outputStream, 0);
            }
            for (int i10 : eVar.f13732h) {
                f.p(outputStream, i10);
            }
        }
    }

    private static void N(OutputStream outputStream, e[] eVarArr) throws IOException {
        byte[] bArrB = b(eVarArr, n.f13758c);
        f.r(outputStream, eVarArr.length);
        f.m(outputStream, bArrB);
    }

    private static void O(OutputStream outputStream, e[] eVarArr) throws IOException {
        byte[] bArrB = b(eVarArr, n.f13757b);
        f.r(outputStream, eVarArr.length);
        f.m(outputStream, bArrB);
    }

    private static void P(OutputStream outputStream, e[] eVarArr) throws IOException {
        Q(outputStream, eVarArr);
    }

    private static void Q(OutputStream outputStream, e[] eVarArr) throws IOException {
        int length;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(E(eVarArr));
        arrayList.add(c(eVarArr));
        arrayList.add(d(eVarArr));
        long length2 = ((long) n.f13756a.length) + ((long) f13743a.length) + 4 + ((long) (arrayList.size() * 16));
        f.q(outputStream, arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            o oVar = (o) arrayList.get(i10);
            f.q(outputStream, oVar.f13763a.getValue());
            f.q(outputStream, length2);
            if (oVar.f13766d) {
                byte[] bArr = oVar.f13765c;
                long length3 = bArr.length;
                byte[] bArrB = f.b(bArr);
                arrayList2.add(bArrB);
                f.q(outputStream, bArrB.length);
                f.q(outputStream, length3);
                length = bArrB.length;
            } else {
                arrayList2.add(oVar.f13765c);
                f.q(outputStream, oVar.f13765c.length);
                f.q(outputStream, 0L);
                length = oVar.f13765c.length;
            }
            length2 += (long) length;
        }
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            outputStream.write((byte[]) arrayList2.get(i11));
        }
    }

    private static int a(e eVar) {
        Iterator it = eVar.f13733i.entrySet().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
        }
        return iIntValue;
    }

    private static byte[] b(e[] eVarArr, byte[] bArr) throws IOException {
        int i10 = 0;
        int iK = 0;
        for (e eVar : eVarArr) {
            iK += f.k(j(eVar.f13725a, eVar.f13726b, bArr)) + 16 + (eVar.f13729e * 2) + eVar.f13730f + k(eVar.f13731g);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(iK);
        if (Arrays.equals(bArr, n.f13758c)) {
            int length = eVarArr.length;
            while (i10 < length) {
                e eVar2 = eVarArr[i10];
                H(byteArrayOutputStream, eVar2, j(eVar2.f13725a, eVar2.f13726b, bArr));
                G(byteArrayOutputStream, eVar2);
                i10++;
            }
        } else {
            for (e eVar3 : eVarArr) {
                H(byteArrayOutputStream, eVar3, j(eVar3.f13725a, eVar3.f13726b, bArr));
            }
            int length2 = eVarArr.length;
            while (i10 < length2) {
                G(byteArrayOutputStream, eVarArr[i10]);
                i10++;
            }
        }
        if (byteArrayOutputStream.size() == iK) {
            return byteArrayOutputStream.toByteArray();
        }
        throw f.c("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + iK);
    }

    private static o c(e[] eVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < eVarArr.length; i11++) {
            try {
                e eVar = eVarArr[i11];
                f.p(byteArrayOutputStream, i11);
                f.p(byteArrayOutputStream, eVar.f13729e);
                i10 = i10 + 4 + (eVar.f13729e * 2);
                D(byteArrayOutputStream, eVar);
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            o oVar = new o(FileSectionType.CLASSES, i10, byteArray, true);
            byteArrayOutputStream.close();
            return oVar;
        }
        throw f.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static o d(e[] eVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < eVarArr.length; i11++) {
            try {
                e eVar = eVarArr[i11];
                int iA = a(eVar);
                byte[] bArrE = e(iA, eVar);
                byte[] bArrF = f(eVar);
                f.p(byteArrayOutputStream, i11);
                int length = bArrE.length + 2 + bArrF.length;
                f.q(byteArrayOutputStream, length);
                f.p(byteArrayOutputStream, iA);
                byteArrayOutputStream.write(bArrE);
                byteArrayOutputStream.write(bArrF);
                i10 = i10 + 6 + length;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            o oVar = new o(FileSectionType.METHODS, i10, byteArray, true);
            byteArrayOutputStream.close();
            return oVar;
        }
        throw f.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static byte[] e(int i10, e eVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            J(byteArrayOutputStream, i10, eVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static byte[] f(e eVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            K(byteArrayOutputStream, eVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static String g(String str, String str2) {
        if ("!".equals(str2)) {
            return str.replace(":", "!");
        }
        return ":".equals(str2) ? str.replace("!", ":") : str;
    }

    private static String h(String str) {
        int iIndexOf = str.indexOf("!");
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(":");
        }
        return iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
    }

    private static e i(e[] eVarArr, String str) {
        if (eVarArr.length <= 0) {
            return null;
        }
        String strH = h(str);
        for (int i10 = 0; i10 < eVarArr.length; i10++) {
            if (eVarArr[i10].f13726b.equals(strH)) {
                return eVarArr[i10];
            }
        }
        return null;
    }

    private static String j(String str, String str2, byte[] bArr) {
        String strA = n.a(bArr);
        if (str.length() <= 0) {
            return g(str2, strA);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return g(str2, strA);
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        return str + n.a(bArr) + str2;
    }

    private static int k(int i10) {
        return z(i10 * 2) / 8;
    }

    private static int l(int i10, int i11) {
        return z(Integer.bitCount(i10 & (-2)) * i11) / 8;
    }

    private static int m(int i10, int i11, int i12) {
        if (i10 == 1) {
            throw f.c("HOT methods are not stored in the bitmap");
        }
        if (i10 == 2) {
            return i11;
        }
        if (i10 == 4) {
            return i11 + i12;
        }
        throw f.c("Unexpected flag: " + i10);
    }

    private static int[] n(InputStream inputStream, int i10) {
        int[] iArr = new int[i10];
        int iH = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            iH += f.h(inputStream);
            iArr[i11] = iH;
        }
        return iArr;
    }

    private static int o(BitSet bitSet, int i10, int i11) {
        int i12 = bitSet.get(m(2, i10, i11)) ? 2 : 0;
        return bitSet.get(m(4, i10, i11)) ? i12 | 4 : i12;
    }

    static byte[] p(InputStream inputStream, byte[] bArr) {
        if (Arrays.equals(bArr, f.d(inputStream, bArr.length))) {
            return f.d(inputStream, n.f13757b.length);
        }
        throw f.c("Invalid magic");
    }

    private static void q(InputStream inputStream, e eVar) {
        int iAvailable = inputStream.available() - eVar.f13730f;
        int iH = 0;
        while (inputStream.available() > iAvailable) {
            iH += f.h(inputStream);
            eVar.f13733i.put(Integer.valueOf(iH), 1);
            for (int iH2 = f.h(inputStream); iH2 > 0; iH2--) {
                B(inputStream);
            }
        }
        if (inputStream.available() != iAvailable) {
            throw f.c("Read too much data during profile line parse");
        }
    }

    static e[] r(InputStream inputStream, byte[] bArr, byte[] bArr2, e[] eVarArr) {
        if (Arrays.equals(bArr, n.f13761f)) {
            if (Arrays.equals(n.f13756a, bArr2)) {
                throw f.c("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            }
            return s(inputStream, bArr, eVarArr);
        }
        if (Arrays.equals(bArr, n.f13762g)) {
            return u(inputStream, bArr2, eVarArr);
        }
        throw f.c("Unsupported meta version");
    }

    static e[] s(InputStream inputStream, byte[] bArr, e[] eVarArr) throws IOException {
        if (!Arrays.equals(bArr, n.f13761f)) {
            throw f.c("Unsupported meta version");
        }
        int iJ = f.j(inputStream);
        byte[] bArrE = f.e(inputStream, (int) f.i(inputStream), (int) f.i(inputStream));
        if (inputStream.read() > 0) {
            throw f.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            e[] eVarArrT = t(byteArrayInputStream, iJ, eVarArr);
            byteArrayInputStream.close();
            return eVarArrT;
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static e[] t(InputStream inputStream, int i10, e[] eVarArr) {
        if (inputStream.available() == 0) {
            return new e[0];
        }
        if (i10 != eVarArr.length) {
            throw f.c("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i10];
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iH = f.h(inputStream);
            iArr[i11] = f.h(inputStream);
            strArr[i11] = f.f(inputStream, iH);
        }
        for (int i12 = 0; i12 < i10; i12++) {
            e eVar = eVarArr[i12];
            if (!eVar.f13726b.equals(strArr[i12])) {
                throw f.c("Order of dexfiles in metadata did not match baseline");
            }
            int i13 = iArr[i12];
            eVar.f13729e = i13;
            eVar.f13732h = n(inputStream, i13);
        }
        return eVarArr;
    }

    static e[] u(InputStream inputStream, byte[] bArr, e[] eVarArr) throws IOException {
        int iH = f.h(inputStream);
        byte[] bArrE = f.e(inputStream, (int) f.i(inputStream), (int) f.i(inputStream));
        if (inputStream.read() > 0) {
            throw f.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            e[] eVarArrV = v(byteArrayInputStream, bArr, iH, eVarArr);
            byteArrayInputStream.close();
            return eVarArrV;
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static e[] v(InputStream inputStream, byte[] bArr, int i10, e[] eVarArr) {
        if (inputStream.available() == 0) {
            return new e[0];
        }
        if (i10 != eVarArr.length) {
            throw f.c("Mismatched number of dex files found in metadata");
        }
        for (int i11 = 0; i11 < i10; i11++) {
            f.h(inputStream);
            String strF = f.f(inputStream, f.h(inputStream));
            long jI = f.i(inputStream);
            int iH = f.h(inputStream);
            e eVarI = i(eVarArr, strF);
            if (eVarI == null) {
                throw f.c("Missing profile key: " + strF);
            }
            eVarI.f13728d = jI;
            int[] iArrN = n(inputStream, iH);
            if (Arrays.equals(bArr, n.f13760e)) {
                eVarI.f13729e = iH;
                eVarI.f13732h = iArrN;
            }
        }
        return eVarArr;
    }

    private static void w(InputStream inputStream, e eVar) {
        BitSet bitSetValueOf = BitSet.valueOf(f.d(inputStream, f.a(eVar.f13731g * 2)));
        int i10 = 0;
        while (true) {
            int i11 = eVar.f13731g;
            if (i10 >= i11) {
                return;
            }
            int iO = o(bitSetValueOf, i10, i11);
            if (iO != 0) {
                Integer num = (Integer) eVar.f13733i.get(Integer.valueOf(i10));
                if (num == null) {
                    num = 0;
                }
                eVar.f13733i.put(Integer.valueOf(i10), Integer.valueOf(iO | num.intValue()));
            }
            i10++;
        }
    }

    static e[] x(InputStream inputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, n.f13757b)) {
            throw f.c("Unsupported version");
        }
        int iJ = f.j(inputStream);
        byte[] bArrE = f.e(inputStream, (int) f.i(inputStream), (int) f.i(inputStream));
        if (inputStream.read() > 0) {
            throw f.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            e[] eVarArrY = y(byteArrayInputStream, str, iJ);
            byteArrayInputStream.close();
            return eVarArrY;
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static e[] y(InputStream inputStream, String str, int i10) {
        if (inputStream.available() == 0) {
            return new e[0];
        }
        e[] eVarArr = new e[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iH = f.h(inputStream);
            int iH2 = f.h(inputStream);
            eVarArr[i11] = new e(str, f.f(inputStream, iH), f.i(inputStream), 0L, iH2, (int) f.i(inputStream), (int) f.i(inputStream), new int[iH2], new TreeMap());
        }
        for (int i12 = 0; i12 < i10; i12++) {
            e eVar = eVarArr[i12];
            q(inputStream, eVar);
            eVar.f13732h = n(inputStream, eVar.f13729e);
            w(inputStream, eVar);
        }
        return eVarArr;
    }

    private static int z(int i10) {
        return (i10 + 7) & (-8);
    }
}
