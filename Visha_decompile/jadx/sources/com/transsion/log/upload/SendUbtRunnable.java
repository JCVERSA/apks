package com.transsion.log.upload;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.transsion.log.common.SendLogRunnable;
import com.transsion.log.upload.SendUbtRunnable;
import com.transsion.log.upload.data.UploadUrl;
import com.transsion.log.upload.data.base.HttpUbtError;
import com.transsion.log.upload.data.base.HttpUbtResponse;
import com.transsion.log.upload.net.RequestManager;
import com.transsion.log.upload.record.UploadRecordUtil;
import defpackage.cs4;
import defpackage.ec9;
import defpackage.vdb;
import defpackage.y45;
import java.io.File;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/log/upload/SendUbtRunnable;", "Lcom/transsion/log/common/SendLogRunnable;", MethodDecl.initName, "()V", "Lec9;", "sendLogCallback", "Lzfb;", "setSendLogCallback", "(Lec9;)V", "Ljava/io/File;", "logFile", "sendLog", "(Ljava/io/File;)V", "mSendLogCallback", "Lec9;", "UBT_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SendUbtRunnable extends SendLogRunnable {
    private ec9 mSendLogCallback;

    public static final class a implements cs4 {
        public final File a;
        public final SendUbtRunnable b;
        public final int c;
        public final int d;
        public final long[] e;
        public final File f;

        public static final class C0222a implements cs4 {
            public final SendUbtRunnable a;
            public final String b;
            public final File c;
            public final int d;
            public final int e;
            public final long[] f;
            public final File g;

            public static final class C0223a implements cs4 {
                public final File a;
                public final SendUbtRunnable b;

                public C0223a(File file, SendUbtRunnable sendUbtRunnable) {
                    this.a = file;
                    this.b = sendUbtRunnable;
                }

                @Override
                public void a(HttpUbtError httpUbtError) {
                    y45.j(httpUbtError, "error");
                    SendUbtRunnable.access$getMSendLogCallback$p(this.b);
                }

                @Override
                public void b(HttpUbtResponse httpUbtResponse) {
                    y45.j(httpUbtResponse, "response");
                    this.a.delete();
                    UploadRecordUtil.a.g(vdb.a.h());
                    SendUbtRunnable.access$getMSendLogCallback$p(this.b);
                }
            }

            public C0222a(SendUbtRunnable sendUbtRunnable, String str, File file, int i, int i2, long[] jArr, File file2) {
                this.a = sendUbtRunnable;
                this.b = str;
                this.c = file;
                this.d = i;
                this.e = i2;
                this.f = jArr;
                this.g = file2;
            }

            public static final void d(int i, File file, SendUbtRunnable sendUbtRunnable, int i2, long[] jArr) {
                SendUbtRunnable.sendLog$doUpload(file, sendUbtRunnable, i2, jArr, i + 1);
            }

            @Override
            public void a(HttpUbtError httpUbtError) {
                y45.j(httpUbtError, "error");
                int i = this.d;
                if (i >= this.e) {
                    SendUbtRunnable.access$getMSendLogCallback$p(this.a);
                    return;
                }
                long j = this.f[i];
                Handler handler = new Handler(Looper.getMainLooper());
                final int i2 = this.d;
                final File file = this.g;
                final SendUbtRunnable sendUbtRunnable = this.a;
                final int i3 = this.e;
                final long[] jArr = this.f;
                handler.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        SendUbtRunnable.a.C0222a.d(i2, file, sendUbtRunnable, i3, jArr);
                    }
                }, j);
            }

            @Override
            public void b(HttpUbtResponse httpUbtResponse) {
                y45.j(httpUbtResponse, "response");
                RequestManager requestManager = RequestManager.a;
                C0223a c0223a = new C0223a(this.c, this.a);
                String strA = ((SendLogRunnable) this.a).mSendAction.a();
                y45.i(strA, "getFeedbackId(...)");
                requestManager.f(c0223a, strA, this.b);
            }
        }

        public a(File file, SendUbtRunnable sendUbtRunnable, int i, int i2, long[] jArr, File file2) {
            this.a = file;
            this.b = sendUbtRunnable;
            this.c = i;
            this.d = i2;
            this.e = jArr;
            this.f = file2;
        }

        @Override
        public void a(HttpUbtError httpUbtError) {
            y45.j(httpUbtError, "error");
            SendUbtRunnable.access$getMSendLogCallback$p(this.b);
        }

        @Override
        public void b(HttpUbtResponse httpUbtResponse) {
            String fileUrl;
            y45.j(httpUbtResponse, "response");
            UploadUrl uploadUrl = (UploadUrl) httpUbtResponse.getData();
            if (uploadUrl == null || (fileUrl = uploadUrl.getFileUrl()) == null) {
                return;
            }
            File file = this.a;
            SendUbtRunnable sendUbtRunnable = this.b;
            int i = this.c;
            int i2 = this.d;
            long[] jArr = this.e;
            File file2 = this.f;
            RequestManager requestManager = RequestManager.a;
            String name = file.getName();
            y45.i(name, "getName(...)");
            requestManager.g(fileUrl, name, null, file, new C0222a(sendUbtRunnable, fileUrl, file, i, i2, jArr, file2));
        }
    }

    public static final ec9 access$getMSendLogCallback$p(SendUbtRunnable sendUbtRunnable) {
        sendUbtRunnable.getClass();
        return null;
    }

    public static final void sendLog$doUpload(File file, SendUbtRunnable sendUbtRunnable, int i, long[] jArr, int i2) {
        if (file != null) {
            a aVar = new a(file, sendUbtRunnable, i2, i, jArr, file);
            String strC = RequestManager.a.c();
            String name = file.getName();
            y45.i(name, "getName(...)");
            RequestManager.b(aVar, strC, name);
        }
    }

    @Override
    public synchronized void sendLog(File logFile) {
        try {
            UploadRecordUtil.a.i(vdb.a.h(), this.mSendAction.a(), logFile != null ? logFile.getPath() : null);
            try {
                sendLog$doUpload(logFile, this, 3, new long[]{0, 5000, 10000}, 0);
                finish();
            } catch (Exception e) {
                Log.e("SendUbtRunnable", e.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void setSendLogCallback(ec9 sendLogCallback) {
    }
}
