package defpackage;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.transsion.athena.config.data.model.anehat;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.List;
import org.json.JSONObject;

public class z3d {
    public static ByteBuffer b;
    public File a;

    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae A[Catch: IOException -> 0x00aa, TRY_LEAVE, TryCatch #1 {IOException -> 0x00aa, blocks: (B:39:0x00a6, B:43:0x00ae), top: B:84:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00d7 A[Catch: IOException -> 0x00d3, TRY_LEAVE, TryCatch #6 {IOException -> 0x00d3, blocks: (B:55:0x00cf, B:59:0x00d7), top: B:90:0x00cf }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00e4 A[Catch: IOException -> 0x00bf, TRY_ENTER, TRY_LEAVE, TryCatch #9 {IOException -> 0x00bf, blocks: (B:47:0x00bb, B:63:0x00e4), top: B:95:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00fe A[Catch: IOException -> 0x00fa, TRY_LEAVE, TryCatch #0 {IOException -> 0x00fa, blocks: (B:69:0x00f6, B:73:0x00fe), top: B:82:0x00f6 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public z3d(String str) throws Throwable {
        FileChannel fileChannel;
        RandomAccessFile randomAccessFile;
        Exception e;
        FileChannel channel;
        RandomAccessFile randomAccessFile2;
        Throwable th;
        FileLock fileLock;
        File file = new File(str);
        this.a = file;
        if (!file.exists()) {
            try {
                if (this.a.createNewFile()) {
                    c4d.f("EncryptFile created");
                }
            } catch (Exception e2) {
                c4d.d(Log.getStackTraceString(e2));
            }
        }
        if (b == null) {
            b = ByteBuffer.allocate(32808);
        }
        FileLock fileLock2 = null;
        fileLock2 = null;
        fileLockLock = null;
        FileChannel fileChannel2 = null;
        fileLock2 = null;
        FileLock fileLockLock = null;
        fileLock2 = null;
        try {
            try {
                if (this.a.length() < 8192) {
                    randomAccessFile2 = new RandomAccessFile(this.a, "rw");
                    try {
                        channel = randomAccessFile2.getChannel();
                        try {
                            try {
                                fileLockLock = channel.lock();
                                b.putInt(0, 0);
                                b.putInt(4, ((Integer) e5d.o().u().first).intValue());
                                for (int i = 0; i < 8192; i += 4) {
                                    b.putInt((i + 10) * 4, i);
                                }
                                randomAccessFile2.seek(0L);
                                randomAccessFile2.write(b.array());
                            } catch (Exception e3) {
                                e = e3;
                                FileLock fileLock3 = fileLockLock;
                                fileChannel2 = channel;
                                fileLock = fileLock3;
                                FileChannel fileChannel3 = fileChannel2;
                                fileLock2 = fileLock;
                                channel = fileChannel3;
                                c4d.d(Log.getStackTraceString(e));
                                if (fileLock2 != null) {
                                    try {
                                        fileLock2.release();
                                        if (channel != null) {
                                            channel.close();
                                        }
                                    } catch (IOException e4) {
                                        c4d.d(Log.getStackTraceString(e4));
                                        if (randomAccessFile2 == null) {
                                            randomAccessFile2.close();
                                        }
                                        return;
                                    }
                                } else if (channel != null) {
                                    channel.close();
                                }
                                if (randomAccessFile2 == null) {
                                    return;
                                } else {
                                    randomAccessFile2.close();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            RandomAccessFile randomAccessFile3 = randomAccessFile2;
                            fileChannel = channel;
                            th = th;
                            randomAccessFile = randomAccessFile3;
                            if (fileLock2 != null) {
                                try {
                                    fileLock2.release();
                                    if (fileChannel != null) {
                                        fileChannel.close();
                                    }
                                } catch (IOException e5) {
                                    c4d.d(Log.getStackTraceString(e5));
                                    if (randomAccessFile != null) {
                                        throw th;
                                    }
                                    try {
                                        randomAccessFile.close();
                                        throw th;
                                    } catch (IOException e6) {
                                        c4d.d(Log.getStackTraceString(e6));
                                        throw th;
                                    }
                                }
                            } else if (fileChannel != null) {
                                fileChannel.close();
                            }
                            if (randomAccessFile != null) {
                                throw th;
                            }
                            randomAccessFile.close();
                            throw th;
                        }
                    } catch (Exception e7) {
                        e = e7;
                        fileLock = null;
                    } catch (Throwable th3) {
                        th = th3;
                        channel = null;
                        RandomAccessFile randomAccessFile4 = randomAccessFile2;
                        fileChannel = channel;
                        th = th;
                        randomAccessFile = randomAccessFile4;
                        if (fileLock2 != null) {
                            fileLock2.release();
                            if (fileChannel != null) {
                                fileChannel.close();
                            }
                        } else if (fileChannel != null) {
                            fileChannel.close();
                        }
                        if (randomAccessFile != null) {
                            throw th;
                        }
                        randomAccessFile.close();
                        throw th;
                    }
                } else {
                    channel = null;
                    randomAccessFile2 = null;
                }
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                        if (channel != null) {
                            channel.close();
                        }
                    } catch (IOException e8) {
                        c4d.d(Log.getStackTraceString(e8));
                    }
                } else if (channel != null) {
                    channel.close();
                }
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
            } catch (IOException e9) {
                c4d.d(Log.getStackTraceString(e9));
            }
        } catch (Exception e10) {
            e = e10;
            channel = null;
            randomAccessFile2 = null;
        } catch (Throwable th4) {
            th = th4;
            fileChannel = null;
            randomAccessFile = null;
            if (fileLock2 != null) {
                fileLock2.release();
                if (fileChannel != null) {
                    fileChannel.close();
                }
            } else if (fileChannel != null) {
                fileChannel.close();
            }
            if (randomAccessFile != null) {
                throw th;
            }
            randomAccessFile.close();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0115 A[Catch: IOException -> 0x0111, TRY_LEAVE, TryCatch #3 {IOException -> 0x0111, blocks: (B:64:0x010d, B:68:0x0115), top: B:94:0x010d }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0122 A[Catch: IOException -> 0x00e1, TRY_ENTER, TRY_LEAVE, TryCatch #10 {IOException -> 0x00e1, blocks: (B:44:0x00dd, B:72:0x0122), top: B:105:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:82:0x013d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x013f A[Catch: IOException -> 0x013b, TRY_LEAVE, TryCatch #13 {IOException -> 0x013b, blocks: (B:79:0x0137, B:83:0x013f), top: B:108:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public String a() throws Throwable {
        FileChannel fileChannel;
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        FileChannel channel;
        FileLock fileLock2;
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        List listP = e5d.o().p();
        if (anehat.a(listP)) {
            c4d.b("readBuffer passwords is empty");
            return "";
        }
        RandomAccessFile randomAccessFile2 = null;
        fileLockLock = null;
        FileLock fileLockLock = null;
        fileChannel = null;
        FileChannel fileChannel2 = null;
        FileChannel fileChannel3 = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(this.a, "rw");
                try {
                    channel = randomAccessFile.getChannel();
                    try {
                        try {
                            fileLockLock = channel.lock();
                            randomAccessFile.seek(0L);
                            randomAccessFile.read(b.array(), 0, 32808);
                            byte[] bArr2 = (byte[]) listP.get(b.getInt(4));
                            if (bArr2 != null) {
                                h5d h5dVar = new h5d(bArr2);
                                boolean z = true;
                                for (int i = 0; i < b.getInt(0); i++) {
                                    if (i == 0) {
                                        int i2 = b.getInt((i + 10) * 4);
                                        bArr = new byte[i2];
                                        randomAccessFile.read(bArr, 0, i2);
                                    } else {
                                        int i3 = b.getInt((i + 10) * 4) - b.getInt((i + 9) * 4);
                                        bArr = new byte[i3];
                                        randomAccessFile.read(bArr, 0, i3);
                                    }
                                    String str = new String(h5dVar.b(bArr));
                                    try {
                                        try {
                                            JSONObject jSONObject = new JSONObject(str);
                                            if (jSONObject.has("tid") && jSONObject.has(NotificationCompat.CATEGORY_EVENT)) {
                                                if (!z) {
                                                    sb.append("\n");
                                                }
                                                sb.append(str);
                                                z = false;
                                            }
                                        } catch (Exception e) {
                                            c4d.d(Log.getStackTraceString(e));
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        if (fileLockLock != null) {
                                            try {
                                                fileLockLock.release();
                                                if (channel != null) {
                                                    channel.close();
                                                }
                                            } catch (IOException e2) {
                                                c4d.d(Log.getStackTraceString(e2));
                                                if (randomAccessFile == null) {
                                                    throw th;
                                                }
                                                try {
                                                    randomAccessFile.close();
                                                    throw th;
                                                } catch (IOException e3) {
                                                    c4d.d(Log.getStackTraceString(e3));
                                                    throw th;
                                                }
                                            }
                                        } else if (channel != null) {
                                            channel.close();
                                        }
                                        if (randomAccessFile == null) {
                                            throw th;
                                        }
                                        randomAccessFile.close();
                                        throw th;
                                    }
                                }
                            }
                            if (fileLockLock != null) {
                                try {
                                    fileLockLock.release();
                                } catch (IOException e4) {
                                    c4d.d(Log.getStackTraceString(e4));
                                }
                            }
                            channel.close();
                            randomAccessFile.close();
                        } catch (Exception e5) {
                            e = e5;
                            fileLock = fileLockLock;
                            fileChannel3 = channel;
                            try {
                                c4d.d(Log.getStackTraceString(e));
                                if (this.a.delete()) {
                                    c4d.f("file deleted");
                                }
                                if (fileLock != null) {
                                    try {
                                        fileLock.release();
                                        if (fileChannel3 != null) {
                                            fileChannel3.close();
                                        }
                                    } catch (IOException e6) {
                                        c4d.d(Log.getStackTraceString(e6));
                                        if (randomAccessFile != null) {
                                            randomAccessFile.close();
                                        }
                                        return sb.toString();
                                    }
                                } else if (fileChannel3 != null) {
                                    fileChannel3.close();
                                }
                                if (randomAccessFile != null) {
                                    randomAccessFile.close();
                                }
                                return sb.toString();
                            } catch (Throwable th2) {
                                th = th2;
                                fileChannel = fileChannel3;
                                randomAccessFile2 = randomAccessFile;
                                randomAccessFile = randomAccessFile2;
                                fileLockLock = fileLock;
                                channel = fileChannel;
                                if (fileLockLock != null) {
                                    fileLockLock.release();
                                    if (channel != null) {
                                        channel.close();
                                    }
                                } else if (channel != null) {
                                    channel.close();
                                }
                                if (randomAccessFile == null) {
                                    throw th;
                                }
                                randomAccessFile.close();
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileLock2 = fileLockLock;
                        fileChannel2 = channel;
                        channel = fileChannel2;
                        fileLockLock = fileLock2;
                        if (fileLockLock != null) {
                            fileLockLock.release();
                            if (channel != null) {
                                channel.close();
                            }
                        } else if (channel != null) {
                            channel.close();
                        }
                        if (randomAccessFile == null) {
                            throw th;
                        }
                        randomAccessFile.close();
                        throw th;
                    }
                } catch (Exception e7) {
                    e = e7;
                    fileLock = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileLock2 = null;
                }
            } catch (IOException e8) {
                c4d.d(Log.getStackTraceString(e8));
            }
        } catch (Exception e9) {
            e = e9;
            randomAccessFile = null;
            fileLock = null;
        } catch (Throwable th5) {
            th = th5;
            fileChannel = null;
            fileLock = null;
            randomAccessFile = randomAccessFile2;
            fileLockLock = fileLock;
            channel = fileChannel;
            if (fileLockLock != null) {
                fileLockLock.release();
                if (channel != null) {
                    channel.close();
                }
            } else if (channel != null) {
                channel.close();
            }
            if (randomAccessFile == null) {
                throw th;
            }
            randomAccessFile.close();
            throw th;
        }
        return sb.toString();
    }
}
