package wl;

import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import com.transsion.lib_web.download_render.utils.e;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import pl.h;

public final class c implements d {

    private final String f74293a;

    private final String f74294b;

    private final List f74295c;

    private final Function4 f74296d;

    private final String f74297e;

    public c(String url, String version, List files, Function4 callback) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(files, "files");
        Intrinsics.h(callback, "callback");
        this.f74293a = url;
        this.f74294b = version;
        this.f74295c = files;
        this.f74296d = callback;
        this.f74297e = "DR_FileOperateDownload";
    }

    public String a() {
        return this.f74297e;
    }

    @Override
    public void invoke() {
        Iterator it;
        String md5;
        File parentFile;
        int i10 = 0;
        String str = "";
        long jLongValue = 0;
        for (Iterator it2 = this.f74295c.iterator(); it2.hasNext(); it2 = it) {
            FileData fileData = (FileData) it2.next();
            String strI = FileDownloadTaskManager.f44780a.i();
            if (strI == null) {
                strI = "";
            }
            e eVar = e.f44823a;
            if (Intrinsics.c(eVar.a(strI), eVar.a(this.f74293a))) {
                h.f69205a.f(a(), "<FileOperateDownload> current webview is loading:" + ((Object) strI) + ", downloading:" + this.f74293a + ", are the same, so intercept!");
                this.f74296d.invoke(Boolean.TRUE, strI, Integer.valueOf(i10), Long.valueOf(jLongValue));
                return;
            }
            String fileUrl = fileData.getFileUrl();
            if (fileUrl == null || (md5 = fileData.getMd5()) == null) {
                it = it2;
            } else {
                try {
                    Response responseExecute = com.transsion.lib_web.zip.loader.b.f44833a.d().newCall(new Request.Builder().url(fileUrl).build()).execute();
                    try {
                        if (!responseExecute.isSuccessful()) {
                            throw new IOException("Unexpected code " + responseExecute);
                        }
                        File fileB = com.transsion.lib_web.download_render.utils.c.f44820a.b(this.f74293a, fileUrl, md5, fileData.getMimeType());
                        File parentFile2 = fileB.getParentFile();
                        if (parentFile2 != null && !parentFile2.exists() && (parentFile = fileB.getParentFile()) != null) {
                            parentFile.mkdirs();
                        }
                        ResponseBody responseBodyBody = responseExecute.body();
                        InputStream inputStreamByteStream = responseBodyBody != null ? responseBodyBody.byteStream() : null;
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(fileB);
                            if (inputStreamByteStream != null) {
                                it = it2;
                                try {
                                    ByteStreamsKt.b(inputStreamByteStream, fileOutputStream, 0, 2, null);
                                } catch (Throwable th2) {
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        CloseableKt.a(fileOutputStream, th2);
                                        throw th3;
                                    }
                                }
                            } else {
                                it = it2;
                            }
                            try {
                                CloseableKt.a(fileOutputStream, null);
                                try {
                                    CloseableKt.a(inputStreamByteStream, null);
                                    fileData.setFileOperateStatus$lib_web_release(FileOperateStatus.NONE);
                                    fileData.setFileLocalPath$lib_web_release(fileB.getAbsolutePath());
                                    com.transsion.lib_web.download_render.c.f44800a.b(this.f74293a, this.f74294b, fileData);
                                    i10++;
                                    Long size = fileData.getSize();
                                    jLongValue += size != null ? size.longValue() : 0L;
                                    h.f69205a.a(a(), "<FileOperateDownload> download: " + fileUrl + " success, dst:" + fileB.getAbsolutePath());
                                    Unit unit = Unit.f64096a;
                                    try {
                                        CloseableKt.a(responseExecute, null);
                                    } catch (Throwable th4) {
                                        th = th4;
                                        h.f69205a.f(a(), "<FileOperateDownload> download: " + fileUrl + " fail, msg:" + th);
                                        str = strI;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    Throwable th6 = th;
                                    try {
                                        throw th6;
                                    } catch (Throwable th7) {
                                        CloseableKt.a(responseExecute, th6);
                                        throw th7;
                                    }
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                Throwable th9 = th;
                                try {
                                    throw th9;
                                } catch (Throwable th10) {
                                    CloseableKt.a(inputStreamByteStream, th9);
                                    throw th10;
                                }
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            it = it2;
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        it = it2;
                    }
                } catch (Throwable th13) {
                    th = th13;
                    it = it2;
                }
            }
            str = strI;
        }
        this.f74296d.invoke(Boolean.FALSE, str, Integer.valueOf(i10), Long.valueOf(jLongValue));
    }
}
