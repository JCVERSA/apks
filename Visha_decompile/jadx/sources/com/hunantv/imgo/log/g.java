package com.hunantv.imgo.log;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class g {
    private a a;
    private final int b;

    public interface a {
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

    public g(a aVar, int i) {
        this.a = aVar;
        this.b = i;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007d A[Catch: Exception -> 0x0087, PHI: r0 r1 r4
      0x007d: PHI (r0v3 java.lang.String) = (r0v2 java.lang.String), (r0v4 java.lang.String) binds: [B:34:0x007b, B:38:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x007d: PHI (r1v4 java.io.BufferedReader) = (r1v23 java.io.BufferedReader), (r1v24 java.io.BufferedReader) binds: [B:34:0x007b, B:38:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x007d: PHI (r4v7 ??) = (r4v19 ??), (r4v20 ??) binds: [B:34:0x007b, B:38:0x0084] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x0087, blocks: (B:18:0x0062, B:19:0x0065, B:35:0x007d), top: B:49:0x000a }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.hunantv.imgo.log.g] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Process] */
    private String a(b bVar, boolean z) throws Throwable {
        ?? r4;
        BufferedReader bufferedReader;
        String str = z ? "ping -s 8185 -c  " : "ping -c ";
        String string = "";
        ?? r1 = 0;
        StringBuilder sb = null;
        bufferedReader = null;
        bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        BufferedReader bufferedReader3 = null;
        r1 = 0;
        try {
            try {
                try {
                    this = Runtime.getRuntime().exec(str + this.b + " " + bVar.a());
                    try {
                        BufferedReader bufferedReader4 = new BufferedReader(new InputStreamReader(this.getInputStream()));
                        while (true) {
                            try {
                                String line = bufferedReader4.readLine();
                                if (line == null) {
                                    break;
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(string);
                                sb2.append(line);
                                string = sb2.toString();
                                sb = sb2;
                            } catch (IOException e) {
                                e = e;
                                bufferedReader2 = bufferedReader4;
                                e.printStackTrace();
                                r1 = bufferedReader2;
                                this = this;
                                bufferedReader = bufferedReader2;
                                r4 = this;
                                if (bufferedReader2 != null) {
                                    bufferedReader.close();
                                    r1 = bufferedReader;
                                    this = r4;
                                }
                            } catch (InterruptedException e2) {
                                e = e2;
                                bufferedReader3 = bufferedReader4;
                                e.printStackTrace();
                                r1 = bufferedReader3;
                                this = this;
                                bufferedReader = bufferedReader3;
                                r4 = this;
                                if (bufferedReader3 != null) {
                                    bufferedReader.close();
                                    r1 = bufferedReader;
                                    this = r4;
                                }
                            } catch (Throwable th) {
                                th = th;
                                r1 = bufferedReader4;
                                if (r1 != 0) {
                                    try {
                                        r1.close();
                                    } catch (Exception unused) {
                                        throw th;
                                    }
                                }
                                this.destroy();
                                throw th;
                            }
                        }
                        bufferedReader4.close();
                        this.waitFor();
                        bufferedReader4.close();
                        r1 = sb;
                        this = this;
                    } catch (IOException e3) {
                        e = e3;
                    } catch (InterruptedException e4) {
                        e = e4;
                    }
                } catch (Exception unused2) {
                }
            } catch (IOException e5) {
                e = e5;
                this = 0;
            } catch (InterruptedException e6) {
                e = e6;
                this = 0;
            } catch (Throwable th2) {
                th = th2;
                this = 0;
            }
            this.destroy();
            return string;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void a(String str, boolean z) throws Throwable {
        b bVar = new b(str);
        StringBuilder sb = new StringBuilder(256);
        String strA = a(bVar, z);
        if (Pattern.compile("(?<=from ).*(?=: icmp_seq=1 ttl=)").matcher(strA).find()) {
            e.b("NetPing", "status" + strA, true);
            sb.append("\t" + strA);
        } else if (strA.length() == 0) {
            sb.append("unknown host or network error");
        } else {
            sb.append("timeout");
        }
        this.a.a(j.a(str, sb.toString()));
    }
}
