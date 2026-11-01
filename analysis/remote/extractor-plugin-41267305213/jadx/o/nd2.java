package o;

import android.text.TextUtils;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;

public class nd2 {
    public static jz5 a;

    public static ClassLoader a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        jz5 jz5Var = a;
        if (jz5Var != null && jz5Var.a().equals(str)) {
            return a;
        }
        File file = new File(str);
        File parentFile = file.getParentFile();
        File file2 = new File(parentFile, "dex");
        File file3 = new File(parentFile, "lib");
        file2.mkdirs();
        file3.mkdirs();
        jz5 jz5Var2 = new jz5(file.getAbsolutePath(), file2.getAbsolutePath(), file3.getAbsolutePath(), ClassLoader.getSystemClassLoader(), GlobalConfig.getAppContext().getClass().getClassLoader());
        a = jz5Var2;
        return jz5Var2;
    }
}
