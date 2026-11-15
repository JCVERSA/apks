package com.mgtv.task.http;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;

public class b implements com.mgtv.task.c<HttpRequestObject, HttpResponseObject> {
    private Context a;
    private final Collection<String> b = new HashSet();

    public b(@NonNull Context context) {
        this.a = context.getApplicationContext();
    }

    private File d(HttpRequestObject httpRequestObject) {
        if (this.a == null) {
            return null;
        }
        File file = new File(this.a.getCacheDir(), "http_cache");
        a(file);
        return new File(file, j.a(c(httpRequestObject)));
    }

    public String c(HttpRequestObject httpRequestObject) {
        StringBuilder sb = new StringBuilder(httpRequestObject.url);
        if (httpRequestObject.params != null) {
            for (HttpParams.Type type : HttpParams.Type.values()) {
                sb.append("||");
                for (Map.Entry<String, String> entry : httpRequestObject.params.getParams(type).entrySet()) {
                    if (a(entry.getKey())) {
                        sb.append(entry.getKey());
                        sb.append("=");
                        sb.append(entry.getValue());
                    }
                }
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.mgtv.task.http.HttpRequestObject] */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.Closeable] */
    @Override
    @WorkerThread
    public HttpResponseObject b(HttpRequestObject httpRequestObject) throws Throwable {
        OutputStream outputStream;
        OutputStream outputStream2;
        OutputStream outputStream3;
        File fileD = d(httpRequestObject);
        if (httpRequestObject.channel == null) {
            return (HttpResponseObject) com.mgtv.json.a.a(j.a(fileD), HttpResponseObject.class);
        }
        HttpResponseObject httpResponseObject = new HttpResponseObject();
        byte[] bArr = new byte[16384];
        FileInputStream fileInputStream = null;
        outputStreamA = null;
        outputStreamA = null;
        outputStreamA = null;
        OutputStream outputStreamA = null;
        fileInputStream = null;
        fileInputStream = null;
        fileInputStream = null;
        fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileD);
                try {
                    outputStreamA = httpRequestObject.channel.a();
                    while (true) {
                        int i = fileInputStream2.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        outputStreamA.write(bArr, 0, i);
                    }
                    httpResponseObject.channel = httpRequestObject.channel;
                    j.a((Closeable) fileInputStream2);
                    j.a(outputStreamA);
                } catch (FileNotFoundException e) {
                    e = e;
                    outputStream3 = outputStreamA;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    httpRequestObject = outputStream3;
                    j.a((Closeable) fileInputStream);
                    j.a((Closeable) httpRequestObject);
                } catch (IOException e2) {
                    e = e2;
                    outputStream2 = outputStreamA;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    httpRequestObject = outputStream2;
                    j.a((Closeable) fileInputStream);
                    j.a((Closeable) httpRequestObject);
                } catch (NullPointerException e3) {
                    e = e3;
                    outputStream = outputStreamA;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    httpRequestObject = outputStream;
                    j.a((Closeable) fileInputStream);
                    j.a((Closeable) httpRequestObject);
                } catch (Throwable th) {
                    th = th;
                    httpRequestObject = outputStreamA;
                    fileInputStream = fileInputStream2;
                    j.a((Closeable) fileInputStream);
                    j.a((Closeable) httpRequestObject);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            outputStream3 = null;
        } catch (IOException e5) {
            e = e5;
            outputStream2 = null;
        } catch (NullPointerException e6) {
            e = e6;
            outputStream = null;
        } catch (Throwable th3) {
            th = th3;
            httpRequestObject = 0;
        }
        return httpResponseObject;
    }

    @Override
    @WorkerThread
    public boolean a(HttpRequestObject httpRequestObject) {
        File fileD = d(httpRequestObject);
        if (fileD == null) {
            return false;
        }
        return fileD.exists();
    }

    @Override
    @WorkerThread
    public void a(HttpRequestObject httpRequestObject, HttpResponseObject httpResponseObject) throws Throwable {
        FileOutputStream fileOutputStream;
        File fileD = d(httpRequestObject);
        if (fileD == null) {
            return;
        }
        a aVar = httpResponseObject.channel;
        if (aVar != null) {
            byte[] bArr = new byte[16384];
            InputStream inputStream = null;
            try {
                try {
                    InputStream inputStreamB = aVar.b();
                    try {
                        fileOutputStream = new FileOutputStream(fileD);
                        while (true) {
                            try {
                                int i = inputStreamB.read(bArr);
                                if (i == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, i);
                                }
                            } catch (FileNotFoundException e) {
                                e = e;
                                inputStream = inputStreamB;
                                e.printStackTrace();
                                j.a((Closeable) inputStream);
                            } catch (IOException e2) {
                                e = e2;
                                inputStream = inputStreamB;
                                e.printStackTrace();
                                j.a((Closeable) inputStream);
                            } catch (Throwable th) {
                                th = th;
                                inputStream = inputStreamB;
                                j.a((Closeable) inputStream);
                                j.a(fileOutputStream);
                                throw th;
                            }
                        }
                        j.a((Closeable) inputStreamB);
                    } catch (FileNotFoundException e3) {
                        e = e3;
                        fileOutputStream = null;
                    } catch (IOException e4) {
                        e = e4;
                        fileOutputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                fileOutputStream = null;
            } catch (IOException e6) {
                e = e6;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
            j.a(fileOutputStream);
            return;
        }
        j.a(com.mgtv.json.a.a(httpResponseObject, (Class<? extends HttpResponseObject>) HttpResponseObject.class), fileD);
    }

    public void a(@Nullable Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        this.b.addAll(collection);
    }

    public boolean a(String str) {
        str.hashCode();
        switch (str) {
            case "app_version":
            case "network_type":
            case "seqId":
            case "appVersion":
                return false;
            default:
                return !this.b.contains(str);
        }
    }

    private boolean a(File file) {
        return file != null && (file.mkdirs() || file.isDirectory());
    }
}
