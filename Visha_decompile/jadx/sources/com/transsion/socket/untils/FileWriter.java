package com.transsion.socket.untils;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.socket.SocketMain;
import defpackage.y45;
import java.io.DataInputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J8\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\tJ \u0010\u0012\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\tH\u0002¨\u0006\u0015"}, d2 = {"Lcom/transsion/socket/untils/FileWriter;", "", MethodDecl.initName, "()V", "getFileChannel", "Ljava/nio/channels/FileChannel;", "path", "", "write", "", "dis", "Ljava/io/DataInputStream;", Progress.FILE_PATH, "tmpPath", "position", "", PlayAudioData.TAG_SIZE, "overlay", "renameFile", "targetFile", "Companion", "socket_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileWriter {
    private static final String TAG = "FileWriter";
    private static final byte[] dataCache = new byte[SocketMain.PACKAGE_MAX_BLOCK_SIZE];

    private final FileChannel getFileChannel(String path) {
        try {
            File file = new File(path);
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            if (file.canRead() && file.canWrite()) {
                return randomAccessFile.getChannel();
            }
            return null;
        } catch (Exception e) {
            Log.d(TAG, "getFileChannel Exception: " + e.getMessage());
            return null;
        }
    }

    private final boolean renameFile(String filePath, String targetFile, boolean overlay) {
        return LetSwitchServiceProxy.getFileOperation().rename(filePath, targetFile, overlay);
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0123  */
    /* JADX WARN: Code duplicated, block: B:75:0x0128  */
    /* JADX WARN: Code duplicated, block: B:80:0x0130  */
    /* JADX WARN: Code duplicated, block: B:82:0x0135  */
    public final boolean write(DataInputStream dis, String filePath, String tmpPath, long position, long size, boolean overlay) {
        String str;
        FileChannel fileChannel;
        ParcelFileDescriptor parcelFileDescriptor;
        FileChannel channel;
        ParcelFileDescriptor parcelFileDescriptorOpenFileW;
        long j;
        int iWrite;
        y45.j(dis, "dis");
        y45.j(filePath, Progress.FILE_PATH);
        if (tmpPath == null) {
            str = filePath + ".tmp";
        } else {
            str = tmpPath;
        }
        int i = 0;
        try {
            FileChannel fileChannel2 = getFileChannel(str);
            try {
                if (fileChannel2 == null) {
                    try {
                        channel = fileChannel2;
                        parcelFileDescriptorOpenFileW = LetSwitchServiceProxy.getFileOperation().openFileW(str, position, size);
                        if (parcelFileDescriptorOpenFileW != null) {
                            try {
                                try {
                                    channel = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorOpenFileW).getChannel();
                                } catch (Throwable th) {
                                    th = th;
                                    fileChannel = channel;
                                    parcelFileDescriptor = parcelFileDescriptorOpenFileW;
                                    if (parcelFileDescriptor != null) {
                                        parcelFileDescriptor.close();
                                    }
                                    if (fileChannel != null) {
                                        fileChannel.close();
                                    }
                                    throw th;
                                }
                            } catch (Exception e) {
                                e = e;
                                fileChannel = channel;
                                parcelFileDescriptor = parcelFileDescriptorOpenFileW;
                                try {
                                    Log.d(TAG, "read Exception: " + e.getMessage());
                                    if (parcelFileDescriptor != null) {
                                        parcelFileDescriptor.close();
                                    }
                                    if (fileChannel != null) {
                                        fileChannel.close();
                                    }
                                    return false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (parcelFileDescriptor != null) {
                                        parcelFileDescriptor.close();
                                    }
                                    if (fileChannel != null) {
                                        fileChannel.close();
                                    }
                                    throw th;
                                }
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        channel = fileChannel2;
                        fileChannel = channel;
                        parcelFileDescriptor = null;
                        Log.d(TAG, "read Exception: " + e.getMessage());
                        if (parcelFileDescriptor != null) {
                            parcelFileDescriptor.close();
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        channel = fileChannel2;
                        fileChannel = channel;
                        parcelFileDescriptor = null;
                        if (parcelFileDescriptor != null) {
                            parcelFileDescriptor.close();
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                        throw th;
                    }
                } else {
                    channel = fileChannel2;
                    channel.position(position);
                    parcelFileDescriptorOpenFileW = null;
                }
                boolean z = channel != null;
                long j2 = SocketMain.PACKAGE_MAX_BLOCK_SIZE;
                long j3 = size - position;
                while (true) {
                    int i2 = dis.read(dataCache, i, (int) Math.min(j3, j2));
                    if (i2 <= 0) {
                        Log.e(TAG, "read empty");
                        j = 0;
                        break;
                    }
                    j3 -= (long) i2;
                    int i3 = i2;
                    do {
                        if (channel != null) {
                            try {
                                iWrite = channel.write(ByteBuffer.wrap(dataCache, i2 - i3, i3));
                            } catch (Exception e3) {
                                e3.printStackTrace();
                                Log.e(TAG, "write Exception: " + e3.getMessage());
                                z = false;
                            }
                        } else {
                            iWrite = 0;
                        }
                        if (iWrite <= 0) {
                            Log.e(TAG, "write empty");
                        } else {
                            i3 -= iWrite;
                        }
                    } while (i3 > 0);
                    j = 0;
                    if (j3 <= 0) {
                        break;
                    }
                    i = 0;
                }
                if (j3 != j) {
                    Log.e(TAG, "write needRead: " + j3);
                }
                renameFile(str, filePath, overlay);
                if (parcelFileDescriptorOpenFileW != null) {
                    parcelFileDescriptorOpenFileW.close();
                }
                if (channel != null) {
                    channel.close();
                }
                return z;
            } catch (Exception e4) {
                e = e4;
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Exception e5) {
            e = e5;
            fileChannel = null;
        } catch (Throwable th5) {
            th = th5;
            fileChannel = null;
        }
    }
}
