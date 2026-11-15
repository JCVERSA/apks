package org.apache.tools.ant.taskdefs;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.push.PushConstants;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.util.p;

public class g {

    private static a f68206m;

    private static a f68207n;

    private static boolean f68210q;

    static Class f68211r;

    static Class f68212s;

    static Class f68213t;

    private String[] f68214a;

    private String[] f68215b;

    private int f68216c;

    private org.apache.tools.ant.taskdefs.h f68217d;

    private org.apache.tools.ant.taskdefs.i f68218e;

    private File f68219f;

    private Project f68220g;

    private boolean f68221h;

    private boolean f68222i;

    private boolean f68223j;

    private static final org.apache.tools.ant.util.d f68204k = org.apache.tools.ant.util.d.k();

    private static String f68205l = System.getProperty("user.dir");

    private static Vector f68208o = null;

    private static ProcessDestroyer f68209p = new ProcessDestroyer();

    private static class a {
        private a() {
        }

        public Process a(Project project, String[] strArr, String[] strArr2) {
            if (project != null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Execute:CommandLauncher: ");
                stringBuffer.append(org.apache.tools.ant.types.c.g(strArr));
                project.x(stringBuffer.toString(), 4);
            }
            return Runtime.getRuntime().exec(strArr, strArr2);
        }

        public Process b(Project project, String[] strArr, String[] strArr2, File file) throws IOException {
            if (file == null) {
                return a(project, strArr, strArr2);
            }
            throw new IOException("Cannot execute a process in different directory under this JVM");
        }

        a(org.apache.tools.ant.taskdefs.f fVar) {
            this();
        }
    }

    private static class b extends a {

        private a f68224a;

        b(a aVar) {
            super(null);
            this.f68224a = aVar;
        }

        @Override
        public Process a(Project project, String[] strArr, String[] strArr2) {
            return this.f68224a.a(project, strArr, strArr2);
        }
    }

    private static class c extends a {

        private Method f68225a;

