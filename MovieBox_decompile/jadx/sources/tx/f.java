package tx;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final f f72882a = new f();

    private f() {
    }

    public final String a(File soFile) {
        Intrinsics.h(soFile, "soFile");
        if (!soFile.exists() || !soFile.isFile()) {
            return "SO文件不存在: " + soFile.getAbsolutePath();
        }
        try {
            String absolutePath = soFile.getAbsolutePath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("开始加载SO: ");
            sb2.append(absolutePath);
            soFile.setReadable(true, false);
            soFile.setExecutable(true, false);
            soFile.setWritable(false);
            System.load(absolutePath);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SO加载成功: ");
            sb3.append(absolutePath);
            return null;
        } catch (Exception e10) {
            String str = "SO加载异常: " + e10.getMessage();
            wf.a.C0922a.k(wf.a.f74274a, "SoLoader", str, e10, false, 8, null);
            return str;
        } catch (UnsatisfiedLinkError e11) {
            String str2 = "SO加载失败 (UnsatisfiedLinkError): " + e11.getMessage();
            wf.a.C0922a.k(wf.a.f74274a, "SoLoader", str2, e11, false, 8, null);
            return str2;
        }
    }
}
