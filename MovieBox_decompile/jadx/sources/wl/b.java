package wl;

import com.transsion.lib_web.download_render.data.FileData;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import pl.h;

public final class b implements d {

    private final String f74289a;

    private final String f74290b;

    private final List f74291c;

    private final String f74292d;

    public b(String url, String version, List files) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(files, "files");
        this.f74289a = url;
        this.f74290b = version;
        this.f74291c = files;
        this.f74292d = "DR_FileOperateDelete";
    }

    public String a() {
        return this.f74292d;
    }

    @Override
    public void invoke() {
        for (FileData fileData : this.f74291c) {
            String fileLocalPath$lib_web_release = fileData.getFileLocalPath$lib_web_release();
            if (fileLocalPath$lib_web_release != null) {
                try {
                    File file = new File(fileLocalPath$lib_web_release);
                    if (file.exists()) {
                        file.delete();
                    }
                    com.transsion.lib_web.download_render.c cVar = com.transsion.lib_web.download_render.c.f44800a;
                    String str = this.f74289a;
                    String fileUrl = fileData.getFileUrl();
                    if (fileUrl == null) {
                        fileUrl = "";
                    }
                    cVar.c(str, fileUrl);
                    h.f69205a.a(a(), "<FileOperateDelete> delete path: " + fileLocalPath$lib_web_release + " success!");
                } catch (Throwable th2) {
                    h.f69205a.f(a(), "<FileOperateDelete> delete path: " + fileLocalPath$lib_web_release + " fail, msg:" + th2);
                }
            }
        }
    }
}
