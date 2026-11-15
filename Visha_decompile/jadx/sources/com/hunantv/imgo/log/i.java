package com.hunantv.imgo.log;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class i {
    private static i b;
    private a a;

    public interface a {
        void a();

        void a(String str);
    }

    public class b {
        private String b;

        public b(String str) {
            this.b = str;
            Matcher matcher = Pattern.compile("(?<=\\().*?(?=\\))").matcher(str);
            if (matcher.find()) {
                this.b = matcher.group();
            }
        }

        public String a() {
            return this.b;
        }
    }

    public class c {
        private final String b;
        private int c;

        public c(String str, int i) {
            this.b = str;
            this.c = i;
        }

        public String a() {
            return this.b;
        }

        public int b() {
            return this.c;
        }

        public void a(int i) {
            this.c = i;
        }
    }

    private i() {
    }

    public static i a() {
        if (b == null) {
            synchronized (i.class) {
                try {
                    if (b == null) {
                        b = new i();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    public void a(String str) throws Throwable {
        a(new c(str, 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0045: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:9:0x0045 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.hunantv.imgo.log.i$b] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Process] */
    private String a(b bVar) throws Throwable {
        BufferedReader bufferedReader;
        InterruptedException e;
        ?? r6;
        IOException e2;
        ?? r7;
        BufferedReader bufferedReader2;
        ?? r8;
        ?? r9;
        String str = "";
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bVar = Runtime.getRuntime().exec("ping -c 1 " + bVar.a());
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(bVar.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e3) {
                            e2 = e3;
                            r7 = bVar;
                            e2.printStackTrace();
                            r9 = r7;
                            r8 = r7;
                            if (bufferedReader != null) {
                            }
                            r8.destroy();
                            return str;
                        } catch (InterruptedException e4) {
                            e = e4;
                            r6 = bVar;
                            e.printStackTrace();
                            r8 = r6;
                            if (bufferedReader != null) {
                                r9 = r6;
                            }
                            r8.destroy();
                            return str;
                        }
                    }
                    bufferedReader.close();
                    bVar.waitFor();
                    r9 = bVar;
                } catch (IOException e5) {
                    bufferedReader = null;
                    e2 = e5;
                    r7 = bVar;
                } catch (InterruptedException e6) {
                    bufferedReader = null;
                    e = e6;
                    r6 = bVar;
                } catch (Throwable th) {
                    th = th;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (Exception unused) {
                            throw th;
                        }
                    }
                    bVar.destroy();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader3 = bufferedReader2;
            }
        } catch (IOException e7) {
            bufferedReader = null;
            e2 = e7;
            r7 = 0;
        } catch (InterruptedException e8) {
            bufferedReader = null;
            e = e8;
            r6 = 0;
        } catch (Throwable th3) {
            th = th3;
            bVar = 0;
        }
        try {
            bufferedReader.close();
            r8 = r9;
            r8.destroy();
        } catch (Exception unused2) {
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x016d A[EXC_TOP_SPLITTER, PHI: r3 r4
      0x016d: PHI (r3v2 java.lang.Process) = (r3v1 java.lang.Process), (r3v7 java.lang.Process), (r3v8 java.lang.Process) binds: [B:57:0x0183, B:46:0x016b, B:51:0x0177] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r4v3 java.io.BufferedReader) = (r4v2 java.io.BufferedReader), (r4v5 java.io.BufferedReader), (r4v6 java.io.BufferedReader) binds: [B:57:0x0183, B:46:0x016b, B:51:0x0177] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    private void a(c cVar) throws Throwable {
        Pattern patternCompile = Pattern.compile("(?<=From )(?:[0-9]{1,3}\\.){3}[0-9]{1,3}");
        Pattern patternCompile2 = Pattern.compile("(?<=from ).*(?=: icmp_seq=1 ttl=)");
        Pattern patternCompile3 = Pattern.compile("(?<=time=).*?ms");
        Process processExec = null;
        boolean z = false;
        BufferedReader bufferedReader = null;
        while (!z) {
            try {
                try {
                    if (cVar.b() >= 30) {
                        break;
                    }
                    String str = "";
                    processExec = Runtime.getRuntime().exec("ping -c 1 -t " + cVar.b() + " " + cVar.a());
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e) {
                            e = e;
                            bufferedReader = bufferedReader2;
                        } catch (InterruptedException e2) {
                            e = e2;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            processExec.destroy();
                            this.a.a();
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                            processExec.destroy();
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    processExec.waitFor();
                    Matcher matcher = patternCompile.matcher(str);
                    StringBuilder sb = new StringBuilder(256);
                    if (matcher.find()) {
                        String strGroup = matcher.group();
                        String strA = a(new b(strGroup));
                        if (strA.length() == 0) {
                            sb.append("unknown host or network error\n");
                            z = true;
                        } else {
                            Matcher matcher2 = patternCompile3.matcher(strA);
                            if (matcher2.find()) {
                                String strGroup2 = matcher2.group();
                                sb.append(cVar.b());
                                sb.append("\t\t");
                                sb.append(strGroup);
                                sb.append("\t\t");
                                sb.append(strGroup2);
                                sb.append("\t");
                            } else {
                                sb.append(cVar.b());
                                sb.append("\t\t");
                                sb.append(strGroup);
                                sb.append("\t\t timeout \t");
                            }
                            this.a.a(sb.toString());
                            cVar.a(cVar.b() + 1);
                        }
                    } else {
                        Matcher matcher3 = patternCompile2.matcher(str);
                        if (matcher3.find()) {
                            String strGroup3 = matcher3.group();
                            Matcher matcher4 = patternCompile3.matcher(str);
                            if (matcher4.find()) {
                                String strGroup4 = matcher4.group();
                                sb.append(cVar.b());
                                sb.append("\t\t");
                                sb.append(strGroup3);
                                sb.append("\t\t");
                                sb.append(strGroup4);
                                sb.append("\t");
                                this.a.a(sb.toString());
                            }
                            z = true;
                        } else {
                            if (str.length() == 0) {
                                sb.append("unknown host or network error\t");
                                z = true;
                            } else {
                                sb.append(cVar.b());
                                sb.append("\t\t timeout \t");
                                cVar.a(cVar.b() + 1);
                            }
                            this.a.a(sb.toString());
                        }
                    }
                    bufferedReader = bufferedReader2;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (InterruptedException e4) {
                e = e4;
            }
            e.printStackTrace();
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            processExec.destroy();
            this.a.a();
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        processExec.destroy();
        this.a.a();
    }
}
