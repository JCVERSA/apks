package o;

import android.text.TextUtils;
import com.dayuwuxian.em.api.proto.PluginInfo;
import com.phoenix.download.DownloadInfo;
import com.snaptube.plugin.PluginId;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.download.rpc.DownloadConstants;
import com.wandoujia.download.utils.StorageUtil;
import com.wandoujia.em.common.proto.plugin.PluginQuery;
import com.wandoujia.em.common.proto.plugin.PluginQueryRequest;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import net.pubnative.mediation.config.model.RequestTimeModel;

public abstract class c16 {
    public static final Pattern a = PluginId.VERSION_PATTERN;
    public static String b = "";
    public static long c = 0;
    public static Comparator d = new a();

    public class a implements Comparator {
        public int a(String str, String str2) {
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            int i = 0;
            while (i < strArrSplit.length && i < strArrSplit2.length && strArrSplit[i].equals(strArrSplit2[i])) {
                i++;
            }
            if (i >= strArrSplit.length || i >= strArrSplit2.length) {
                return Integer.signum(strArrSplit.length - strArrSplit2.length);
            }
            try {
                return Integer.signum(Integer.valueOf(strArrSplit[i]).compareTo(Integer.valueOf(strArrSplit2[i])));
            } catch (NumberFormatException e) {
                ProductionEnv.throwExceptForDebugging("UnExpectedException", e);
                return Integer.signum(strArrSplit.length - strArrSplit2.length);
            }
        }

        @Override
        public int compare(Object obj, Object obj2) {
            return a((String) obj, (String) obj2);
        }
    }

    public static boolean A(File file, String str) {
        int iLastIndexOf = str.lastIndexOf("_");
        if (iLastIndexOf > 0) {
            return a.matcher(str.substring(iLastIndexOf + 1)).matches();
        }
        int i = 0 >> 0;
        return false;
    }

    public static void B(String str, String str2, boolean z) {
        vq6.K().g(new ReportPropertyBuilder().setEventName("Analysis").setAction("load_plugin").setProperty("plugin", str + "_" + str2).setProperty("success", Boolean.valueOf(z)));
    }

    public static void C() {
        vq6.K().g(new ReportPropertyBuilder().setEventName("Analysis").setAction("plugin_query"));
    }

    public static boolean D(String str, String str2, String... strArr) {
        File fileR = r(str, str2);
        if (fileR == null || !fileR.exists()) {
            throw new UnsatisfiedLinkError("lib dir not exists");
        }
        for (String str3 : strArr) {
            System.load(i(str, str2, str3));
        }
        return true;
    }

    public static boolean a(String str, File file, String str2) {
        return z(str, file, str2);
    }

    public static boolean b(File file, String str) {
        return A(file, str);
    }

    public static void c(PluginId pluginId, String str) {
        File fileQ = q(pluginId.getName(), str);
        if (fileQ != null) {
            yj2.q(fileQ);
        }
        TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(h(pluginId.getName(), str));
        if (taskInfoR0 != null) {
            int i = 2 & 1;
            TaskInfoDBUtils.i(taskInfoR0.a);
            yj2.s(taskInfoR0.i());
        }
    }

    public static void d(PluginId pluginId, String str, Set set) {
        String[] strArrK;
        if (TextUtils.isEmpty(str) || (strArrK = k(pluginId.getName())) == null) {
            return;
        }
        for (String str2 : strArrK) {
            if (d.compare(str2, str) < 0 && !set.contains(str2)) {
                c(pluginId, str2);
            }
        }
    }

    public static rx.c e() {
        C();
        PluginId[] pluginIdArrValues = PluginId.values();
        PluginQuery[] pluginQueryArr = new PluginQuery[pluginIdArrValues.length];
        for (int i = 0; i < pluginIdArrValues.length; i++) {
            pluginQueryArr[i] = pluginIdArrValues[i].toPluginQuery();
        }
        PluginQueryRequest pluginQueryRequest = new PluginQueryRequest();
        LinkedList linkedList = new LinkedList(Arrays.asList(az7.h()));
        linkedList.add("noarch");
        pluginQueryRequest.setCpuAbisList(linkedList);
        pluginQueryRequest.setPluginsList(Arrays.asList(pluginQueryArr));
        return PhoenixApplication.C().b().u().a(lw3.c(pluginQueryRequest));
    }

    public static String f(PluginInfo pluginInfo) {
        return g(pluginInfo.name, pluginInfo.version);
    }

    public static String g(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str + "_" + str2 + ".apk";
    }

    public static String h(String str, String str2) {
        return "com.snaptube.premium.plugins." + str + "_" + str2;
    }

    public static String i(String str, String str2, String str3) {
        return new File(r(str, str2), "lib" + str3 + ".so").getAbsolutePath();
    }

