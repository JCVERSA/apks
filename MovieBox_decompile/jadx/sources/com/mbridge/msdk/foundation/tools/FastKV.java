package com.mbridge.msdk.foundation.tools;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okio.Utf8;

public class FastKV {
    static final int ASYNC_BLOCKING = 1;
    private static final String A_SUFFIX = ".kva";
    private static final int BASE_GC_BYTES_THRESHOLD = 4096;
    private static final int BASE_GC_KEYS_THRESHOLD = 80;
    private static final String BOTH_FILES_ERROR = "both files error";
    private static final String B_SUFFIX = ".kvb";
    private static final String C_SUFFIX = ".kvc";
    private static final int DATA_SIZE_LIMIT = 536870912;
    private static final int DATA_START = 12;
    private static final int DOUBLE_LIMIT;
    private static final byte[] EMPTY_ARRAY = new byte[0];
    static final String GC_FINISH = "gc finish";
    private static final int INTERNAL_LIMIT = 2048;
    private static final String MAP_FAILED = "map failed";
    static final int NON_BLOCKING = 0;
    private static final String OPEN_FILE_FAILED = "open file failed";
    private static final int PAGE_SIZE;
    private static final String PARSE_DATA_FAILED = "parse dara failed";
    static final int SYNC_BLOCKING = 2;
    private static final String TEMP_SUFFIX = ".tmp";
    static final String TRUNCATE_FINISH = "truncate finish";
    private static final int TRUNCATE_THRESHOLD;
    private static final int[] TYPE_SIZE;
    private MappedByteBuffer aBuffer;
    private FileChannel aChannel;
    private MappedByteBuffer bBuffer;
    private FileChannel bChannel;
    private long checksum;
    private int dataEnd;
    private final Map<String, b> encoderMap;
    private z fastBuffer;
    private int invalidBytes;
    private final String name;
    private final String path;
    private int removeStart;
    private boolean sizeChanged;
    private String tempExternalName;
    private int updateSize;
    private int updateStart;
    private int writingMode;
    private final Map<String, h> data = new HashMap();
    private final Executor executor = new c0();
    private final ArrayList<d> invalids = new ArrayList<>();
    private final c logger = a0.f34849b;
    private boolean autoCommit = true;

    public static class Builder {
        private static final Map<String, FastKV> INSTANCE_MAP = new ConcurrentHashMap();
        private b[] encoders;
        private final String name;
        private final String path;
        private int writingMode = 0;

