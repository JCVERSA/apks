package com.apm.insight.k;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.apm.insight.CustomRequestHeader;
import com.apm.insight.MonitorCrash;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public final class i {

    private final String f19026a;

    private HttpURLConnection f19027b;

    private String f19028c;

    private boolean f19029d;

    private f f19030e;

    private k f19031f;

    public i(String str, String str2, boolean z10) throws IOException {
        this.f19028c = str2;
        this.f19029d = z10;
        String str3 = "AAA" + System.currentTimeMillis() + "AAA";
        this.f19026a = str3;
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        this.f19027b = httpURLConnection;
        httpURLConnection.setUseCaches(false);
        this.f19027b.setDoOutput(true);
        this.f19027b.setDoInput(true);
        this.f19027b.setRequestMethod("POST");
        CustomRequestHeader customRequestHeader = MonitorCrash.mCustomRequestHeader;
        if (customRequestHeader != null) {
            customRequestHeader.addRequestHeader(this.f19027b);
        }
        this.f19027b.setRequestProperty(HttpHeaders.CONTENT_TYPE, "multipart/form-data; boundary=" + str3);
        if (!z10) {
            this.f19030e = new f(this.f19027b.getOutputStream());
        } else {
            this.f19027b.setRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
            this.f19031f = new k(this.f19027b.getOutputStream());
        }
    }

    public final void a(String str, String str2) {
        b(str, str2);
    }

    public final void b(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f19026a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"\r\nContent-Type: text/plain; charset=");
        sb2.append(this.f19028c);
        sb2.append("\r\n\r\n");
        try {
            if (this.f19029d) {
                this.f19031f.write(sb2.toString().getBytes());
            } else {
                this.f19030e.write(sb2.toString().getBytes());
            }
        } catch (IOException unused) {
        }
        byte[] bytes = str2.getBytes();
        try {
            if (this.f19029d) {
                this.f19031f.write(bytes);
                this.f19031f.write("\r\n".getBytes());
            } else {
                this.f19030e.write(bytes);
                this.f19030e.write("\r\n".getBytes());
            }
        } catch (IOException unused2) {
        }
    }

    public final void a(String str, File... fileArr) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f19026a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"; filename=\"");
        sb2.append(str);
        sb2.append("\"\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f19029d) {
            this.f19031f.write(sb2.toString().getBytes());
        } else {
            this.f19030e.write(sb2.toString().getBytes());
        }
        if (this.f19029d) {
            com.apm.insight.l.f.a(this.f19031f, fileArr);
        } else {
            com.apm.insight.l.f.a(this.f19030e, fileArr);
        }
        if (this.f19029d) {
            this.f19031f.write("\r\n".getBytes());
        } else {
            this.f19030e.write("\r\n".getBytes());
            this.f19030e.flush();
        }
    }

    public final void a(String str, File file, Map<String, String> map) throws IOException {
        String name = file.getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f19026a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"; filename=\"");
        sb2.append(name);
        sb2.append("\"");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append("; ");
            sb2.append(entry.getKey());
            sb2.append("=\"");
            sb2.append(entry.getValue());
            sb2.append("\"");
        }
        sb2.append("\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f19029d) {
            this.f19031f.write(sb2.toString().getBytes());
        } else {
            this.f19030e.write(sb2.toString().getBytes());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = fileInputStream.read(bArr);
            if (i10 == -1) {
                break;
            } else if (this.f19029d) {
                this.f19031f.write(bArr, 0, i10);
            } else {
                this.f19030e.write(bArr, 0, i10);
            }
        }
        fileInputStream.close();
        if (this.f19029d) {
            this.f19031f.write("\r\n".getBytes());
        } else {
            this.f19030e.write("\r\n".getBytes());
            this.f19030e.flush();
        }
    }

    public final String a() throws IOException {
        ArrayList arrayList = new ArrayList();
        byte[] bytes = ("\r\n--" + this.f19026a + "--\r\n").getBytes();
        if (this.f19029d) {
            this.f19031f.write(bytes);
            this.f19031f.b();
            this.f19031f.a();
        } else {
            this.f19030e.write(bytes);
            this.f19030e.flush();
            this.f19030e.a();
        }
        int responseCode = this.f19027b.getResponseCode();
        if (responseCode == 200) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f19027b.getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                arrayList.add(line);
            }
            bufferedReader.close();
            this.f19027b.disconnect();
            StringBuilder sb2 = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
            }
            return sb2.toString();
        }
        throw new IOException("Server returned non-OK status: ".concat(String.valueOf(responseCode)));
    }
}
