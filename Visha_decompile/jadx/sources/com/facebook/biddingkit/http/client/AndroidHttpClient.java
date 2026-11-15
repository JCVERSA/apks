package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.net.ssl.HttpsURLConnection;

public class AndroidHttpClient {
    private static final String TAG = "AndroidHttpClient";
    private Set<String> pinnedCertificates;
    private Set<String> pinnedPublicKeys;
    protected int connectionTimeout = 2000;
    protected int readTimeout = 8000;
    protected String UTF8 = "UTF-8";
    private int mMaxRetries = 3;
    private boolean mIsConnected = false;
    private Map<String, String> requestHeaders = new TreeMap();

    private void appendRequestHeaders(HttpURLConnection httpURLConnection) {
        for (String str : this.requestHeaders.keySet()) {
            httpURLConnection.setRequestProperty(str, this.requestHeaders.get(str));
        }
        httpURLConnection.setRequestProperty("Accept-Charset", this.UTF8);
    }

    private int fib(int i) {
        return (i <= 1 || i > 20) ? i : fib(i - 1) + fib(i - 2);
    }

    private byte[] readStream(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public AndroidHttpClient addHeader(String str, String str2) {
        this.requestHeaders.put(str, str2);
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x009c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.facebook.biddingkit.http.client.AndroidHttpClient] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v5 */
    public HttpResponse doHttpMethod(String str, HttpMethod httpMethod, String str2, byte[] bArr) throws Throwable {
        boolean z = false;
        ?? r2 = 0;
        try {
            try {
                this.mIsConnected = false;
                HttpURLConnection httpURLConnectionOpenConnection = openConnection(str);
                try {
                    prepareConnection(httpURLConnectionOpenConnection, httpMethod, str2);
                    appendRequestHeaders(httpURLConnectionOpenConnection);
                    httpURLConnectionOpenConnection.connect();
                    this.mIsConnected = true;
                    Set<String> set = this.pinnedCertificates;
                    boolean z2 = (set == null || set.isEmpty()) ? false : true;
                    Set<String> set2 = this.pinnedPublicKeys;
                    if (set2 != null && !set2.isEmpty()) {
                        z = true;
                    }
                    if ((httpURLConnectionOpenConnection instanceof HttpsURLConnection) && (z2 || z)) {
                        try {
                            KeyPinningValidator.validatePinning((HttpsURLConnection) httpURLConnectionOpenConnection, this.pinnedCertificates, this.pinnedPublicKeys);
                        } catch (Exception e) {
                            Log.e(TAG, "Unable to validate SSL certificates: ", e);
                        }
                    }
                    if (httpURLConnectionOpenConnection.getDoOutput() && bArr != null) {
                        writeOutputStream(httpURLConnectionOpenConnection, bArr);
                    }
                    HttpResponse inputStream = httpURLConnectionOpenConnection.getDoInput() ? readInputStream(httpURLConnectionOpenConnection) : new HttpResponse(httpURLConnectionOpenConnection, null);
                    httpURLConnectionOpenConnection.disconnect();
                    return inputStream;
                } catch (Exception e2) {
                    e = e2;
                    str = httpURLConnectionOpenConnection;
                    try {
                        try {
                            HttpResponse errorStream = readErrorStream(str);
                            if (errorStream == null || errorStream.getStatus() <= 0) {
                                throw new HttpRequestException(e, errorStream);
                            }
                            if (str != 0) {
                                str.disconnect();
                            }
                            return errorStream;
                        } catch (Throwable unused) {
                            throw new HttpRequestException(e, null);
                        }
                    } catch (Exception unused2) {
                        Log.e(TAG, "Failed http method: ", e);
                        throw new HttpRequestException(e, null);
                    }
                }
            } catch (Throwable th) {
                th = th;
                r2 = str;
                if (r2 != 0) {
                    r2.disconnect();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            str = 0;
        } catch (Throwable th2) {
            th = th2;
            if (r2 != 0) {
                r2.disconnect();
            }
            throw th;
        }
    }

    public HttpResponse execute(HttpRequest httpRequest) {
        try {
            return tryMany(httpRequest);
        } catch (HttpRequestException e) {
            Log.e(TAG, "Unable to send request and got a HttpRequestException: ", e);
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "Unable to send request and got a RuntimeException: ", new HttpRequestException(e2, null));
            return null;
        }
    }

    public HttpResponse get(String str, Map<String, String> map) {
        return execute(new HttpGet(str, map));
    }

    public int getNextTimeout(int i) {
        return fib(i + 2) * 1000;
    }

    public Map<String, String> getRequestHeaders() {
        return this.requestHeaders;
    }

    public boolean isRecoverable(HttpRequestException httpRequestException) {
        HttpResponse httpResponse = httpRequestException.getHttpResponse();
        return httpResponse != null && httpResponse.getStatus() > 0;
    }

    public boolean isTimeoutException(Throwable th, long j) {
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        if (this.mIsConnected) {
            return jCurrentTimeMillis >= ((long) this.readTimeout);
        }
        return jCurrentTimeMillis >= ((long) this.connectionTimeout);
    }

    public HttpURLConnection openConnection(String str) throws IOException {
        try {
            return (HttpURLConnection) new URL(str).openConnection();
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + " is not a valid URL", e);
        }
    }

    public HttpResponse post(String str, String str2, byte[] bArr) {
        return execute(new HttpPost(str, null, str2, bArr));
    }

    public void prepareConnection(HttpURLConnection httpURLConnection, HttpMethod httpMethod, String str) throws IOException {
        httpURLConnection.setConnectTimeout(this.connectionTimeout);
        httpURLConnection.setReadTimeout(this.readTimeout);
        httpURLConnection.setRequestMethod(httpMethod.getMethodName());
        httpURLConnection.setDoOutput(httpMethod.getDoOutput());
        httpURLConnection.setDoInput(httpMethod.getDoInput());
        if (str != null) {
            httpURLConnection.setRequestProperty("Content-Type", str);
        }
    }

    public HttpResponse readErrorStream(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStream = null;
        byte[] stream = null;
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                try {
                    stream = readStream(errorStream);
                } catch (Throwable th) {
                    th = th;
                    inputStream = errorStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            HttpResponse httpResponse = new HttpResponse(httpURLConnection, stream);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused2) {
                }
            }
            return httpResponse;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public HttpResponse readInputStream(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStream = null;
        byte[] stream = null;
        try {
            InputStream inputStream2 = httpURLConnection.getInputStream();
            if (inputStream2 != null) {
                try {
                    stream = readStream(inputStream2);
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStream2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            HttpResponse httpResponse = new HttpResponse(httpURLConnection, stream);
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
            }
            return httpResponse;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void setConnectionTimeout(int i) {
        this.connectionTimeout = i;
    }

    public void setMaxRetries(int i) {
        if (i < 1 || i > 18) {
            throw new IllegalArgumentException("Maximum retries must be between 1 and 18");
        }
        this.mMaxRetries = i;
    }

    public void setPinnedCertificates(Set<String> set) {
        this.pinnedCertificates = set;
    }

    public void setPinnedPublicKeys(Set<String> set) {
        this.pinnedPublicKeys = set;
    }

    public void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public HttpResponse tryMany(HttpRequest httpRequest) throws Throwable {
        long jCurrentTimeMillis = System.currentTimeMillis();
        HttpResponse httpResponseDoHttpMethod = null;
        for (int i = 0; i < this.mMaxRetries; i++) {
            try {
                setConnectionTimeout(getNextTimeout(i));
                jCurrentTimeMillis = System.currentTimeMillis();
                httpResponseDoHttpMethod = doHttpMethod(httpRequest.getPath(), httpRequest.getHttpMethod(), httpRequest.getContentType(), httpRequest.getContent());
                if (httpResponseDoHttpMethod != null) {
                    return httpResponseDoHttpMethod;
                }
            } catch (HttpRequestException e) {
                if (isTimeoutException(e, jCurrentTimeMillis) && i < this.mMaxRetries - 1) {
                    continue;
                } else {
                    if (!isRecoverable(e) || i >= this.mMaxRetries - 1) {
                        Log.e(TAG, "Unable to send request: ", e);
                        return httpResponseDoHttpMethod;
                    }
                    try {
                        Thread.sleep(this.connectionTimeout);
                    } catch (InterruptedException e2) {
                        Log.e(TAG, "App is stopping: ", e2);
                    }
                }
            }
        }
        return httpResponseDoHttpMethod;
    }

    public int writeOutputStream(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStream;
        try {
            outputStream = httpURLConnection.getOutputStream();
            if (outputStream != null) {
                try {
                    outputStream.write(bArr);
                } catch (Throwable th) {
                    th = th;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
            }
            return responseCode;
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
    }
}
