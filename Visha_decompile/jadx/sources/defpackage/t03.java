package defpackage;

import android.util.Log;
import com.blankj.utilcode.util.Utils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.ResponseBody;

public class t03 {
    public a a;

    public interface a {
        void a();

        void b(int i);

        void c();

        void d(String str, String str2);
    }

    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e0 A[Catch: all -> 0x00e4, TryCatch #1 {all -> 0x00e4, blocks: (B:51:0x00d5, B:53:0x00e0, B:56:0x00e6, B:58:0x00ea), top: B:80:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00ea A[Catch: all -> 0x00e4, TRY_LEAVE, TryCatch #1 {all -> 0x00e4, blocks: (B:51:0x00d5, B:53:0x00e0, B:56:0x00e6, B:58:0x00ea), top: B:80:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00f6 A[Catch: IOException -> 0x00b9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x00b9, blocks: (B:63:0x00f6, B:37:0x00b5), top: B:78:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v5 */
    public void a(ResponseBody responseBody, String str) throws Throwable {
        String str2;
        String str3;
        String str4;
        File file;
        a aVar;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9 = "cannot close outputStream";
        String str10 = "cannot close inputStream";
        File filesDir = Utils.a().getFilesDir();
        String str11 = filesDir.getAbsolutePath() + File.separator + str + ".jpg";
        File file2 = new File(str11);
        if (file2.exists()) {
            a aVar2 = this.a;
            if (aVar2 != null) {
                aVar2.d(str11, str);
                return;
            }
            return;
        }
        if (!filesDir.exists()) {
            filesDir.mkdir();
        }
        try {
            file2.createNewFile();
        } catch (IOException unused) {
            Log.e("DownloadManager", "cannot create file");
        }
        a aVar3 = this.a;
        if (aVar3 != null) {
            aVar3.c();
        }
        InputStream inputStreamByteStream = responseBody.byteStream();
        long j = responseBody.get$contentLength();
        String str12 = 2048;
        int i = 2048;
        byte[] bArr = new byte[2048];
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file2));
                long j2 = 0;
                String str13 = str9;
                while (true) {
                    file = file2;
                    try {
                        int i2 = inputStreamByteStream.read(bArr, 0, i);
                        if (i2 == -1) {
                            break;
                        }
                        str7 = str13;
                        str8 = str10;
                        j2 += (long) i2;
                        try {
                            bufferedOutputStream2.write(bArr, 0, i2);
                            a aVar4 = this.a;
                            if (aVar4 != null) {
                                aVar4.b((int) ((100 * j2) / j));
                            }
                            bArr = bArr;
                            str13 = str7;
                            file2 = file;
                            str10 = str8;
                            i = 2048;
                        } catch (IOException unused2) {
                            bufferedOutputStream = bufferedOutputStream2;
                            str3 = str8;
                            str4 = str7;
                            try {
                                Log.d("DownloadManager", "download fail");
                                if (file.exists()) {
                                    file.delete();
                                }
                                aVar = this.a;
                                if (aVar != null) {
                                    aVar.a();
                                }
                                try {
                                    inputStreamByteStream.close();
                                } catch (IOException unused3) {
                                    Log.e("DownloadManager", str3);
                                }
                                if (bufferedOutputStream == null) {
                                    bufferedOutputStream.close();
                                    str12 = str4;
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                str2 = str4;
                                try {
                                    inputStreamByteStream.close();
                                } catch (IOException unused4) {
                                    Log.e("DownloadManager", str3);
                                }
                                if (bufferedOutputStream == null) {
                                    throw th;
                                }
                                try {
                                    bufferedOutputStream.close();
                                    throw th;
                                } catch (IOException unused5) {
                                    Log.e("DownloadManager", str2);
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = bufferedOutputStream2;
                            str3 = str8;
                            str2 = str7;
                            inputStreamByteStream.close();
                            if (bufferedOutputStream == null) {
                                throw th;
                            }
                            bufferedOutputStream.close();
                            throw th;
                        }
                    } catch (IOException unused6) {
                        str6 = str13;
                        str3 = str10;
                    } catch (Throwable th3) {
                        th = th3;
                        str5 = str13;
                        str3 = str10;
                    }
                }
                str7 = str13;
                str8 = str10;
                try {
                    a aVar5 = this.a;
                    if (aVar5 != null) {
                        aVar5.d(str11, str);
                    }
                    try {
                        inputStreamByteStream.close();
                    } catch (IOException unused7) {
                        Log.e("DownloadManager", str8);
                    }
                    bufferedOutputStream2.close();
                    str12 = str7;
                } catch (IOException unused8) {
                    str3 = str8;
                    str6 = str7;
                    bufferedOutputStream = bufferedOutputStream2;
                    str4 = str6;
                    Log.d("DownloadManager", "download fail");
                    if (file.exists()) {
                        file.delete();
                    }
                    aVar = this.a;
                    if (aVar != null) {
                        aVar.a();
                    }
                    inputStreamByteStream.close();
                    if (bufferedOutputStream == null) {
                        return;
                    }
                    bufferedOutputStream.close();
                    str12 = str4;
                } catch (Throwable th4) {
                    th = th4;
                    str3 = str8;
                    str5 = str7;
                    bufferedOutputStream = bufferedOutputStream2;
                    str2 = str5;
                    inputStreamByteStream.close();
                    if (bufferedOutputStream == null) {
                        throw th;
                    }
                    bufferedOutputStream.close();
                    throw th;
                }
            } catch (IOException unused9) {
                Log.e("DownloadManager", str12);
            }
        } catch (IOException unused10) {
            str4 = "cannot close outputStream";
            str3 = "cannot close inputStream";
            file = file2;
        } catch (Throwable th5) {
            th = th5;
            str2 = "cannot close outputStream";
            str3 = "cannot close inputStream";
        }
    }

    public boolean b(String str) {
        String str2 = Utils.a().getFilesDir().getAbsolutePath() + File.separator + str + ".jpg";
        if (!new File(str2).exists()) {
            return false;
        }
        a aVar = this.a;
        if (aVar == null) {
            return true;
        }
        aVar.d(str2, str);
        return true;
    }

    public void c(a aVar) {
        this.a = aVar;
    }
}
