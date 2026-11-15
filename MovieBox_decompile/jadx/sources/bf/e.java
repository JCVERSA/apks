package bf;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.meituan.android.walle.SignatureNotFoundException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Map;

public abstract class e {
    public static byte[] a(File file, int i10) {
        ByteBuffer byteBuffer;
        Map mapB = b(file);
        if (mapB == null || (byteBuffer = (ByteBuffer) mapB.get(Integer.valueOf(i10))) == null) {
            return null;
        }
        return c(byteBuffer);
    }

    private static Map b(File file) {
        FileChannel channel;
        RandomAccessFile randomAccessFile;
        Map mapF = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
                try {
                    channel = randomAccessFile.getChannel();
                    try {
                        mapF = a.f((ByteBuffer) a.b(channel).a());
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (IOException unused2) {
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (randomAccessFile != null) {
                        }
                        return mapF;
                    } catch (Throwable th2) {
                        th = th2;
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (randomAccessFile == null) {
                            throw th;
                        }
                        try {
                            randomAccessFile.close();
                            throw th;
                        } catch (IOException unused5) {
                            throw th;
                        }
                    }
                } catch (IOException unused6) {
                    channel = null;
                } catch (Throwable th3) {
                    th = th3;
                    channel = null;
                }
            } catch (SignatureNotFoundException | IOException unused7) {
            }
        } catch (IOException unused8) {
            channel = null;
            randomAccessFile = null;
        } catch (Throwable th4) {
            th = th4;
            channel = null;
            randomAccessFile = null;
        }
        randomAccessFile.close();
        return mapF;
    }

    private static byte[] c(ByteBuffer byteBuffer) {
        byte[] bArrArray = byteBuffer.array();
        int iArrayOffset = byteBuffer.arrayOffset();
        return Arrays.copyOfRange(bArrArray, byteBuffer.position() + iArrayOffset, iArrayOffset + byteBuffer.limit());
    }

    public static String d(File file, int i10) {
        byte[] bArrA = a(file, i10);
        if (bArrA == null) {
            return null;
        }
        try {
            return new String(bArrA, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