    public static TaskInfo j(PluginInfo pluginInfo, String str) {
        PluginId pluginIdFromName;
        File fileT;
        if (pluginInfo == null || !w(pluginInfo) || !pluginInfo.supported.booleanValue() || (pluginIdFromName = PluginId.fromName(pluginInfo.name)) == null || !y(pluginIdFromName.getRequiredMinVersion(), pluginInfo.version)) {
            return null;
        }
        String strH = h(pluginInfo.name, pluginInfo.version);
        String str2 = strH + ".apk";
        String strM = m();
        if (TextUtils.isEmpty(strM)) {
            strM = StorageUtil.e(DownloadConstants.ResourceType.APP);
        }
        if (TextUtils.isEmpty(strM)) {
            fileT = wd9.T(strH + str2);
        } else {
            fileT = new File(new File(strM), str2);
        }
        TaskInfo taskInfo = new TaskInfo(TaskInfo.TaskType.TASK_PLUGIN);
        taskInfo.k = pluginInfo.name + "_" + pluginInfo.version;
        taskInfo.R(fileT.getAbsolutePath());
        taskInfo.i = TaskInfo.TaskStatus.PENDING;
        taskInfo.r = DownloadInfo.ContentType.APP;
        taskInfo.w = strH;
        taskInfo.x = false;
        taskInfo.B = TaskInfo.ContentType.PLUGIN;
        taskInfo.v = pluginInfo.md5;
        taskInfo.f479o = pluginInfo.url;
        taskInfo.F = s(strH);
        taskInfo.V = str;
        return taskInfo;
    }

    public static String[] k(String str) {
        String[] list;
        if (TextUtils.isEmpty(str) || (list = t().list(new b16(str))) == null) {
            return null;
        }
        int length = list.length;
        String[] strArr = new String[length];
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            strArr[i] = list[i].substring(length2 + 1);
        }
        return strArr;
    }

    public static String l() {
        File fileT = t();
        if (!TextUtils.isEmpty(b) && c == fileT.lastModified()) {
            return b;
        }
        c = fileT.lastModified();
        String[] list = fileT.list(new a16());
        if (list != null) {
            StringBuilder sb = new StringBuilder();
            for (String str : list) {
                sb.append(str);
                sb.append(RequestTimeModel.DELIMITER);
            }
            b = sb.toString();
        }
        return b;
    }

    public static String m() {
        File file = new File(PhoenixApplication.z().getFilesDir(), "plugin");
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    public static File n(String str, String str2) {
        File fileQ;
        String strG = g(str, str2);
        if (!TextUtils.isEmpty(strG) && (fileQ = q(str, str2)) != null) {
            return new File(fileQ, strG);
        }
        return null;
    }

    public static String o(PluginId pluginId) {
        String[] strArrK = k(pluginId.getName());
        if (strArrK == null) {
            return null;
        }
        List listAsList = Arrays.asList(strArrK);
        Collections.sort(listAsList, d);
        int size = listAsList.size();
        while (true) {
            size--;
            if (size < 0) {
                return null;
            }
            String str = (String) listAsList.get(size);
            if (x(pluginId.getName(), str) && y(pluginId.getRequiredMinVersion(), str)) {
                return str;
            }
        }
    }

    public static File p(PluginInfo pluginInfo) {
        return q(pluginInfo.name, pluginInfo.version);
    }

    public static File q(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return new File(t(), str + "_" + str2);
        }
        return null;
    }

    public static File r(String str, String str2) {
        File fileQ = q(str, str2);
        if (fileQ == null) {
            return null;
        }
        return new File(fileQ, "lib");
    }

    public static String s(String str) {
        int iLastIndexOf;
        if (!TextUtils.isEmpty(str) && str.startsWith("com.snaptube.premium.plugins.") && 29 < (iLastIndexOf = str.lastIndexOf(95))) {
            return str.substring(29, iLastIndexOf);
        }
        return null;
    }

    public static File t() {
        return PhoenixApplication.z().getDir("plugins", 0);
    }

    public static boolean u(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            if (strArrSplit.length <= 0 || strArrSplit2.length <= 0 || !TextUtils.equals(strArrSplit[0], strArrSplit2[0])) {
                return false;
            }
            int i = 2 << 1;
            return true;
        }
        return false;
    }

    public static boolean v(String str, String str2) {
        if (!TextUtils.isEmpty(str) && (!u(str, str2) || d.compare(str, str2) >= 0)) {
            return false;
        }
        return true;
    }

    public static boolean w(PluginInfo pluginInfo) {
        boolean z = false;
        if (pluginInfo == null || TextUtils.isEmpty(pluginInfo.name)) {
            return false;
        }
        Boolean bool = pluginInfo.supported;
        if (bool != null) {
            if (!bool.booleanValue()) {
                return true;
            }
            if (!TextUtils.isEmpty(pluginInfo.version) && !TextUtils.isEmpty(pluginInfo.cpu_abi) && !TextUtils.isEmpty(pluginInfo.url) && !TextUtils.isEmpty(pluginInfo.md5)) {
                z = true;
            }
            return z;
        }
        ProductionEnv.throwExceptForDebugging(new Throwable("pluginInfo.supported is null! name: " + pluginInfo.name + ", version: " + pluginInfo.version + ", url: " + pluginInfo.url + ", md5: " + pluginInfo.md5 + ", cpuabi: " + pluginInfo.cpu_abi + ". abi: " + l38.y(Arrays.asList(az7.h()), RequestTimeModel.DELIMITER) + ", ver: " + PluginId.getPluginCurrentVersions()));
        return false;
    }

    public static boolean x(String str, String str2) {
        File fileN = n(str, str2);
        return fileN != null && fileN.exists() && fileN.isFile();
    }

    public static boolean y(String str, String str2) {
        return u(str, str2) && d.compare(str, str2) <= 0;
    }

    public static boolean z(String str, File file, String str2) {
        int length = str.length();
        boolean z = false;
        boolean z2 = false | false;
        if (length >= str2.length()) {
            return false;
        }
        String strSubstring = str2.substring(length + 1);
        if (str2.startsWith(str) && a.matcher(strSubstring).matches()) {
            z = true;
        }
        return z;
    }
}
