package com.transsion.socket.untils;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.transsion.letswitch.service.api.FileInformation;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.socket.SocketMain;
import defpackage.ly0;
import defpackage.y45;
import defpackage.zfb;
import java.io.DataOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/transsion/socket/untils/FileReader;", "", MethodDecl.initName, "()V", "", "position", "Lcom/transsion/letswitch/service/api/FileInformation;", "fileInformation", "Ljava/io/DataOutputStream;", "dos", "Lzfb;", "read", "(JLcom/transsion/letswitch/service/api/FileInformation;Ljava/io/DataOutputStream;)V", "Companion", "socket_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileReader {
    private static final String TAG = "FileReader";
    private static final ByteBuffer byteBuffer = ByteBuffer.allocate(SocketMain.PACKAGE_MAX_BLOCK_SIZE);

    @RequiresApi(19)
    public final void read(long position, FileInformation fileInformation, DataOutputStream dos) {
        y45.j(fileInformation, "fileInformation");
        y45.j(dos, "dos");
        Log.d(TAG, "fileInformation: " + fileInformation);
        long length = fileInformation.getLength() - position;
        ParcelFileDescriptor parcelFileDescriptorOpenFile = LetSwitchServiceProxy.getFileOperation().openFile(fileInformation.getFilePath());
        long j = 0;
        if (parcelFileDescriptorOpenFile != null) {
            try {
                Log.i(TAG, "fd： " + parcelFileDescriptorOpenFile + ", needRead: " + length);
                FileChannel channel = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptorOpenFile).getChannel();
                if (channel != null) {
                    try {
                        Log.i(TAG, "readChannel： " + channel);
                        do {
                            ByteBuffer byteBuffer2 = byteBuffer;
                            byteBuffer2.clear();
                            int i = channel.read(byteBuffer2);
                            if (i < 0) {
                                Log.e(TAG, "channel read end");
                                break;
                            }
                            byteBuffer2.limit(i);
                            byteBuffer2.flip();
                            byte[] bArr = new byte[i];
                            byteBuffer2.get(bArr, 0, i);
                            dos.write(bArr);
                            j += (long) i;
                        } while (j < length);
                        zfb zfbVar = zfb.a;
                        ly0.a(channel, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            ly0.a(channel, th);
                            throw th2;
                        }
                    }
                }
                ly0.a(parcelFileDescriptorOpenFile, null);
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    ly0.a(parcelFileDescriptorOpenFile, th3);
                    throw th4;
                }
            }
        }
        if (j != length) {
            Log.e(TAG, "writeTo fail readSize: " + j + ", needRead: " + length);
        }
    }
}
