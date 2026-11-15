package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.ArrayList;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public abstract class iy7 {
    public static String a(String str, String str2) {
        if (str2 != null && !str2.isEmpty()) {
            if (str2.charAt(0) == '/' || str == null || str.isEmpty()) {
                str = str2;
            } else {
                str = str.substring(0, str.lastIndexOf("/") + 1) + str2;
            }
        }
        return (str == null || str.isEmpty()) ? "" : str;
    }

    public static String b(String str, String str2) {
        String strA = a(str, str2);
        return (strA == null || strA.isEmpty()) ? "" : c(strA.split("/", -1));
    }

    public static String c(String[] strArr) {
        if (strArr.length == 0) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            str.hashCode();
            switch (str) {
                case "":
                case ".":
                    break;
                case "..":
                    if (arrayList.size() > 0) {
                        arrayList.remove(arrayList.size() - 1);
                        break;
                    } else {
                        break;
                    }
                    break;
                default:
                    arrayList.add(strArr[i]);
                    break;
            }
        }
        String str2 = strArr[strArr.length - 1];
        str2.hashCode();
        if (str2.equals(Consts.DOT) || str2.equals(FileTree.PARENT_DIR)) {
            arrayList.add("");
        }
        return "/" + String.join("/", arrayList);
    }
}
