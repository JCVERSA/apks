package com.transsion.audiotagger.audio.generic;

import androidx.media3.muxer.MuxerUtil;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.utils.FileTypeUtil;
import java.io.DataInput;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Utils {
    public static int BITS_IN_BYTE_MULTIPLIER = 8;
    public static int KILOBYTE_MULTIPLIER = 1000;
    private static final int MAX_BASE_TEMP_FILENAME_LENGTH = 20;
    private static final Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.generic.utils");

    public static boolean copy(File file, File file2) throws Throwable {
        try {
            copyThrowsOnException(file, file2);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void copyThrowsOnException(File file, File file2) throws Throwable {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    FileChannel channel = fileInputStream2.getChannel();
                    FileChannel channel2 = fileOutputStream.getChannel();
                    long size = channel.size();
                    for (long jTransferTo = 0; jTransferTo < size; jTransferTo += channel.transferTo(jTransferTo, 1048576L, channel2)) {
                    }
                    AudioFileIO.closeQuietly(fileInputStream2, fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    AudioFileIO.closeQuietly(fileInputStream, fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static String getBaseFilenameForTempFile(File file) {
        String minBaseFilenameAllowedForTempFile = getMinBaseFilenameAllowedForTempFile(file);
        return minBaseFilenameAllowedForTempFile.length() <= 20 ? minBaseFilenameAllowedForTempFile : minBaseFilenameAllowedForTempFile.substring(0, 20);
    }

    public static String getExtension(File file) {
        String lowerCase = file.getName().toLowerCase();
        int iLastIndexOf = lowerCase.lastIndexOf(Consts.DOT);
        return iLastIndexOf == -1 ? "" : lowerCase.substring(iLastIndexOf + 1);
    }

    public static int getIntBE(ByteBuffer byteBuffer, int i, int i2) {
        return (int) getLongBE(byteBuffer, i, i2);
    }

    public static int getIntLE(byte[] bArr) {
        return (int) getLongLE(ByteBuffer.wrap(bArr), 0, bArr.length - 1);
    }

    public static long getLongBE(ByteBuffer byteBuffer, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < (i2 - i) + 1; i3++) {
            j += ((long) (byteBuffer.get(i2 - i3) & 255)) << (i3 * 8);
        }
        return j;
    }

    public static long getLongLE(ByteBuffer byteBuffer, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < (i2 - i) + 1; i3++) {
            j += (long) ((byteBuffer.get(i + i3) & 255) << (i3 * 8));
        }
        return j;
    }

    public static String getMagicExtension(File file) throws IOException {
        return FileTypeUtil.getMagicExt(FileTypeUtil.getMagicFileType(file));
    }

    public static String getMinBaseFilenameAllowedForTempFile(File file) {
        String baseFilename = AudioFile.getBaseFilename(file);
        if (baseFilename.length() >= 3) {
            return baseFilename;
        }
        if (baseFilename.length() == 1) {
            return baseFilename + "000";
        }
        if (baseFilename.length() == 1) {
            return baseFilename + "00";
        }
        if (baseFilename.length() != 2) {
            return baseFilename;
        }
        return baseFilename + "0";
    }

    public static short getShortBE(ByteBuffer byteBuffer, int i, int i2) {
        return (short) getIntBE(byteBuffer, i, i2);
    }

    public static byte[] getSizeBEInt16(short s) {
        return new byte[]{(byte) ((s >> 8) & 255), (byte) (s & 255)};
    }

    public static byte[] getSizeBEInt32(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static byte[] getSizeLEInt32(int i) {
        return new byte[]{(byte) (i & 255), (byte) (((long) (i >>> 8)) & 255), (byte) (((long) (i >>> 16)) & 255), (byte) (255 & ((long) (i >>> 24)))};
    }

    public static String getString(ByteBuffer byteBuffer, int i, int i2, Charset charset) {
        byte[] bArr = new byte[i2];
        byteBuffer.position(byteBuffer.position() + i);
        byteBuffer.get(bArr);
        return new String(bArr, 0, i2, charset);
    }

    public static boolean isOddLength(long j) {
        return (j & 1) != 0;
    }

    public static ByteBuffer readFileDataIntoBufferBE(FileChannel fileChannel, int i) throws IOException {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i);
        fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.position(0);
        byteBufferAllocateDirect.order(ByteOrder.BIG_ENDIAN);
        return byteBufferAllocateDirect;
    }

    public static ByteBuffer readFileDataIntoBufferLE(FileChannel fileChannel, int i) throws IOException {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i);
        fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.position(0);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferAllocateDirect;
    }

    public static String readFourBytesAsChars(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return new String(bArr, StandardCharsets.ISO_8859_1);
    }

    public static String readPascalString(ByteBuffer byteBuffer) throws IOException {
        int iU = u(byteBuffer.get());
        byte[] bArr = new byte[iU];
        byteBuffer.get(bArr);
        return new String(bArr, 0, iU, StandardCharsets.ISO_8859_1);
    }

    public static String readString(DataInput dataInput, int i) throws IOException {
        byte[] bArr = new byte[i];
        dataInput.readFully(bArr);
        return new String(bArr, StandardCharsets.US_ASCII);
    }

    public static String readThreeBytesAsChars(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[3];
        byteBuffer.get(bArr);
        return new String(bArr, StandardCharsets.ISO_8859_1);
    }

    public static int readUint16(DataInput dataInput) throws IOException {
        byte[] bArr = {0, 0, 0, 0};
        dataInput.readFully(bArr, 2, 2);
        return ByteBuffer.wrap(bArr).getInt();
    }

    public static long readUint32(DataInput dataInput) throws IOException {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        dataInput.readFully(bArr, 4, 4);
        return ByteBuffer.wrap(bArr).getLong();
    }

    public static boolean rename(File file, File file2) {
        Logger logger2 = logger;
        logger2.log(Level.CONFIG, "Renaming From:" + file.getAbsolutePath() + " to " + file2.getAbsolutePath());
        if (file2.exists()) {
            logger2.log(Level.SEVERE, "Destination File:" + file2 + " already exists");
            return false;
        }
        if (file.renameTo(file2)) {
            return true;
        }
        if (!copy(file, file2)) {
            return false;
        }
        if (file.delete()) {
            return true;
        }
        logger2.log(Level.SEVERE, "Unable to delete File:" + file);
        file2.delete();
        return false;
    }

    public static int u(byte b) {
        return b & 255;
    }

    public static int getIntLE(byte[] bArr, int i, int i2) {
        return (int) getLongLE(ByteBuffer.wrap(bArr), i, i2);
    }

    public static int u(short s) {
        return s & 65535;
    }

    public static long u(int i) {
        return ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }

    public static String getString(ByteBuffer byteBuffer, Charset charset) {
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.get(bArr);
        return new String(bArr, 0, iRemaining, charset);
    }
}
