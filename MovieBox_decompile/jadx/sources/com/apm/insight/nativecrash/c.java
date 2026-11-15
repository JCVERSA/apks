package com.apm.insight.nativecrash;

import com.apm.insight.l.j;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class c {

    private static final Pattern f19103i = Pattern.compile("^pid:\\s(.*),\\stid:\\s(.*),\\sname:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");

    private static final Pattern f19104j = Pattern.compile("^signal\\s(.*),\\scode\\s(.*),\\sfault\\saddr\\s(.*)$");

    private static final Pattern f19105k = Pattern.compile("^Abort message: (.*)$");

    private static final Pattern f19106l = Pattern.compile("^Crash message: (.*)$");

    private static final Pattern f19107m = Pattern.compile("^    \\/(\\w*)\\/.*\\/(.*\\.so)\\s\\(BuildId: ([a-f0-9]*)\\)$");

    private String f19108a;

    private String f19109b;

    private String f19110c;

    private String f19111d;

    private String f19112e;

    private String f19113f;

    private String f19114g;

    private Map<String, String> f19115h = new HashMap();

    public c(File file) {
        c(j.b(file));
    }

    public final String a() {
        return this.f19114g;
    }

    public final Map<String, String> b() {
        return this.f19115h;
    }

    public final String c() {
        StringBuilder sb2 = new StringBuilder();
        String str = this.f19112e;
        if (str != null) {
            sb2.append(str);
        }
        String str2 = this.f19113f;
        if (str2 != null) {
            sb2.append(str2);
        }
        String str3 = this.f19114g;
        if (str3 != null) {
            sb2.append(str3);
        }
        return sb2.toString();
    }

    public final void a(File file) {
        File fileB = j.b(file);
        if (fileB.exists()) {
            fileB.renameTo(new File(fileB.getAbsoluteFile() + ".old"));
        }
        NativeImpl.a(file);
        c(j.b(file));
    }

    public final void b(File file) {
        c(j.b(file));
    }

    private void c(File file) {
        if (!file.exists() || file.length() == 0) {
            return;
        }
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            int i10 = 0;
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null || i10 >= 64) {
                        break;
                    }
                    if (this.f19108a == null && line.startsWith("pid: ")) {
                        Matcher matcher = f19103i.matcher(line);
                        if (matcher.find() && matcher.groupCount() == 4) {
                            this.f19108a = matcher.group(1);
                            this.f19109b = matcher.group(2);
                            this.f19111d = matcher.group(3);
                            this.f19110c = matcher.group(4);
                        }
                    } else if (this.f19112e == null && line.startsWith("signal ")) {
                        Matcher matcher2 = f19104j.matcher(line);
                        if (matcher2.find() && matcher2.groupCount() == 3) {
                            String strReplace = matcher2.group(1).replace(" ", "");
                            String strReplace2 = matcher2.group(2).replace(" ", "");
                            int iIndexOf = strReplace2.indexOf("frompid");
                            if (iIndexOf > 0) {
                                strReplace2 = strReplace2.substring(0, iIndexOf) + ")";
                            }
                            this.f19112e = "Signal " + strReplace + ", Code " + strReplace2 + "\n";
                        }
                    } else if (this.f19113f == null && line.startsWith("Abort ")) {
                        Matcher matcher3 = f19105k.matcher(line);
                        if (matcher3.find() && matcher3.groupCount() == 1) {
                            this.f19113f = "abort message: " + matcher3.group(1) + "\n";
                        }
                    } else if (this.f19113f == null && line.startsWith("Crash ")) {
                        Matcher matcher4 = f19106l.matcher(line);
                        if (matcher4.find() && matcher4.groupCount() == 1) {
                            this.f19113f = "crash message: " + matcher4.group(1) + "\n";
                        }
                    } else if (this.f19114g == null && line.startsWith("backtrace:")) {
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null || !line2.startsWith("    #")) {
                                break;
                            }
                            sb2.append(line2.substring(4));
                            sb2.append('\n');
                        }
                        i10++;
                        this.f19114g = sb2.toString();
                    } else if (this.f19115h.isEmpty() && line.startsWith("build id:")) {
                        while (true) {
                            String line3 = bufferedReader2.readLine();
                            if (line3 == null || !line3.contains("BuildId:")) {
                                break;
                            }
                            Matcher matcher5 = f19107m.matcher(line3);
                            if (matcher5.find()) {
                                String strGroup = matcher5.group(1);
                                String strGroup2 = matcher5.group(2);
                                String strGroup3 = matcher5.group(3);
                                if (strGroup.equals("data")) {
                                    this.f19115h.put(strGroup2, strGroup3);
                                }
                            }
                        }
                    }
                    i10++;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    try {
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return;
                    } finally {
                        com.apm.insight.a.a((Closeable) bufferedReader);
                    }
                }
            }
            com.apm.insight.a.a((Closeable) bufferedReader2);
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
