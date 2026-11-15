package org.apache.tools.zip;

import java.util.Hashtable;
import java.util.Vector;
import java.util.zip.ZipException;

public class ExtraFieldUtils {
    private static final int WORD = 4;
    static Class class$org$apache$tools$zip$AsiExtraField;
    static Class class$org$apache$tools$zip$JarMarker;
    private static Hashtable implementations = new Hashtable();

    static {
        Class clsClass$ = class$org$apache$tools$zip$AsiExtraField;
        if (clsClass$ == null) {
            clsClass$ = class$("org.apache.tools.zip.AsiExtraField");
            class$org$apache$tools$zip$AsiExtraField = clsClass$;
        }
        register(clsClass$);
        Class clsClass$2 = class$org$apache$tools$zip$JarMarker;
        if (clsClass$2 == null) {
            clsClass$2 = class$("org.apache.tools.zip.JarMarker");
            class$org$apache$tools$zip$JarMarker = clsClass$2;
        }
        register(clsClass$2);
    }

    static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static ZipExtraField createExtraField(ZipShort zipShort) throws IllegalAccessException, InstantiationException {
        Class cls = (Class) implementations.get(zipShort);
        if (cls != null) {
            return (ZipExtraField) cls.newInstance();
        }
        UnrecognizedExtraField unrecognizedExtraField = new UnrecognizedExtraField();
        unrecognizedExtraField.setHeaderId(zipShort);
        return unrecognizedExtraField;
    }

    public static byte[] mergeCentralDirectoryData(ZipExtraField[] zipExtraFieldArr) {
        int length = zipExtraFieldArr.length * 4;
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            length += zipExtraField.getCentralDirectoryLength().getValue();
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < zipExtraFieldArr.length; i10++) {
            System.arraycopy(zipExtraFieldArr[i10].getHeaderId().getBytes(), 0, bArr, length2, 2);
            System.arraycopy(zipExtraFieldArr[i10].getCentralDirectoryLength().getBytes(), 0, bArr, length2 + 2, 2);
            byte[] centralDirectoryData = zipExtraFieldArr[i10].getCentralDirectoryData();
            System.arraycopy(centralDirectoryData, 0, bArr, length2 + 4, centralDirectoryData.length);
            length2 += centralDirectoryData.length + 4;
        }
        return bArr;
    }

    public static byte[] mergeLocalFileDataData(ZipExtraField[] zipExtraFieldArr) {
        int length = zipExtraFieldArr.length * 4;
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            length += zipExtraField.getLocalFileDataLength().getValue();
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < zipExtraFieldArr.length; i10++) {
            System.arraycopy(zipExtraFieldArr[i10].getHeaderId().getBytes(), 0, bArr, length2, 2);
            System.arraycopy(zipExtraFieldArr[i10].getLocalFileDataLength().getBytes(), 0, bArr, length2 + 2, 2);
            byte[] localFileDataData = zipExtraFieldArr[i10].getLocalFileDataData();
            System.arraycopy(localFileDataData, 0, bArr, length2 + 4, localFileDataData.length);
            length2 += localFileDataData.length + 4;
        }
        return bArr;
    }

    public static ZipExtraField[] parse(byte[] bArr) throws ZipException {
        Vector vector = new Vector();
        int i10 = 0;
        while (i10 <= bArr.length - 4) {
            ZipShort zipShort = new ZipShort(bArr, i10);
            int value = new ZipShort(bArr, i10 + 2).getValue();
            int i11 = i10 + 4;
            if (i11 + value > bArr.length) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("data starting at ");
                stringBuffer.append(i10);
                stringBuffer.append(" is in unknown format");
                throw new ZipException(stringBuffer.toString());
            }
            try {
                ZipExtraField zipExtraFieldCreateExtraField = createExtraField(zipShort);
                zipExtraFieldCreateExtraField.parseFromLocalFileData(bArr, i11, value);
                vector.addElement(zipExtraFieldCreateExtraField);
                i10 += value + 4;
            } catch (IllegalAccessException e10) {
                throw new ZipException(e10.getMessage());
            } catch (InstantiationException e11) {
                throw new ZipException(e11.getMessage());
            }
        }
        if (i10 == bArr.length) {
            ZipExtraField[] zipExtraFieldArr = new ZipExtraField[vector.size()];
            vector.copyInto(zipExtraFieldArr);
            return zipExtraFieldArr;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("data starting at ");
        stringBuffer2.append(i10);
        stringBuffer2.append(" is in unknown format");
        throw new ZipException(stringBuffer2.toString());
    }

    public static void register(Class cls) {
        try {
            implementations.put(((ZipExtraField) cls.newInstance()).getHeaderId(), cls);
        } catch (ClassCastException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(cls);
            stringBuffer.append(" doesn't implement ZipExtraField");
            throw new RuntimeException(stringBuffer.toString());
        } catch (IllegalAccessException unused2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(cls);
            stringBuffer2.append("'s no-arg constructor is not public");
            throw new RuntimeException(stringBuffer2.toString());
        } catch (InstantiationException unused3) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(cls);
            stringBuffer3.append(" is not a concrete class");
            throw new RuntimeException(stringBuffer3.toString());
        }
    }
}
