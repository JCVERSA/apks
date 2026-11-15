package com.mgtv.thirdsdk.playcore.b;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.hunantv.imgo.util.d;
import com.hunantv.imgo.util.n;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class a {
    /* JADX WARN: Code duplicated, block: B:115:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public boolean a() throws Throwable {
        InputStream inputStream;
        if (d.e == 0 || TextUtils.isEmpty("https://m.baidu.com") || TextUtils.isEmpty(d.f)) {
            return true;
        }
        HttpURLConnection httpURLConnection = null;
        inputStream = null;
        InputStream inputStream2 = null;
        httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnectionA = a("https://m.baidu.com");
                if (httpURLConnectionA == null) {
                    if (httpURLConnectionA != null) {
                        try {
                            httpURLConnectionA.disconnect();
                        } catch (Exception unused) {
                        }
                    }
                    return false;
                }
                try {
                    int responseCode = httpURLConnectionA.getResponseCode();
                    while (true) {
                        if (responseCode == 302 || responseCode == 301) {
                            String headerField = httpURLConnectionA.getHeaderField("Location");
                            n.a("hjs", "netsniffer return 302,redirect url is:" + headerField);
                            if (headerField == null) {
                                try {
                                    httpURLConnectionA.disconnect();
                                } catch (Exception unused2) {
                                }
                                return false;
                            }
                            httpURLConnectionA = a(headerField);
                            if (httpURLConnectionA == null) {
                                if (httpURLConnectionA != null) {
                                    try {
                                        httpURLConnectionA.disconnect();
                                    } catch (Exception unused3) {
                                    }
                                }
                                return false;
                            }
                            responseCode = httpURLConnectionA.getResponseCode();
                        } else {
                            if (responseCode != 200 && responseCode != 206) {
                                try {
                                    httpURLConnectionA.disconnect();
                                } catch (Exception unused4) {
                                }
                                return false;
                            }
                            inputStream2 = httpURLConnectionA.getInputStream();
                            byte[] bArr = new byte[4096];
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            while (true) {
                                int i = inputStream2.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                            String string = byteArrayOutputStream.toString();
                            if (!TextUtils.isEmpty(string) && string.indexOf(d.f) > -1) {
                                try {
                                    httpURLConnectionA.disconnect();
                                } catch (Exception unused5) {
                                }
                                try {
                                    inputStream2.close();
                                } catch (Exception unused6) {
                                }
                                return true;
                            }
                            try {
                                httpURLConnectionA.disconnect();
                            } catch (Exception unused7) {
                            }
                            inputStream2.close();
                        }
                        return false;
                    }
                } catch (IOException e) {
                    e = e;
                    InputStream inputStream3 = inputStream2;
                    httpURLConnection = httpURLConnectionA;
                    inputStream = inputStream3;
                    try {
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception unused8) {
                            }
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception unused9) {
                            }
                        }
                        if (inputStream != null) {
                            throw th;
                        }
                        try {
                            inputStream.close();
                            throw th;
                        } catch (Exception unused10) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    InputStream inputStream4 = inputStream2;
                    httpURLConnection = httpURLConnectionA;
                    inputStream = inputStream4;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        throw th;
                    }
                    inputStream.close();
                    throw th;
                }
            } catch (Exception unused11) {
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    private static HttpURLConnection a(String str) throws IOException {
        HttpURLConnection httpURLConnectionA = com.mgtv.task.http.d.a(str);
        if (httpURLConnectionA == null) {
            return null;
        }
        httpURLConnectionA.setConnectTimeout(FlacTagCreator.DEFAULT_PADDING);
        httpURLConnectionA.setReadTimeout(FlacTagCreator.DEFAULT_PADDING);
        httpURLConnectionA.setRequestMethod(ShareTarget.METHOD_GET);
        return httpURLConnectionA;
    }
}
