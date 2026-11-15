package wl;

import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import java.io.File;
import java.util.List;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import pl.h;

public final class a implements d {

    private final String f74285a;

    private final String f74286b;

    private final List f74287c;

    private final String f74288d;

    public a(String url, String version, List files) {
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(files, "files");
        this.f74285a = url;
        this.f74286b = version;
        this.f74287c = files;
        this.f74288d = "DR_FileOperateCopy";
    }

    public String a() {
        return this.f74288d;
    }

    @Override
    public void invoke() {
        String fileUrl;
        File parentFile;
        for (FileData fileData : this.f74287c) {
            String md5 = fileData.getMd5();
            if (md5 != null && (fileUrl = fileData.getFileUrl()) != null) {
                String fileCopyOriginLocalPath$lib_web_release = fileData.getFileCopyOriginLocalPath$lib_web_release();
                String absolutePath = com.transsion.lib_web.download_render.utils.c.f44820a.b(this.f74285a, fileUrl, md5, fileData.getMimeType()).getAbsolutePath();
                if (fileCopyOriginLocalPath$lib_web_release != null && fileCopyOriginLocalPath$lib_web_release.length() > 0 && new File(fileCopyOriginLocalPath$lib_web_release).exists()) {
                    Intrinsics.e(absolutePath);
                    if (absolutePath.length() > 0) {
                        File file = new File(fileCopyOriginLocalPath$lib_web_release);
                        File file2 = new File(absolutePath);
                        File parentFile2 = file2.getParentFile();
                        if (parentFile2 != null && !parentFile2.exists() && (parentFile = file2.getParentFile()) != null) {
                            parentFile.mkdirs();
                        }
                        try {
                            FilesKt.u(file, file2, true, 0, 4, null);
                            fileData.setFileOperateStatus$lib_web_release(FileOperateStatus.NONE);
                            fileData.setFileLocalPath$lib_web_release(file2.getAbsolutePath());
                            com.transsion.lib_web.download_render.c.f44800a.b(this.f74285a, this.f74286b, fileData);
                            h.f69205a.a(a(), "<FileOperateCopy> copy src:" + file.getAbsoluteFile() + " to dst:" + file2.getAbsoluteFile() + " success, dst:" + file2.getAbsolutePath());
                        } catch (Throwable th2) {
                            h.f69205a.f(a(), "<FileOperateCopy> copy src:" + file.getAbsoluteFile() + " to dst:" + file2.getAbsoluteFile() + " fail, msg:" + th2);
                        }
                    }
                }
                h.f69205a.f(a(), "<FileOperateCopy> copy src:" + fileCopyOriginLocalPath$lib_web_release + " to dst:" + absolutePath + " fail!");
            }
        }
    }
}