        public c() throws NoSuchMethodException {
            super(null);
            Class clsD = g.f68213t;
            if (clsD == null) {
                clsD = g.d("java.lang.Runtime");
                g.f68213t = clsD;
            }
            Class<?> clsD2 = g.f68211r;
            if (clsD2 == null) {
                clsD2 = g.d("[Ljava.lang.String;");
                g.f68211r = clsD2;
            }
            Class<?> clsD3 = g.f68211r;
            if (clsD3 == null) {
                clsD3 = g.d("[Ljava.lang.String;");
                g.f68211r = clsD3;
            }
            Class<?> clsD4 = g.f68212s;
            if (clsD4 == null) {
                clsD4 = g.d("java.io.File");
                g.f68212s = clsD4;
            }
            this.f68225a = clsD.getMethod("exec", clsD2, clsD3, clsD4);
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) throws IOException {
            if (project != null) {
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Execute:Java13CommandLauncher: ");
                    stringBuffer.append(org.apache.tools.ant.types.c.g(strArr));
                    project.x(stringBuffer.toString(), 4);
                } catch (InvocationTargetException e10) {
                    Throwable targetException = e10.getTargetException();
                    if (targetException instanceof ThreadDeath) {
                        throw ((ThreadDeath) targetException);
                    }
                    if (targetException instanceof IOException) {
                        throw ((IOException) targetException);
                    }
                    throw new BuildException("Unable to execute command", targetException);
                } catch (Exception e11) {
                    throw new BuildException("Unable to execute command", e11);
                }
            }
            return (Process) this.f68225a.invoke(Runtime.getRuntime(), strArr, strArr2, file);
        }
    }

    private static class d extends b {
        d(a aVar) {
            super(aVar);
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) {
            if (file == null) {
                return a(project, strArr, strArr2);
            }
            System.getProperties().put("user.dir", file.getAbsolutePath());
            try {
                return a(project, strArr, strArr2);
            } finally {
                System.getProperties().put("user.dir", g.f68205l);
            }
        }
    }

    private static class e extends b {
        e(a aVar) {
            super(aVar);
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) {
            if (file == null) {
                if (project == null) {
                    return a(project, strArr, strArr2);
                }
                file = project.m();
            }
            String absolutePath = file.getAbsolutePath();
            String[] strArr3 = new String[strArr.length + 7];
            strArr3[0] = "cmd";
            strArr3[1] = "/c";
            strArr3[2] = absolutePath.substring(0, 2);
            strArr3[3] = "&&";
            strArr3[4] = "cd";
            strArr3[5] = absolutePath.substring(2);
            strArr3[6] = "&&";
            System.arraycopy(strArr, 0, strArr3, 7, strArr.length);
            return a(project, strArr3, strArr2);
        }
    }

    private static class f extends b {

        private String f68226b;

        f(String str, a aVar) {
            super(aVar);
            this.f68226b = str;
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) throws IOException {
            if (project == null) {
                if (file == null) {
                    return a(project, strArr, strArr2);
                }
                throw new IOException("Cannot locate antRun script: No project provided");
            }
            String strS = project.s("ant.home");
            if (strS == null) {
                throw new IOException("Cannot locate antRun script: Property 'ant.home' not found");
            }
            org.apache.tools.ant.util.d dVar = g.f68204k;
            File fileM = project.m();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strS);
            stringBuffer.append(File.separator);
            stringBuffer.append(this.f68226b);
            String string = dVar.q(fileM, stringBuffer.toString()).toString();
            if (file == null) {
                file = project.m();
            }
            String[] strArr3 = new String[strArr.length + 3];
            strArr3[0] = "perl";
            strArr3[1] = string;
            strArr3[2] = file.getAbsolutePath();
            System.arraycopy(strArr, 0, strArr3, 3, strArr.length);
            return a(project, strArr3, strArr2);
        }
    }

    private static class C0834g extends b {

        private String f68227b;

        C0834g(String str, a aVar) {
            super(aVar);
            this.f68227b = str;
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) throws IOException {
            if (project == null) {
                if (file == null) {
                    return a(project, strArr, strArr2);
                }
                throw new IOException("Cannot locate antRun script: No project provided");
            }
            String strS = project.s("ant.home");
            if (strS == null) {
                throw new IOException("Cannot locate antRun script: Property 'ant.home' not found");
            }
            org.apache.tools.ant.util.d dVar = g.f68204k;
            File fileM = project.m();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strS);
            stringBuffer.append(File.separator);
            stringBuffer.append(this.f68227b);
            String string = dVar.q(fileM, stringBuffer.toString()).toString();
            if (file == null) {
                file = project.m();
            }
            String[] strArr3 = new String[strArr.length + 2];
            strArr3[0] = string;
            strArr3[1] = file.getAbsolutePath();
            System.arraycopy(strArr, 0, strArr3, 2, strArr.length);
            return a(project, strArr3, strArr2);
        }
    }

    private static class h extends c {
        private File c(String[] strArr, String[] strArr2) throws Throwable {
            File fileF = g.f68204k.f("ANT", ".COM", null, true, true);
            PrintWriter printWriter = null;
            try {
                PrintWriter printWriter2 = new PrintWriter(new FileWriter(fileF));
                if (strArr2 != null) {
                    for (int i10 = 0; i10 < strArr2.length; i10++) {
                        try {
                            int iIndexOf = strArr2[i10].indexOf(61);
                            if (iIndexOf != -1) {
                                printWriter2.print("$ DEFINE/NOLOG ");
                                printWriter2.print(strArr2[i10].substring(0, iIndexOf));
                                printWriter2.print(" \"");
                                printWriter2.print(strArr2[i10].substring(iIndexOf + 1));
                                printWriter2.println('\"');
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            printWriter = printWriter2;
                            if (printWriter != null) {
                                printWriter.close();
                            }
                            throw th;
                        }
                    }
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("$ ");
                stringBuffer.append(strArr[0]);
                printWriter2.print(stringBuffer.toString());
                for (int i11 = 1; i11 < strArr.length; i11++) {
                    printWriter2.println(" -");
                    printWriter2.print(strArr[i11]);
                }
                printWriter2.close();
                return fileF;
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private void d(final File file, final Process process) {
            new Thread() {
                @Override
                public void run() {
                    try {
                        process.waitFor();
                    } catch (InterruptedException unused) {
                    }
                    org.apache.tools.ant.util.d.g(file);
                }
            }.start();
        }

        @Override
        public Process a(Project project, String[] strArr, String[] strArr2) throws Throwable {
            File fileC = c(strArr, strArr2);
            Process processA = super.a(project, new String[]{fileC.getPath()}, strArr2);
            d(fileC, processA);
            return processA;
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) throws Throwable {
            File fileC = c(strArr, strArr2);
            Process processB = super.b(project, new String[]{fileC.getPath()}, strArr2, file);
            d(fileC, processB);
            return processB;
        }
    }

    private static class i extends b {
        i(a aVar) {
            super(aVar);
        }

        @Override
        public Process b(Project project, String[] strArr, String[] strArr2, File file) {
            if (file == null) {
                if (project == null) {
                    return a(project, strArr, strArr2);
                }
                file = project.m();
            }
            String[] strArr3 = new String[strArr.length + 6];
            strArr3[0] = "cmd";
            strArr3[1] = "/c";
            strArr3[2] = "cd";
            strArr3[3] = "/d";
            strArr3[4] = file.getAbsolutePath();
            strArr3[5] = "&&";
            System.arraycopy(strArr, 0, strArr3, 6, strArr.length);
            return a(project, strArr3, strArr2);
        }
    }

    static {
        org.apache.tools.ant.taskdefs.f fVar = null;
        f68206m = null;
        f68207n = null;
        f68210q = false;
        try {
            if (!lz.a.a("os/2")) {
                f68206m = new c();
            }
        } catch (NoSuchMethodException unused) {
        }
        if (lz.a.a("mac") && !lz.a.a("unix")) {
            f68207n = new d(new a(fVar));
            return;
        }
        if (lz.a.a("os/2")) {
            f68207n = new e(new a(fVar));
            return;
        }
        if (lz.a.a("windows")) {
            f68210q = true;
            a aVar = new a(fVar);
            if (lz.a.a("win9x")) {
                f68207n = new C0834g("bin/antRun.bat", aVar);
                return;
            } else {
                f68207n = new i(aVar);
                return;
            }
        }
        if (lz.a.a("netware")) {
            f68207n = new f("bin/antRun.pl", new a(fVar));
        } else if (!lz.a.a("openvms")) {
            f68207n = new C0834g("bin/antRun", new a(fVar));
        } else {
            try {
                f68207n = new h();
            } catch (NoSuchMethodException unused2) {
            }
        }
    }

    public g() {
        this(new l(), null);
    }

    private static Vector c(Vector vector, BufferedReader bufferedReader) throws IOException {
        HashMap map = new HashMap();
        String str = null;
        String string = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            if (line.startsWith("\t=")) {
                if (str != null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(string);
                    stringBuffer.append(",");
                    stringBuffer.append(line.substring(4, line.length() - 1));
                    string = stringBuffer.toString();
                }
            } else if (line.startsWith("  \"")) {
                if (str != null) {
                    map.put(str, string);
                }
                int iIndexOf = line.indexOf(61);
                String strSubstring = line.substring(3, iIndexOf - 2);
                if (map.containsKey(strSubstring)) {
                    str = null;
                } else {
                    string = line.substring(iIndexOf + 3, line.length() - 1);
                    str = strSubstring;
                }
            }
        }
        if (str != null) {
            map.put(str, string);
        }
        for (String str2 : map.keySet()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str2);
            stringBuffer2.append(UrlUtils.EQUAL_MARK);
            stringBuffer2.append(map.get(str2));
            vector.add(stringBuffer2.toString());
        }
        return vector;
    }

    static Class d(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static void e(Process process) {
        org.apache.tools.ant.util.d.b(process.getInputStream());
        org.apache.tools.ant.util.d.c(process.getOutputStream());
        org.apache.tools.ant.util.d.b(process.getErrorStream());
    }

    private static String[] j() {
        if (lz.a.a("os/2")) {
            return new String[]{"cmd", "/c", "set"};
        }
        if (lz.a.a("windows")) {
            return lz.a.a("win9x") ? new String[]{"command.com", "/c", "set"} : new String[]{"cmd", "/c", "set"};
        }
        if (!lz.a.a("z/os") && !lz.a.a("unix")) {
            if (lz.a.a("netware") || lz.a.a("os/400")) {
                return new String[]{"env"};
            }
            if (lz.a.a("openvms")) {
                return new String[]{PushConstants.PUSH_SERVICE_TYPE_SHOW, "logical"};
            }
            return null;
        }
        String[] strArr = new String[1];
        if (new File("/bin/env").canRead()) {
            strArr[0] = "/bin/env";
        } else if (new File("/usr/bin/env").canRead()) {
            strArr[0] = "/usr/bin/env";
        } else {
            strArr[0] = "env";
        }
        return strArr;
    }

    public static synchronized Vector k() {
        try {
            Vector vector = f68208o;
            if (vector != null) {
                return vector;
            }
            f68208o = new Vector();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                g gVar = new g(new l(byteArrayOutputStream));
                gVar.p(j());
                gVar.r(true);
                gVar.f();
                BufferedReader bufferedReader = new BufferedReader(new StringReader(u(byteArrayOutputStream)));
                if (lz.a.a("openvms")) {
                    Vector vectorC = c(f68208o, bufferedReader);
                    f68208o = vectorC;
                    return vectorC;
                }
                String str = p.f68442a;
                String string = null;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.indexOf(61) != -1) {
                        if (string != null) {
                            f68208o.addElement(string);
                        }
                        string = line;
                    } else if (string == null) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(str);
                        stringBuffer.append(line);
                        string = stringBuffer.toString();
                    } else {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(string);
                        stringBuffer2.append(str);
                        stringBuffer2.append(line);
                        string = stringBuffer2.toString();
                    }
                }
                if (string != null) {
                    f68208o.addElement(string);
                }
                return f68208o;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static Process m(Project project, String[] strArr, String[] strArr2, File file, boolean z10) {
        a aVar;
        if (file == null || file.exists()) {
            if (!z10 || (aVar = f68206m) == null) {
                aVar = f68207n;
            }
            return aVar.b(project, strArr, strArr2, file);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(file);
        stringBuffer.append(" doesn't exist.");
        throw new BuildException(stringBuffer.toString());
    }

    private String[] n() {
        if (lz.a.a("openvms")) {
            return this.f68215b;
        }
        Vector vector = (Vector) k().clone();
        int i10 = 0;
        while (true) {
            String[] strArr = this.f68215b;
            if (i10 >= strArr.length) {
                return (String[]) vector.toArray(new String[vector.size()]);
            }
            String string = strArr[i10];
            String strSubstring = string.substring(0, string.indexOf(61) + 1);
            if (f68210q) {
                strSubstring = strSubstring.toLowerCase();
            }
            int size = vector.size();
            for (int i11 = 0; i11 < size; i11++) {
                String str = (String) vector.elementAt(i11);
                if ((f68210q ? str.toLowerCase() : str).startsWith(strSubstring)) {
                    vector.removeElementAt(i11);
                    if (!f68210q) {
                        break;
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(str.substring(0, strSubstring.length()));
                    stringBuffer.append(string.substring(strSubstring.length()));
                    string = stringBuffer.toString();
                    break;
                }
            }
            vector.addElement(string);
            i10++;
        }
    }

    public static String u(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            if (lz.a.a("z/os")) {
                return byteArrayOutputStream.toString("Cp1047");
            }
            if (lz.a.a("os/400")) {
                return byteArrayOutputStream.toString("Cp500");
            }
            return byteArrayOutputStream.toString();
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public int f() throws IOException {
        File file = this.f68219f;
        if (file != null && !file.exists()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f68219f);
            stringBuffer.append(" doesn't exist.");
            throw new BuildException(stringBuffer.toString());
        }
        Process processM = m(this.f68220g, g(), h(), this.f68219f, this.f68223j);
        try {
            this.f68217d.b(processM.getOutputStream());
            this.f68217d.c(processM.getInputStream());
            this.f68217d.a(processM.getErrorStream());
            this.f68217d.start();
            try {
                try {
                    f68209p.add(processM);
                    org.apache.tools.ant.taskdefs.i iVar = this.f68218e;
                    if (iVar != null) {
                        iVar.d(processM);
                    }
                    v(processM);
                    org.apache.tools.ant.taskdefs.i iVar2 = this.f68218e;
                    if (iVar2 != null) {
                        iVar2.e();
                    }
                    this.f68217d.stop();
                    e(processM);
                    org.apache.tools.ant.taskdefs.i iVar3 = this.f68218e;
                    if (iVar3 != null) {
                        iVar3.a();
                    }
                    int i10 = i();
                    f68209p.remove(processM);
                    return i10;
                } catch (Throwable th2) {
                    f68209p.remove(processM);
                    throw th2;
                }
            } catch (ThreadDeath e10) {
                processM.destroy();
                throw e10;
            }
        } catch (IOException e11) {
            processM.destroy();
            throw e11;
        }
    }

    public String[] g() {
        return this.f68214a;
    }

    public String[] h() {
        String[] strArr = this.f68215b;
        return (strArr == null || this.f68221h) ? strArr : n();
    }

    public int i() {
        return this.f68216c;
    }

    public boolean l() {
        org.apache.tools.ant.taskdefs.i iVar = this.f68218e;
        return iVar != null && iVar.c();
    }

    public void o(Project project) {
        this.f68220g = project;
    }

    public void p(String[] strArr) {
        this.f68214a = strArr;
    }

    protected void q(int i10) {
        this.f68216c = i10;
    }

    public void r(boolean z10) {
        this.f68221h = z10;
    }

    public void s(org.apache.tools.ant.taskdefs.h hVar) {
        this.f68217d = hVar;
    }

    public void t(boolean z10) {
        this.f68223j = z10;
    }

    protected void v(Process process) {
        try {
            process.waitFor();
            q(process.exitValue());
        } catch (InterruptedException unused) {
            process.destroy();
        }
    }

    public g(org.apache.tools.ant.taskdefs.h hVar) {
        this(hVar, null);
    }

    public g(org.apache.tools.ant.taskdefs.h hVar, org.apache.tools.ant.taskdefs.i iVar) {
        this.f68214a = null;
        this.f68215b = null;
        this.f68216c = Integer.MAX_VALUE;
        this.f68219f = null;
        this.f68220g = null;
        this.f68221h = false;
        this.f68222i = false;
        this.f68223j = true;
        s(hVar);
        this.f68218e = iVar;
        if (lz.a.a("openvms")) {
            this.f68223j = false;
        }
    }
}