        public Builder(String str, String str2) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("path is empty");
            }
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            if (!str.endsWith("/")) {
                str = str + '/';
            }
            this.path = str;
            this.name = str2;
        }

        public Builder asyncBlocking() {
            this.writingMode = 1;
            return this;
        }

        public Builder blocking() {
            this.writingMode = 2;
            return this;
        }

        public FastKV build() {
            String str = this.path + this.name;
            Map<String, FastKV> map = INSTANCE_MAP;
            FastKV fastKV = map.get(str);
            if (fastKV == null) {
                synchronized (Builder.class) {
                    try {
                        fastKV = map.get(str);
                        if (fastKV == null) {
                            fastKV = new FastKV(this.path, this.name, this.encoders, this.writingMode);
                            map.put(str, fastKV);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return fastKV;
        }

        public Builder encoder(b[] bVarArr) {
            this.encoders = bVarArr;
            return this;
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            FastKV.this.writeToCFile();
        }
    }

    public interface b<T> {
        T a(byte[] bArr, int i10, int i11);

        String a();

        byte[] a(T t10);
    }

    public interface c {
        void a(String str, Exception exc);

        void a(String str, String str2);

        void b(String str, Exception exc);
    }

    private static class d implements Comparable<d> {

        int f34818a;

        int f34819b;

        d(int i10, int i11) {
            this.f34819b = i10;
            this.f34818a = i11;
        }

        @Override
        public int compareTo(d dVar) {
            return this.f34819b - dVar.f34819b;
        }
    }

    static {
        int iA = a1.a();
        PAGE_SIZE = iA;
        int iMax = Math.max(iA << 1, 16384);
        DOUBLE_LIMIT = iMax;
        TRUNCATE_THRESHOLD = iMax << 1;
        TYPE_SIZE = new int[]{0, 1, 4, 4, 8, 8};
    }

    FastKV(String str, String str2, b[] bVarArr, int i10) {
        this.path = str;
        this.name = str2;
        this.writingMode = i10;
        HashMap map = new HashMap();
        x0 x0Var = x0.f34998a;
        map.put(x0Var.a(), x0Var);
        if (bVarArr != null && bVarArr.length > 0) {
            for (b bVar : bVarArr) {
                String strA = bVar.a();
                if (map.containsKey(strA)) {
                    error("duplicate encoder tag:" + strA);
                } else {
                    map.put(strA, bVar);
                }
            }
        }
        this.encoderMap = map;
        loadData();
    }

    private void addObject(String str, Object obj, byte[] bArr, byte b10) {
        Object obj2;
        int length;
        h gVar;
        int iSaveArray = saveArray(str, bArr, b10);
        if (iSaveArray != 0) {
            String str2 = this.tempExternalName;
            boolean z10 = str2 != null;
            if (z10) {
                this.tempExternalName = null;
                length = 32;
                obj2 = str2;
            } else {
                obj2 = obj;
                length = bArr.length;
            }
            if (b10 == 6) {
                gVar = new o(this.updateStart, iSaveArray, (String) obj2, length, z10);
            } else {
                gVar = b10 == 7 ? new g(this.updateStart, iSaveArray, obj2, length, z10) : new n(this.updateStart, iSaveArray, obj2, length, z10);
            }
            this.data.put(str, gVar);
            updateChange();
        }
    }

    private void addOrUpdate(String str, Object obj, byte[] bArr, p pVar, byte b10) {
        if (pVar == null) {
            addObject(str, obj, bArr, b10);
        } else if (pVar.f34949b || pVar.f34952e != bArr.length) {
            updateObject(str, obj, bArr, pVar);
        } else {
            updateBytes(pVar.f34906a, bArr);
            pVar.f34951d = obj;
        }
        checkIfCommit();
    }

    private int bytesThreshold() {
        int i10 = this.dataEnd;
        if (i10 <= 16384) {
            return 4096;
        }
        return i10 <= 65536 ? 8192 : 16384;
    }

    private void checkGC() {
        if (this.invalidBytes < (bytesThreshold() << 1)) {
            if (this.invalids.size() < (this.dataEnd < 16384 ? 80 : 160)) {
                return;
            }
        }
        gc(0);
    }

    private void checkIfCommit() {
        if (this.writingMode == 0 || !this.autoCommit) {
            return;
        }
        commitToCFile();
    }

    private void checkKey(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("key is empty");
        }
    }

    private void checkKeySize(int i10) {
        if (i10 > 255) {
            throw new IllegalArgumentException("key's length must less than 256");
        }
    }

    private void checkValueSize(int i10, boolean z10) {
        if (z10) {
            if (i10 != 32) {
                throw new IllegalStateException("name size not match");
            }
        } else if (i10 < 0 || i10 >= 2048) {
            throw new IllegalStateException("value size out of bound");
        }
    }

    private void clearData() {
        this.dataEnd = 12;
        this.checksum = 0L;
        clearInvalid();
        this.data.clear();
        z zVar = this.fastBuffer;
        if (zVar == null || zVar.f34999a.length != PAGE_SIZE) {
            this.fastBuffer = new z(PAGE_SIZE);
        } else {
            zVar.b(0, 0);
            this.fastBuffer.a(4, 0L);
        }
    }

    private void clearInvalid() {
        this.invalidBytes = 0;
        this.invalids.clear();
    }

    private boolean commitToCFile() {
        int i10 = this.writingMode;
        if (i10 == 1) {
            this.executor.execute(new a());
        } else if (i10 == 2) {
            return writeToCFile();
        }
        return true;
    }

    private void copyBuffer(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i10) {
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                MappedByteBuffer map = (mappedByteBuffer2 == this.bBuffer ? this.bChannel : this.aChannel).map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.bBuffer) {
                    this.bBuffer = map;
                } else {
                    this.aBuffer = map;
                }
                mappedByteBuffer2 = map;
            } catch (IOException e10) {
                error(e10);
                toBlockingMode();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i10);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void countInvalid(int i10, int i11) {
        this.invalidBytes += i11 - i10;
        this.invalids.add(new d(i10, i11));
    }

    private void deleteCFiles() {
        try {
            a1.a(new File(this.path, this.name + C_SUFFIX));
            a1.a(new File(this.path, this.name + TEMP_SUFFIX));
        } catch (Exception e10) {
            error(e10);
        }
    }

    private void ensureSize(int i10) {
        int length = this.fastBuffer.f34999a.length;
        int i11 = this.dataEnd + i10;
        if (i11 >= length) {
            int i12 = this.invalidBytes;
            if (i12 > i10 && i12 > bytesThreshold()) {
                gc(i10);
                return;
            }
            int newCapacity = getNewCapacity(length, i11);
            byte[] bArr = new byte[newCapacity];
            System.arraycopy(this.fastBuffer.f34999a, 0, bArr, 0, this.dataEnd);
            this.fastBuffer.f34999a = bArr;
            if (this.writingMode == 0) {
                try {
                    FileChannel fileChannel = this.aChannel;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    long j10 = newCapacity;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
                    this.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j10);
                    this.bBuffer = map2;
                    map2.order(byteOrder);
                } catch (IOException e10) {
                    error(new Exception(MAP_FAILED, e10));
                    this.fastBuffer.b(0, this.dataEnd - 12);
                    this.fastBuffer.a(4, this.checksum);
                    toBlockingMode();
                }
            }
        }
    }

    private void error(Exception exc) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.b(this.name, exc);
        }
    }

    private void fastPutString(String str, String str2, o oVar) {
        int iB = z.b(str2);
        if (oVar == null) {
            int iB2 = z.b(str);
            checkKeySize(iB2);
            int i10 = iB2 + 4;
            this.updateSize = i10 + iB;
            preparePutBytes();
            this.fastBuffer.a((byte) 6);
            putKey(str, iB2);
            putStringValue(str2, iB);
            Map<String, h> map = this.data;
            int i11 = this.updateStart;
            map.put(str, new o(i11, i11 + i10, str2, iB, false));
            updateChange();
        } else {
            int i12 = oVar.f34906a;
            int i13 = i12 - oVar.f34950c;
            int i14 = oVar.f34952e;
            boolean z10 = false;
            String str3 = null;
            if (i14 == iB) {
                this.checksum ^= this.fastBuffer.a(i12, i14);
                if (iB == str2.length()) {
                    str2.getBytes(0, iB, this.fastBuffer.f34999a, oVar.f34906a);
                } else {
                    z zVar = this.fastBuffer;
                    zVar.f35000b = oVar.f34906a;
                    zVar.c(str2);
                }
                this.updateStart = oVar.f34906a;
                this.updateSize = iB;
            } else {
                this.updateSize = i13 + iB;
                preparePutBytes();
                this.fastBuffer.a((byte) 6);
                int i15 = i13 - 3;
                z zVar2 = this.fastBuffer;
                byte[] bArr = zVar2.f34999a;
                System.arraycopy(bArr, oVar.f34950c + 1, bArr, zVar2.f35000b, i15);
                this.fastBuffer.f35000b += i15;
                putStringValue(str2, iB);
                remove((byte) 6, oVar.f34950c, oVar.f34906a + oVar.f34952e);
                str3 = oVar.f34949b ? (String) oVar.f34951d : null;
                oVar.f34949b = false;
                int i16 = this.updateStart;
                oVar.f34950c = i16;
                oVar.f34906a = i16 + i13;
                oVar.f34952e = iB;
                z10 = true;
            }
            oVar.f34951d = str2;
            updateChange();
            if (z10) {
                checkGC();
            }
            if (str3 != null) {
                a1.a(new File(this.path + this.name, str3));
            }
        }
        checkIfCommit();
    }

    private byte[] getArrayFromFile(g gVar) {
        try {
            byte[] bArrC = a1.c(new File(this.path + this.name, (String) gVar.f34951d));
            return bArrC != null ? bArrC : EMPTY_ARRAY;
        } catch (Exception e10) {
            error(e10);
            return EMPTY_ARRAY;
        }
    }

    private int getNewCapacity(int i10, int i11) {
        if (i11 > 536870912) {
            throw new IllegalStateException("data size out of limit");
        }
        int i12 = PAGE_SIZE;
        if (i11 <= i12) {
            return i12;
        }
        while (i10 < i11) {
            int i13 = DOUBLE_LIMIT;
            i10 = i10 <= i13 ? i10 << 1 : i10 + i13;
        }
        return i10;
    }

    private Object getObjectFromFile(n nVar) {
        try {
            byte[] bArrC = a1.c(new File(this.path + this.name, (String) nVar.f34951d));
            if (bArrC == null) {
                warning(new Exception("Read object data failed"));
                return null;
            }
            int i10 = bArrC[0] & 255;
            String str = new String(bArrC, 1, i10, StandardCharsets.UTF_8);
            b bVar = this.encoderMap.get(str);
            if (bVar != null) {
                int i11 = i10 + 1;
                return bVar.a(bArrC, i11, bArrC.length - i11);
            }
            warning(new Exception("No encoder for tag:" + str));
            return null;
        } catch (Exception e10) {
            error(e10);
            return null;
        }
    }

    private String getStringFromFile(o oVar) {
        try {
            byte[] bArrC = a1.c(new File(this.path + this.name, (String) oVar.f34951d));
            if (bArrC != null && bArrC.length != 0) {
                return new String(bArrC, StandardCharsets.UTF_8);
            }
            return "";
        } catch (Exception e10) {
            error(e10);
        }
        return "";
    }

    private void info(String str) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.a(this.name, str);
        }
    }

    private boolean isABFileEqual() {
        z zVar = new z(this.dataEnd);
        this.bBuffer.rewind();
        this.bBuffer.get(zVar.f34999a, 0, this.dataEnd);
        byte[] bArr = this.fastBuffer.f34999a;
        byte[] bArr2 = zVar.f34999a;
        for (int i10 = 0; i10 < this.dataEnd; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private synchronized void loadData() {
        try {
            long jNanoTime = System.nanoTime();
            if (!loadFromCFile() && this.writingMode == 0) {
                loadFromABFile();
            }
            if (this.fastBuffer == null) {
                this.fastBuffer = new z(PAGE_SIZE);
            }
            if (this.logger != null) {
                info("loading finish, data len:" + this.dataEnd + ", get keys:" + this.data.size() + ", use time:" + ((System.nanoTime() - jNanoTime) / 1000000) + " ms");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void loadFromABFile() {
        FastKV fastKV = this;
        File file = new File(fastKV.path, fastKV.name + A_SUFFIX);
        File file2 = new File(fastKV.path, fastKV.name + B_SUFFIX);
        try {
            if (a1.d(file) && a1.d(file2)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                long length = randomAccessFile.length();
                long length2 = randomAccessFile2.length();
                fastKV.aChannel = randomAccessFile.getChannel();
                fastKV.bChannel = randomAccessFile2.getChannel();
                try {
                    FileChannel fileChannel = fastKV.aChannel;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, length > 0 ? length : PAGE_SIZE);
                    fastKV.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = fastKV.bChannel.map(mapMode, 0L, length2 > 0 ? length2 : PAGE_SIZE);
                    fastKV.bBuffer = map2;
                    map2.order(byteOrder);
                    fastKV.fastBuffer = new z(fastKV.aBuffer.capacity());
                    if (length == 0 && length2 == 0) {
                        fastKV.dataEnd = 12;
                        return;
                    }
                    int i10 = fastKV.aBuffer.getInt();
                    long j10 = fastKV.aBuffer.getLong();
                    int i11 = fastKV.bBuffer.getInt();
                    long j11 = fastKV.bBuffer.getLong();
                    if (i10 >= 0) {
                        if (i10 <= length - 12) {
                            fastKV = this;
                            fastKV.dataEnd = i10 + 12;
                            fastKV.aBuffer.rewind();
                            fastKV.aBuffer.get(fastKV.fastBuffer.f34999a, 0, fastKV.dataEnd);
                            if (j10 == fastKV.fastBuffer.a(12, i10) && parseData() == 0) {
                                fastKV.checksum = j10;
                                if (length == length2 && isABFileEqual()) {
                                    return;
                                }
                                fastKV.warning(new Exception("B file error"));
                                fastKV.copyBuffer(fastKV.aBuffer, fastKV.bBuffer, fastKV.dataEnd);
                                return;
                            }
                        } else {
                            fastKV = this;
                        }
                    }
                    if (i11 >= 0 && i11 <= length2 - 12) {
                        fastKV.data.clear();
                        clearInvalid();
                        fastKV.dataEnd = i11 + 12;
                        if (fastKV.fastBuffer.f34999a.length != fastKV.bBuffer.capacity()) {
                            fastKV.fastBuffer = new z(fastKV.bBuffer.capacity());
                        }
                        fastKV.bBuffer.rewind();
                        fastKV.bBuffer.get(fastKV.fastBuffer.f34999a, 0, fastKV.dataEnd);
                        if (j11 == fastKV.fastBuffer.a(12, i11) && parseData() == 0) {
                            fastKV.warning(new Exception("A file error"));
                            fastKV.copyBuffer(fastKV.bBuffer, fastKV.aBuffer, fastKV.dataEnd);
                            fastKV.checksum = j11;
                            return;
                        }
                    }
                    fastKV.error(BOTH_FILES_ERROR);
                    resetData();
                    return;
                } catch (IOException e10) {
                    fastKV.error(e10);
                    toBlockingMode();
                    fastKV.tryBlockingIO(file, file2);
                    return;
                }
            }
            fastKV.error(new Exception(OPEN_FILE_FAILED));
            toBlockingMode();
        } catch (Exception e11) {
            fastKV.error(e11);
            clearData();
            toBlockingMode();
        }
    }

    private boolean loadFromCFile() {
        File file = new File(this.path, this.name + C_SUFFIX);
        File file2 = new File(this.path, this.name + TEMP_SUFFIX);
        boolean z10 = false;
        try {
            if (!file.exists()) {
                file = file2.exists() ? file2 : null;
            }
            if (file != null) {
                if (!loadWithBlockingIO(file)) {
                    clearData();
                    deleteCFiles();
                    return false;
                }
                if (this.writingMode != 0) {
                    return false;
                }
                if (!writeToABFile(this.fastBuffer)) {
                    this.writingMode = 1;
                    return false;
                }
                info("recover from c file");
                try {
                    deleteCFiles();
                    return true;
                } catch (Exception e10) {
                    e = e10;
                    z10 = true;
                    error(e);
                    return z10;
                }
            }
            if (this.writingMode == 0) {
                return false;
            }
            File file3 = new File(this.path, this.name + A_SUFFIX);
            File file4 = new File(this.path, this.name + B_SUFFIX);
            if (!file3.exists() || !file4.exists()) {
                return false;
            }
            tryBlockingIO(file3, file4);
            return false;
        } catch (Exception e11) {
            e = e11;
        }
    }

    private boolean loadWithBlockingIO(File file) throws IOException {
        long length = file.length();
        if (length != 0 && length <= 536870912) {
            int i10 = (int) length;
            int newCapacity = getNewCapacity(PAGE_SIZE, i10);
            z zVar = this.fastBuffer;
            if (zVar == null || zVar.f34999a.length != newCapacity) {
                zVar = new z(new byte[newCapacity]);
                this.fastBuffer = zVar;
            } else {
                zVar.f35000b = 0;
            }
            a1.a(file, zVar.f34999a, i10);
            int iD = zVar.d();
            long jE = zVar.e();
            this.dataEnd = iD + 12;
            if (iD >= 0 && iD <= i10 - 12 && jE == zVar.a(12, iD) && parseData() == 0) {
                this.checksum = jE;
                return true;
            }
        }
        return false;
    }

    private void mergeInvalids() {
        int size = this.invalids.size() - 1;
        d dVar = this.invalids.get(size);
        while (size > 0) {
            int i10 = size - 1;
            d dVar2 = this.invalids.get(i10);
            if (dVar.f34819b == dVar2.f34818a) {
                dVar2.f34818a = dVar.f34818a;
                this.invalids.remove(size);
            }
            dVar = dVar2;
            size = i10;
        }
    }

    private int parseData() {
        z zVar = this.fastBuffer;
        zVar.f35000b = 12;
        while (true) {
            try {
                int i10 = zVar.f35000b;
                int i11 = this.dataEnd;
                if (i10 >= i11) {
                    if (i10 == i11) {
                        return 0;
                    }
                    warning(new Exception(PARSE_DATA_FAILED));
                    return -1;
                }
                byte bA = zVar.a();
                byte b10 = (byte) (bA & Utf8.REPLACEMENT_BYTE);
                boolean z10 = true;
                if (b10 < 1 || b10 > 8) {
                    throw new Exception(PARSE_DATA_FAILED);
                }
                int iA = zVar.a() & 255;
                if (bA < 0) {
                    zVar.f35000b += iA;
                    int iF = b10 <= 5 ? TYPE_SIZE[b10] : zVar.f() & 65535;
                    z zVar2 = this.fastBuffer;
                    int i12 = zVar2.f35000b + iF;
                    zVar2.f35000b = i12;
                    countInvalid(i10, i12);
                } else {
                    String strE = zVar.e(iA);
                    int i13 = zVar.f35000b;
                    if (b10 > 5) {
                        int iF2 = 65535 & zVar.f();
                        if ((bA & 64) == 0) {
                            z10 = false;
                        }
                        checkValueSize(iF2, z10);
                        if (b10 == 6) {
                            this.data.put(strE, new o(i10, i13 + 2, zVar.e(iF2), iF2, z10));
                        } else if (b10 == 7) {
                            this.data.put(strE, new g(i10, i13 + 2, z10 ? zVar.e(iF2) : zVar.b(iF2), iF2, z10));
                        } else if (z10) {
                            this.data.put(strE, new n(i10, i13 + 2, zVar.e(iF2), iF2, true));
                        } else {
                            int iA2 = zVar.a() & 255;
                            String strE2 = zVar.e(iA2);
                            b bVar = this.encoderMap.get(strE2);
                            int i14 = iF2 - (iA2 + 1);
                            if (i14 < 0) {
                                throw new Exception(PARSE_DATA_FAILED);
                            }
                            if (bVar != null) {
                                try {
                                    Object objA = bVar.a(zVar.f34999a, zVar.f35000b, i14);
                                    if (objA != null) {
                                        this.data.put(strE, new n(i10, i13 + 2, objA, iF2, false));
                                    }
                                } catch (Exception e10) {
                                    error(e10);
                                }
                            } else {
                                error("object with tag: " + strE2 + " without encoder");
                            }
                            zVar.f35000b += i14;
                        }
                    } else if (b10 == 1) {
                        this.data.put(strE, new i(i13, zVar.a() == 1));
                    } else if (b10 == 2) {
                        this.data.put(strE, new l(i13, zVar.d()));
                    } else if (b10 == 3) {
                        this.data.put(strE, new k(i13, zVar.c()));
                    } else if (b10 != 4) {
                        this.data.put(strE, new j(i13, zVar.b()));
                    } else {
                        this.data.put(strE, new m(i13, zVar.e()));
                    }
                }
            } catch (Exception e11) {
                warning(e11);
                return -1;
            }
        }
    }

    private void preparePutBytes() {
        ensureSize(this.updateSize);
        int i10 = this.dataEnd;
        this.updateStart = i10;
        this.dataEnd = this.updateSize + i10;
        this.fastBuffer.f35000b = i10;
        this.sizeChanged = true;
    }

    private void putKey(String str, int i10) {
        this.fastBuffer.a((byte) i10);
        if (i10 != str.length()) {
            this.fastBuffer.c(str);
            return;
        }
        z zVar = this.fastBuffer;
        str.getBytes(0, i10, zVar.f34999a, zVar.f35000b);
        this.fastBuffer.f35000b += i10;
    }

    private void putStringValue(String str, int i10) {
        this.fastBuffer.a((short) i10);
        if (i10 != str.length()) {
            this.fastBuffer.c(str);
        } else {
            z zVar = this.fastBuffer;
            str.getBytes(0, i10, zVar.f34999a, zVar.f35000b);
        }
    }

    private void resetBuffer(MappedByteBuffer mappedByteBuffer) throws IOException {
        int iCapacity = mappedByteBuffer.capacity();
        int i10 = PAGE_SIZE;
        if (iCapacity != i10) {
            FileChannel fileChannel = mappedByteBuffer == this.aBuffer ? this.aChannel : this.bChannel;
            long j10 = i10;
            fileChannel.truncate(j10);
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.aBuffer) {
                this.aBuffer = map;
            } else {
                this.bBuffer = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, 0);
        mappedByteBuffer.putLong(4, 0L);
    }

    private void resetData() {
        if (this.writingMode == 0) {
            try {
                resetBuffer(this.aBuffer);
                resetBuffer(this.bBuffer);
            } catch (IOException unused) {
                toBlockingMode();
            }
        }
        clearData();
        a1.a(new File(this.path + this.name));
    }

    private int saveArray(String str, byte[] bArr, byte b10) {
        this.tempExternalName = null;
        if (bArr.length < 2048) {
            return wrapArray(str, bArr, b10);
        }
        info("large value, key: " + str + ", size: " + bArr.length);
        String strB = a1.b();
        if (!a1.a(new File(this.path + this.name, strB), bArr)) {
            error("save large value failed");
            return 0;
        }
        this.tempExternalName = strB;
        byte[] bArr2 = new byte[32];
        strB.getBytes(0, 32, bArr2, 0);
        return wrapArray(str, bArr2, (byte) (b10 | 64));
    }

    private long shiftCheckSum(long j10, int i10) {
        int i11 = (i10 & 7) << 3;
        return (j10 >>> (64 - i11)) | (j10 << i11);
    }

    private void syncABBuffer(MappedByteBuffer mappedByteBuffer) {
        if (this.sizeChanged && mappedByteBuffer != this.aBuffer) {
            mappedByteBuffer.putInt(0, this.dataEnd - 12);
        }
        mappedByteBuffer.putLong(4, this.checksum);
        int i10 = this.removeStart;
        if (i10 != 0) {
            mappedByteBuffer.put(i10, this.fastBuffer.f34999a[i10]);
        }
        if (this.updateSize != 0) {
            mappedByteBuffer.position(this.updateStart);
            mappedByteBuffer.put(this.fastBuffer.f34999a, this.updateStart, this.updateSize);
        }
    }

    private void toBlockingMode() {
        this.writingMode = 1;
        a1.a(this.aChannel);
        a1.a(this.bChannel);
        this.aChannel = null;
        this.bChannel = null;
        this.aBuffer = null;
        this.bBuffer = null;
    }

    private void truncate(int i10) {
        int i11 = PAGE_SIZE;
        int newCapacity = getNewCapacity(i11, i10 + i11);
        byte[] bArr = this.fastBuffer.f34999a;
        if (newCapacity >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[newCapacity];
        System.arraycopy(bArr, 0, bArr2, 0, this.dataEnd);
        this.fastBuffer.f34999a = bArr2;
        if (this.writingMode == 0) {
            try {
                long j10 = newCapacity;
                this.aChannel.truncate(j10);
                FileChannel fileChannel = this.aChannel;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
                this.aBuffer = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.bChannel.truncate(j10);
                MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j10);
                this.bBuffer = map2;
                map2.order(byteOrder);
            } catch (IOException e10) {
                error(new Exception(MAP_FAILED, e10));
                toBlockingMode();
            }
        }
        info(TRUNCATE_FINISH);
    }

    private void tryBlockingIO(File file, File file2) {
        try {
            if (loadWithBlockingIO(file)) {
                return;
            }
        } catch (IOException e10) {
            warning(e10);
        }
        clearData();
        try {
            if (loadWithBlockingIO(file2)) {
                return;
            }
        } catch (IOException e11) {
            warning(e11);
        }
        clearData();
    }

    private void updateBoolean(byte b10, int i10) {
        long jShiftCheckSum = this.checksum ^ shiftCheckSum(1L, i10);
        this.checksum = jShiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, jShiftCheckSum);
            this.aBuffer.put(i10, b10);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.put(i10, b10);
        } else {
            this.fastBuffer.a(4, jShiftCheckSum);
        }
        this.fastBuffer.f34999a[i10] = b10;
    }

    private void updateBytes(int i10, byte[] bArr) {
        int length = bArr.length;
        this.checksum ^= this.fastBuffer.a(i10, length);
        z zVar = this.fastBuffer;
        zVar.f35000b = i10;
        zVar.a(bArr);
        long jA = this.checksum ^ this.fastBuffer.a(i10, length);
        this.checksum = jA;
        if (this.writingMode != 0) {
            this.fastBuffer.a(4, jA);
            return;
        }
        this.aBuffer.putInt(0, -1);
        this.aBuffer.putLong(4, this.checksum);
        this.aBuffer.position(i10);
        this.aBuffer.put(bArr);
        this.aBuffer.putInt(0, this.dataEnd - 12);
        this.bBuffer.putLong(4, this.checksum);
        this.bBuffer.position(i10);
        this.bBuffer.put(bArr);
    }

    private void updateChange() {
        this.checksum ^= this.fastBuffer.a(this.updateStart, this.updateSize);
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            syncABBuffer(this.aBuffer);
            this.aBuffer.putInt(0, this.dataEnd - 12);
            syncABBuffer(this.bBuffer);
        } else {
            if (this.sizeChanged) {
                this.fastBuffer.b(0, this.dataEnd - 12);
            }
            this.fastBuffer.a(4, this.checksum);
        }
        this.sizeChanged = false;
        this.removeStart = 0;
        this.updateSize = 0;
    }

    private void updateInt32(int i10, long j10, int i11) {
        long jShiftCheckSum = shiftCheckSum(j10, i11) ^ this.checksum;
        this.checksum = jShiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, jShiftCheckSum);
            this.aBuffer.putInt(i11, i10);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putInt(i11, i10);
        } else {
            this.fastBuffer.a(4, jShiftCheckSum);
        }
        this.fastBuffer.b(i11, i10);
    }

    private void updateInt64(long j10, long j11, int i10) {
        long jShiftCheckSum = shiftCheckSum(j11, i10) ^ this.checksum;
        this.checksum = jShiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, jShiftCheckSum);
            this.aBuffer.putLong(i10, j10);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putLong(i10, j10);
        } else {
            this.fastBuffer.a(4, jShiftCheckSum);
        }
        this.fastBuffer.a(i10, j10);
    }

    private void updateObject(String str, Object obj, byte[] bArr, p pVar) {
        int iSaveArray = saveArray(str, bArr, pVar.a());
        if (iSaveArray != 0) {
            String str2 = pVar.f34949b ? (String) pVar.f34951d : null;
            remove(pVar.a(), pVar.f34950c, pVar.f34906a + pVar.f34952e);
            String str3 = this.tempExternalName;
            boolean z10 = str3 != null;
            pVar.f34950c = this.updateStart;
            pVar.f34906a = iSaveArray;
            pVar.f34949b = z10;
            if (z10) {
                pVar.f34951d = str3;
                pVar.f34952e = 32;
                this.tempExternalName = null;
            } else {
                pVar.f34951d = obj;
                pVar.f34952e = bArr.length;
            }
            updateChange();
            checkGC();
            if (str2 != null) {
                a1.a(new File(this.path + this.name, str2));
            }
        }
    }

    private void updateOffset(int i10, int[] iArr) {
        for (h hVar : this.data.values()) {
            int i11 = hVar.f34906a;
            if (i11 > i10) {
                int i12 = iArr[(a1.a(iArr, i11) << 1) + 1];
                hVar.f34906a -= i12;
                if (hVar.a() >= 6) {
                    ((p) hVar).f34950c -= i12;
                }
            }
        }
    }

    private void warning(Exception exc) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.a(this.name, exc);
        }
    }

    private int wrapArray(String str, byte[] bArr, byte b10) {
        wrapHeader(str, b10, bArr.length + 2);
        this.fastBuffer.a((short) bArr.length);
        z zVar = this.fastBuffer;
        int i10 = zVar.f35000b;
        zVar.a(bArr);
        return i10;
    }

    private void wrapHeader(String str, byte b10) {
        wrapHeader(str, b10, TYPE_SIZE[b10]);
    }

    private boolean writeToABFile(z zVar) {
        int length = zVar.f34999a.length;
        File file = new File(this.path, this.name + A_SUFFIX);
        File file2 = new File(this.path, this.name + B_SUFFIX);
        try {
            if (!a1.d(file) || !a1.d(file2)) {
                throw new Exception(OPEN_FILE_FAILED);
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
            long j10 = length;
            randomAccessFile.setLength(j10);
            randomAccessFile2.setLength(j10);
            this.aChannel = randomAccessFile.getChannel();
            this.bChannel = randomAccessFile2.getChannel();
            FileChannel fileChannel = this.aChannel;
            FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
            MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
            this.aBuffer = map;
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            map.order(byteOrder);
            MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j10);
            this.bBuffer = map2;
            map2.order(byteOrder);
            this.aBuffer.put(zVar.f34999a, 0, this.dataEnd);
            this.bBuffer.put(zVar.f34999a, 0, this.dataEnd);
            return true;
        } catch (Exception e10) {
            error(e10);
            return false;
        }
    }

    public synchronized boolean writeToCFile() {
        try {
            try {
                File file = new File(this.path, this.name + TEMP_SUFFIX);
                if (a1.d(file)) {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.setLength(this.dataEnd);
                    randomAccessFile.write(this.fastBuffer.f34999a, 0, this.dataEnd);
                    randomAccessFile.close();
                    File file2 = new File(this.path, this.name + C_SUFFIX);
                    if (!file2.exists() || file2.delete()) {
                        if (file.renameTo(file2)) {
                            return true;
                        }
                        warning(new Exception("rename failed"));
                    }
                }
            } catch (Exception e10) {
                error(e10);
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void clear() {
        resetData();
        if (this.writingMode != 0) {
            deleteCFiles();
        }
    }

    public synchronized boolean commit() {
        this.autoCommit = true;
        return commitToCFile();
    }

    public synchronized boolean contains(String str) {
        return this.data.containsKey(str);
    }

    public synchronized void disableAutoCommit() {
        this.autoCommit = false;
    }

    public synchronized void force() {
        if (this.writingMode == 0) {
            this.aBuffer.force();
            this.bBuffer.force();
        }
    }

    void gc(int i10) {
        Collections.sort(this.invalids);
        mergeInvalids();
        d dVar = this.invalids.get(0);
        int i11 = dVar.f34819b;
        int i12 = this.dataEnd;
        int i13 = i12 - this.invalidBytes;
        int i14 = i13 - 12;
        int i15 = i13 - i11;
        int i16 = i12 - i11;
        boolean z10 = i14 < i16 + i15;
        if (!z10) {
            this.checksum ^= this.fastBuffer.a(i11, i16);
        }
        int size = this.invalids.size();
        int i17 = size - 1;
        int i18 = this.dataEnd - this.invalids.get(i17).f34818a;
        int[] iArr = new int[(i18 > 0 ? size : i17) << 1];
        int i19 = dVar.f34819b;
        int i20 = dVar.f34818a;
        for (int i21 = 1; i21 < size; i21++) {
            d dVar2 = this.invalids.get(i21);
            int i22 = dVar2.f34819b - i20;
            byte[] bArr = this.fastBuffer.f34999a;
            System.arraycopy(bArr, i20, bArr, i19, i22);
            int i23 = (i21 - 1) << 1;
            iArr[i23] = i20;
            iArr[i23 + 1] = i20 - i19;
            i19 += i22;
            i20 = dVar2.f34818a;
        }
        if (i18 > 0) {
            byte[] bArr2 = this.fastBuffer.f34999a;
            System.arraycopy(bArr2, i20, bArr2, i19, i18);
            int i24 = i17 << 1;
            iArr[i24] = i20;
            iArr[i24 + 1] = i20 - i19;
        }
        clearInvalid();
        if (z10) {
            this.checksum = this.fastBuffer.a(12, i14);
        } else {
            this.checksum ^= this.fastBuffer.a(i11, i15);
        }
        this.dataEnd = i13;
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            this.aBuffer.putLong(4, this.checksum);
            this.aBuffer.position(i11);
            this.aBuffer.put(this.fastBuffer.f34999a, i11, i15);
            this.aBuffer.putInt(0, i14);
            this.bBuffer.putInt(0, i14);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.position(i11);
            this.bBuffer.put(this.fastBuffer.f34999a, i11, i15);
        } else {
            this.fastBuffer.b(0, i14);
            this.fastBuffer.a(4, this.checksum);
        }
        updateOffset(i11, iArr);
        int i25 = i13 + i10;
        if (this.fastBuffer.f34999a.length - i25 > TRUNCATE_THRESHOLD) {
            truncate(i25);
        }
        info(GC_FINISH);
    }

    public synchronized Map<String, Object> getAll() {
        Object objValueOf;
        int size = this.data.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap map = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, h> entry : this.data.entrySet()) {
            String key = entry.getKey();
            h value = entry.getValue();
            switch (value.a()) {
                case 1:
                    objValueOf = Boolean.valueOf(((i) value).f34909b);
                    break;
                case 2:
                    objValueOf = Integer.valueOf(((l) value).f34936b);
                    break;
                case 3:
                    objValueOf = Float.valueOf(((k) value).f34915b);
                    break;
                case 4:
                    objValueOf = Long.valueOf(((m) value).f34940b);
                    break;
                case 5:
                    objValueOf = Double.valueOf(((j) value).f34914b);
                    break;
                case 6:
                    o oVar = (o) value;
                    objValueOf = oVar.f34949b ? getStringFromFile(oVar) : oVar.f34951d;
                    break;
                case 7:
                    g gVar = (g) value;
                    objValueOf = gVar.f34949b ? getArrayFromFile(gVar) : gVar.f34951d;
                    break;
                case 8:
                    n nVar = (n) value;
                    objValueOf = nVar.f34949b ? getObjectFromFile(nVar) : nVar.f34951d;
                    break;
                default:
                    objValueOf = null;
                    break;
            }
            map.put(key, objValueOf);
        }
        return map;
    }

    public byte[] getArray(String str) {
        return getArray(str, EMPTY_ARRAY);
    }

    public synchronized boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public synchronized long getLong(String str) {
        m mVar;
        mVar = (m) this.data.get(str);
        return mVar == null ? 0L : mVar.f34940b;
    }

    public synchronized <T> T getObject(String str) {
        try {
            n nVar = (n) this.data.get(str);
            if (nVar != null) {
                return nVar.f34949b ? (T) getObjectFromFile(nVar) : (T) nVar.f34951d;
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public synchronized Set<String> getStringSet(String str) {
        return (Set) getObject(str);
    }

    public void putAll(Map<String, Object> map) {
        putAll(map, null);
    }

    public synchronized void putArray(String str, byte[] bArr) {
        try {
            checkKey(str);
            if (bArr == null) {
                remove(str);
            } else {
                addOrUpdate(str, bArr, bArr, (g) this.data.get(str), (byte) 7);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putBoolean(String str, boolean z10) {
        try {
            checkKey(str);
            i iVar = (i) this.data.get(str);
            if (iVar == null) {
                wrapHeader(str, (byte) 1);
                z zVar = this.fastBuffer;
                int i10 = zVar.f35000b;
                zVar.a(z10 ? (byte) 1 : (byte) 0);
                updateChange();
                this.data.put(str, new i(i10, z10));
                checkIfCommit();
            } else if (iVar.f34909b != z10) {
                iVar.f34909b = z10;
                updateBoolean(z10 ? (byte) 1 : (byte) 0, iVar.f34906a);
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putDouble(String str, double d10) {
        try {
            checkKey(str);
            j jVar = (j) this.data.get(str);
            if (jVar == null) {
                wrapHeader(str, (byte) 5);
                z zVar = this.fastBuffer;
                int i10 = zVar.f35000b;
                zVar.a(Double.doubleToRawLongBits(d10));
                updateChange();
                this.data.put(str, new j(i10, d10));
                checkIfCommit();
            } else if (jVar.f34914b != d10) {
                long jDoubleToRawLongBits = Double.doubleToRawLongBits(d10);
                long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(jVar.f34914b) ^ jDoubleToRawLongBits;
                jVar.f34914b = d10;
                updateInt64(jDoubleToRawLongBits, jDoubleToRawLongBits2, jVar.f34906a);
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putFloat(String str, float f10) {
        try {
            checkKey(str);
            k kVar = (k) this.data.get(str);
            if (kVar == null) {
                wrapHeader(str, (byte) 3);
                z zVar = this.fastBuffer;
                int i10 = zVar.f35000b;
                zVar.g(Float.floatToRawIntBits(f10));
                updateChange();
                this.data.put(str, new k(i10, f10));
                checkIfCommit();
            } else if (kVar.f34915b != f10) {
                int iFloatToRawIntBits = Float.floatToRawIntBits(f10);
                long jFloatToRawIntBits = ((long) (Float.floatToRawIntBits(kVar.f34915b) ^ iFloatToRawIntBits)) & 4294967295L;
                kVar.f34915b = f10;
                updateInt32(iFloatToRawIntBits, jFloatToRawIntBits, kVar.f34906a);
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putInt(String str, int i10) {
        try {
            checkKey(str);
            l lVar = (l) this.data.get(str);
            if (lVar == null) {
                wrapHeader(str, (byte) 2);
                z zVar = this.fastBuffer;
                int i11 = zVar.f35000b;
                zVar.g(i10);
                updateChange();
                this.data.put(str, new l(i11, i10));
                checkIfCommit();
            } else {
                int i12 = lVar.f34936b;
                if (i12 != i10) {
                    lVar.f34936b = i10;
                    updateInt32(i10, ((long) (i12 ^ i10)) & 4294967295L, lVar.f34906a);
                    checkIfCommit();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putLong(String str, long j10) {
        try {
            checkKey(str);
            m mVar = (m) this.data.get(str);
            if (mVar == null) {
                wrapHeader(str, (byte) 4);
                z zVar = this.fastBuffer;
                int i10 = zVar.f35000b;
                zVar.a(j10);
                updateChange();
                this.data.put(str, new m(i10, j10));
                checkIfCommit();
            } else {
                long j11 = mVar.f34940b;
                if (j11 != j10) {
                    mVar.f34940b = j10;
                    updateInt64(j10, j10 ^ j11, mVar.f34906a);
                    checkIfCommit();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized <T> void putObject(String str, T t10, b<T> bVar) {
        byte[] bArrA;
        checkKey(str);
        if (bVar == null) {
            throw new IllegalArgumentException("Encoder is null");
        }
        String strA = bVar.a();
        if (strA == null || strA.isEmpty() || strA.length() > 50) {
            throw new IllegalArgumentException("Invalid encoder tag:" + strA);
        }
        if (!this.encoderMap.containsKey(strA)) {
            throw new IllegalArgumentException("Encoder hasn't been registered");
        }
        if (t10 == null) {
            remove(str);
            return;
        }
        try {
            bArrA = bVar.a(t10);
        } catch (Exception e10) {
            error(e10);
            bArrA = null;
        }
        if (bArrA == null) {
            remove(str);
            return;
        }
        int iB = z.b(strA);
        z zVar = new z(iB + 1 + bArrA.length);
        zVar.a((byte) iB);
        zVar.c(strA);
        zVar.a(bArrA);
        addOrUpdate(str, t10, zVar.f34999a, (n) this.data.get(str), (byte) 8);
    }

    public synchronized void putString(String str, String str2) {
        try {
            checkKey(str);
            if (str2 == null) {
                remove(str);
            } else {
                o oVar = (o) this.data.get(str);
                if (str2.length() * 3 < 2048) {
                    fastPutString(str, str2, oVar);
                } else {
                    addOrUpdate(str, str2, str2.isEmpty() ? EMPTY_ARRAY : str2.getBytes(StandardCharsets.UTF_8), oVar, (byte) 6);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putStringSet(String str, Set<String> set) {
        try {
            if (set == null) {
                remove(str);
            } else {
                putObject(str, set, x0.f34998a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void remove(String str) {
        try {
            h hVar = this.data.get(str);
            if (hVar != null) {
                this.data.remove(str);
                byte bA = hVar.a();
                String str2 = null;
                if (bA <= 5) {
                    int iB = z.b(str);
                    int i10 = hVar.f34906a;
                    remove(bA, i10 - (iB + 2), i10 + TYPE_SIZE[bA]);
                } else {
                    p pVar = (p) hVar;
                    remove(bA, pVar.f34950c, pVar.f34906a + pVar.f34952e);
                    if (pVar.f34949b) {
                        str2 = (String) pVar.f34951d;
                    }
                }
                byte b10 = (byte) (bA | (-128));
                if (this.writingMode == 0) {
                    this.aBuffer.putLong(4, this.checksum);
                    this.aBuffer.put(this.removeStart, b10);
                    this.bBuffer.putLong(4, this.checksum);
                    this.bBuffer.put(this.removeStart, b10);
                } else {
                    this.fastBuffer.a(4, this.checksum);
                }
                this.removeStart = 0;
                if (str2 != null) {
                    a1.a(new File(this.path + this.name, str2));
                }
                checkGC();
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized String toString() {
        return "FastKV: path:" + this.path + " name:" + this.name;
    }

    private void wrapHeader(String str, byte b10, int i10) {
        int iB = z.b(str);
        checkKeySize(iB);
        this.updateSize = iB + 2 + i10;
        preparePutBytes();
        this.fastBuffer.a(b10);
        putKey(str, iB);
    }

    public synchronized byte[] getArray(String str, byte[] bArr) {
        try {
            g gVar = (g) this.data.get(str);
            if (gVar != null) {
                return gVar.f34949b ? getArrayFromFile(gVar) : (byte[]) gVar.f34951d;
            }
            return bArr;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean getBoolean(String str, boolean z10) {
        i iVar = (i) this.data.get(str);
        if (iVar != null) {
            z10 = iVar.f34909b;
        }
        return z10;
    }

    public synchronized double getDouble(String str, double d10) {
        j jVar = (j) this.data.get(str);
        if (jVar != null) {
            d10 = jVar.f34914b;
        }
        return d10;
    }

    public synchronized float getFloat(String str, float f10) {
        k kVar = (k) this.data.get(str);
        if (kVar != null) {
            f10 = kVar.f34915b;
        }
        return f10;
    }

    public synchronized int getInt(String str, int i10) {
        l lVar = (l) this.data.get(str);
        if (lVar != null) {
            i10 = lVar.f34936b;
        }
        return i10;
    }

    public synchronized String getString(String str, String str2) {
        try {
            o oVar = (o) this.data.get(str);
            if (oVar != null) {
                return oVar.f34949b ? getStringFromFile(oVar) : (String) oVar.f34951d;
            }
            return str2;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putAll(Map<String, Object> map, Map<Class, b> map2) {
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && !key.isEmpty()) {
                    if (value instanceof String) {
                        putString(key, (String) value);
                    } else if (value instanceof Boolean) {
                        putBoolean(key, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        putInt(key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        putLong(key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        putFloat(key, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        putDouble(key, ((Double) value).doubleValue());
                    } else if (value instanceof Set) {
                        Set<String> set = (Set) value;
                        if (!set.isEmpty() && (set.iterator().next() instanceof String)) {
                            putStringSet(key, set);
                        }
                    } else if (value instanceof byte[]) {
                        putArray(key, (byte[]) value);
                    } else if (map2 != null) {
                        b bVar = map2.get(value.getClass());
                        if (bVar != null) {
                            putObject(key, value, bVar);
                        } else {
                            warning(new Exception("missing encoder for type:" + value.getClass()));
                        }
                    } else {
                        warning(new Exception("missing encoders"));
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void error(String str) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.b(this.name, new Exception(str));
        }
    }

    public synchronized long getLong(String str, long j10) {
        m mVar = (m) this.data.get(str);
        if (mVar != null) {
            j10 = mVar.f34940b;
        }
        return j10;
    }

    private void remove(byte b10, int i10, int i11) {
        countInvalid(i10, i11);
        byte b11 = (byte) (b10 | (-128));
        byte[] bArr = this.fastBuffer.f34999a;
        this.checksum = ((((long) (bArr[i10] ^ b11)) & 255) << ((i10 & 7) << 3)) ^ this.checksum;
        bArr[i10] = b11;
        this.removeStart = i10;
    }
}
