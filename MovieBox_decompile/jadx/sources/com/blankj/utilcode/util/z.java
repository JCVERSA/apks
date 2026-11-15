package com.blankj.utilcode.util;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

public abstract class z {

    private static final String f19506a = System.getProperty("line.separator");

    public static class a {

        public int f19507a;

        public String f19508b;

        public String f19509c;

        public a(int i10, String str, String str2) {
            this.f19507a = i10;
            this.f19508b = str;
            this.f19509c = str2;
        }

        public String toString() {
            return "result: " + this.f19507a + "\nsuccessMsg: " + this.f19508b + "\nerrorMsg: " + this.f19509c;
        }
    }

    public static a a(String str, boolean z10) {
        return b(new String[]{str}, z10, true);
    }

    public static a b(String[] strArr, boolean z10, boolean z11) {
        return c(strArr, null, z10, z11);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x013c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0144  */
    /* JADX WARN: Code duplicated, block: B:106:0x0146  */
    /* JADX WARN: Code duplicated, block: B:109:0x014d  */
    /* JADX WARN: Code duplicated, block: B:129:0x0176  */
    /* JADX WARN: Code duplicated, block: B:135:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x016c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x0162 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x0158 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    public static a c(String[] strArr, String[] strArr2, boolean z10, boolean z11) throws Throwable {
        Process processExec;
        ?? r10;
        StringBuilder sb2;
        ?? r11;
        StringBuilder sb3;
        StringBuilder sb4;
        String string;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        int iWaitFor = -1;
        if (strArr == null || strArr.length == 0) {
            return new a(-1, "", "");
        }
        DataOutputStream dataOutputStream = null;
        BufferedReader bufferedReader4 = null;
        dataOutputStream = null;
        try {
            processExec = Runtime.getRuntime().exec(z10 ? DownloadCommon.DOWNLOAD_REPORT_SUCCESS : com.mbridge.msdk.foundation.entity.b.JSON_KEY_SH, strArr2, (File) null);
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(processExec.getOutputStream());
                try {
                    try {
                        for (String str : strArr) {
                            if (str != null) {
                                dataOutputStream2.write(str.getBytes());
                                dataOutputStream2.writeBytes(f19506a);
                                dataOutputStream2.flush();
                            }
                        }
                        dataOutputStream2.writeBytes("exit" + f19506a);
                        dataOutputStream2.flush();
                        iWaitFor = processExec.waitFor();
                        if (z11) {
                            sb4 = new StringBuilder();
                            try {
                                sb3 = new StringBuilder();
                                try {
                                    bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream(), "UTF-8"));
                                    try {
                                        bufferedReader3 = new BufferedReader(new InputStreamReader(processExec.getErrorStream(), "UTF-8"));
                                        try {
                                            String line = bufferedReader2.readLine();
                                            if (line != null) {
                                                sb4.append(line);
                                                while (true) {
                                                    String line2 = bufferedReader2.readLine();
                                                    if (line2 == null) {
                                                        break;
                                                    }
                                                    sb4.append(f19506a);
                                                    sb4.append(line2);
                                                }
                                            }
                                            String line3 = bufferedReader3.readLine();
                                            if (line3 != null) {
                                                sb3.append(line3);
                                                while (true) {
                                                    String line4 = bufferedReader3.readLine();
                                                    if (line4 == null) {
                                                        break;
                                                    }
                                                    sb3.append(f19506a);
                                                    sb3.append(line4);
                                                }
                                            }
                                            bufferedReader4 = bufferedReader2;
                                            bufferedReader = bufferedReader3;
                                        } catch (Exception e10) {
                                            e = e10;
                                            dataOutputStream = dataOutputStream2;
                                            sb2 = sb4;
                                            e = e;
                                            r10 = bufferedReader2;
                                            r11 = bufferedReader3;
                                            try {
                                                e.printStackTrace();
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                    } catch (IOException e11) {
                                                        e11.printStackTrace();
                                                    }
                                                }
                                                if (r10 != 0) {
                                                    try {
                                                        r10.close();
                                                    } catch (IOException e12) {
                                                        e12.printStackTrace();
                                                    }
                                                }
                                                if (r11 != 0) {
                                                    try {
                                                        r11.close();
                                                    } catch (IOException e13) {
                                                        e13.printStackTrace();
                                                    }
                                                }
                                                if (processExec != null) {
                                                    processExec.destroy();
                                                }
                                                sb4 = sb2;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                    } catch (IOException e14) {
                                                        e14.printStackTrace();
                                                    }
                                                }
                                                if (r10 != 0) {
                                                    try {
                                                        r10.close();
                                                    } catch (IOException e15) {
                                                        e15.printStackTrace();
                                                    }
                                                }
                                                if (r11 != 0) {
                                                    try {
                                                        r11.close();
                                                    } catch (IOException e16) {
                                                        e16.printStackTrace();
                                                    }
                                                }
                                                if (processExec == null) {
                                                    throw th;
                                                }
                                                processExec.destroy();
                                                throw th;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            r10 = bufferedReader2;
                                            r11 = bufferedReader3;
                                            dataOutputStream = dataOutputStream2;
                                            if (dataOutputStream != null) {
                                                dataOutputStream.close();
                                            }
                                            if (r10 != 0) {
                                                r10.close();
                                            }
                                            if (r11 != 0) {
                                                r11.close();
                                            }
                                            if (processExec == null) {
                                                throw th;
                                            }
                                            processExec.destroy();
                                            throw th;
                                        }
                                    } catch (Exception e17) {
                                        e = e17;
                                        bufferedReader3 = null;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        r11 = 0;
                                        r10 = bufferedReader2;
                                    }
                                } catch (Exception e18) {
                                    e = e18;
                                    bufferedReader2 = null;
                                    bufferedReader3 = null;
                                }
                            } catch (Exception e19) {
                                r10 = 0;
                                r11 = 0;
                                dataOutputStream = dataOutputStream2;
                                sb2 = sb4;
                                e = e19;
                                sb3 = null;
                            }
                        } else {
                            sb4 = null;
                            sb3 = null;
                            bufferedReader = null;
                        }
                        try {
                            dataOutputStream2.close();
                        } catch (IOException e20) {
                            e20.printStackTrace();
                        }
                        if (bufferedReader4 != null) {
                            try {
                                bufferedReader4.close();
                            } catch (IOException e21) {
                                e21.printStackTrace();
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e22) {
                                e22.printStackTrace();
                            }
                        }
                        processExec.destroy();
                    } catch (Exception e23) {
                        e = e23;
                        sb3 = null;
                        r10 = 0;
                        r11 = 0;
                        dataOutputStream = dataOutputStream2;
                        sb2 = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    r10 = 0;
                    r11 = 0;
                }
            } catch (Exception e24) {
                e = e24;
                sb2 = null;
                sb3 = sb2;
                StringBuilder sb5 = sb3;
                r11 = sb5;
                r10 = sb5;
                e.printStackTrace();
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                if (r10 != 0) {
                    r10.close();
                }
                if (r11 != 0) {
                    r11.close();
                }
                if (processExec != null) {
                    processExec.destroy();
                }
                sb4 = sb2;
                if (sb4 == null) {
                    string = "";
                } else {
                    string = sb4.toString();
                }
                return new a(iWaitFor, string, sb3 != null ? sb3.toString() : "");
            } catch (Throwable th6) {
                th = th6;
                r10 = 0;
                r11 = r10;
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                if (r10 != 0) {
                    r10.close();
                }
                if (r11 != 0) {
                    r11.close();
                }
                if (processExec == null) {
                    throw th;
                }
                processExec.destroy();
                throw th;
            }
        } catch (Exception e25) {
            e = e25;
            processExec = null;
            sb2 = null;
        } catch (Throwable th7) {
            th = th7;
            processExec = null;
            r10 = 0;
        }
        if (sb4 == null) {
            string = "";
        } else {
            string = sb4.toString();
        }
        return new a(iWaitFor, string, sb3 != null ? sb3.toString() : "");
    }
}
