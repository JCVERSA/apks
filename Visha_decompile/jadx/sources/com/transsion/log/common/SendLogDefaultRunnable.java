package com.transsion.log.common;

import android.util.Log;
import defpackage.cc9;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

public class SendLogDefaultRunnable extends SendLogRunnable {
    private static final String TAG = "SendLogDefaultRunnable";
    private final Map<String, String> mRequestHeaders = new HashMap();
    private cc9 mSendLogCallback;
    private String mUploadLogUrl;

    public class a implements HostnameVerifier {
        public a() {
        }

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0117 A[PHI: r3 r8
      0x0117: PHI (r3v4 int) = (r3v1 int), (r3v2 int), (r3v3 int), (r3v6 int) binds: [B:71:0x0115, B:80:0x012b, B:96:0x014f, B:88:0x013d] A[DONT_GENERATE, DONT_INLINE]
      0x0117: PHI (r8v10 java.net.HttpURLConnection) = 
      (r8v7 java.net.HttpURLConnection)
      (r8v8 java.net.HttpURLConnection)
      (r8v9 java.net.HttpURLConnection)
      (r8v11 java.net.HttpURLConnection)
     binds: [B:71:0x0115, B:80:0x012b, B:96:0x014f, B:88:0x013d] A[DONT_GENERATE, DONT_INLINE]] */
    private void doPostRequest(String str, InputStream inputStream, Map<String, String> map) throws Throwable {
        InputStream inputStream2;
        HttpURLConnection httpURLConnection;
        InputStream inputStream3;
        HttpURLConnection httpURLConnection2;
        InputStream inputStream4;
        InputStream inputStream5;
        InputStream inputStream6;
        int responseCode;
        byte[] bArr = new byte[2048];
        OutputStream outputStream = null;
        inputStream = null;
        inputStream = null;
        inputStream = null;
        inputStream = null;
        inputStream = null;
        inputStream = null;
        inputStream = null;
        inputStream = null;
        InputStream inputStream7 = null;
        outputStream = null;
        outputStream = null;
        outputStream = null;
        outputStream = null;
        outputStream = null;
        OutputStream outputStream2 = null;
        OutputStream outputStream3 = null;
        OutputStream outputStream4 = null;
        OutputStream outputStream5 = null;
        int i = -1;
        try {
            httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                if (httpURLConnection2 instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(new a());
                }
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection2.addRequestProperty(entry.getKey(), entry.getValue());
                }
                httpURLConnection2.setReadTimeout(15000);
                httpURLConnection2.setConnectTimeout(15000);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setRequestMethod("POST");
                OutputStream outputStream6 = httpURLConnection2.getOutputStream();
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
                        while (true) {
                            try {
                                int i2 = inputStream.read(bArr);
                                if (i2 == -1) {
                                    break;
                                } else {
                                    byteArrayOutputStream.write(bArr, 0, i2);
                                }
                            } catch (Throwable th) {
                                byteArrayOutputStream.close();
                                throw th;
                            }
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        outputStream6.write(byteArray);
                        outputStream6.flush();
                        responseCode = httpURLConnection2.getResponseCode();
                        try {
                            if (responseCode / 100 == 2) {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                inputStream7 = httpURLConnection2.getInputStream();
                                while (true) {
                                    int i3 = inputStream7.read(bArr);
                                    if (i3 == -1) {
                                        break;
                                    } else {
                                        byteArrayOutputStream2.write(bArr, 0, i3);
                                    }
                                }
                                byteArrayOutputStream2.toByteArray();
                            }
                            try {
                                outputStream6.close();
                            } catch (IOException unused) {
                            }
                            if (inputStream7 != null) {
                                try {
                                    inputStream7.close();
                                } catch (IOException unused2) {
                                }
                            }
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                            }
                            httpURLConnection2.disconnect();
                        } catch (MalformedURLException unused4) {
                            i = responseCode;
                            InputStream inputStream8 = inputStream7;
                            outputStream2 = outputStream6;
                            inputStream6 = inputStream8;
                            if (outputStream2 != null) {
                                try {
                                    outputStream2.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (inputStream6 != null) {
                                try {
                                    inputStream6.close();
                                } catch (IOException unused6) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            responseCode = i;
                        } catch (ProtocolException unused8) {
                            i = responseCode;
                            InputStream inputStream9 = inputStream7;
                            outputStream3 = outputStream6;
                            inputStream5 = inputStream9;
                            if (outputStream3 != null) {
                                try {
                                    outputStream3.close();
                                } catch (IOException unused9) {
                                }
                            }
                            if (inputStream5 != null) {
                                try {
                                    inputStream5.close();
                                } catch (IOException unused10) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused11) {
                                }
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            responseCode = i;
                        } catch (IOException unused12) {
                            i = responseCode;
                            InputStream inputStream10 = inputStream7;
                            outputStream4 = outputStream6;
                            inputStream4 = inputStream10;
                            if (outputStream4 != null) {
                                try {
                                    outputStream4.close();
                                } catch (IOException unused13) {
                                }
                            }
                            if (inputStream4 != null) {
                                try {
                                    inputStream4.close();
                                } catch (IOException unused14) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused15) {
                                }
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            responseCode = i;
                        } catch (Exception unused16) {
                            i = responseCode;
                            InputStream inputStream11 = inputStream7;
                            outputStream5 = outputStream6;
                            inputStream3 = inputStream11;
                            if (outputStream5 != null) {
                                try {
                                    outputStream5.close();
                                } catch (IOException unused17) {
                                }
                            }
                            if (inputStream3 != null) {
                                try {
                                    inputStream3.close();
                                } catch (IOException unused18) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused19) {
                                }
                            }
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            responseCode = i;
                        }
                    } catch (Throwable th2) {
                        outputStream = outputStream6;
                        th = th2;
                        httpURLConnection = httpURLConnection2;
                        inputStream2 = null;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException unused20) {
                            }
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException unused21) {
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused22) {
                            }
                        }
                        if (httpURLConnection == null) {
                            throw th;
                        }
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (MalformedURLException unused23) {
                } catch (ProtocolException unused24) {
                } catch (IOException unused25) {
                } catch (Exception unused26) {
                }
            } catch (MalformedURLException unused27) {
                inputStream6 = null;
            } catch (ProtocolException unused28) {
                inputStream5 = null;
            } catch (IOException unused29) {
                inputStream4 = null;
            } catch (Exception unused30) {
                inputStream3 = null;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = httpURLConnection2;
                inputStream2 = null;
            }
        } catch (MalformedURLException unused31) {
            inputStream6 = null;
            httpURLConnection2 = null;
        } catch (ProtocolException unused32) {
            inputStream5 = null;
            httpURLConnection2 = null;
        } catch (IOException unused33) {
            inputStream4 = null;
            httpURLConnection2 = null;
        } catch (Exception unused34) {
            inputStream3 = null;
            httpURLConnection2 = null;
        } catch (Throwable th4) {
            th = th4;
            inputStream2 = null;
            httpURLConnection = null;
        }
        Log.d(TAG, "log send completed, http statusCode : " + responseCode);
    }

    private void doSendFileByAction(File file, Map<String, String> map, String str) throws Throwable {
        try {
            doPostRequest(str, new FileInputStream(file), map);
        } catch (FileNotFoundException unused) {
        }
    }

    @Override
    public void sendLog(File file) throws Throwable {
        doSendFileByAction(file, this.mRequestHeaders, this.mUploadLogUrl);
        finish();
        if (file.getName().contains(".copy")) {
            file.delete();
        }
    }

    public void setRequestHeader(Map<String, String> map) {
        this.mRequestHeaders.clear();
        if (map != null) {
            this.mRequestHeaders.putAll(map);
        }
    }

    public void setSendLogCallback(cc9 cc9Var) {
    }

    public void setUrl(String str) {
        this.mUploadLogUrl = str;
    }
}
