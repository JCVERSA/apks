package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

public class j22 implements at5 {
    public final HttpURLConnection b;

    public j22(HttpURLConnection httpURLConnection) {
        this.b = httpURLConnection;
    }

    @Override
    public InputStream A() {
        return this.b.getInputStream();
    }

    public final String a(HttpURLConnection httpURLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        }
        bufferedReader.close();
        return sb.toString();
    }

    @Override
    public void close() {
        this.b.disconnect();
    }

    @Override
    public String error() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.b.getURL() + ". Failed with " + this.b.getResponseCode() + "\n" + a(this.b);
        } catch (IOException e) {
            mq5.d("get error failed ", e);
            return e.getMessage();
        }
    }

    @Override
    public boolean isSuccessful() {
        try {
            return this.b.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override
    public String z() {
        return this.b.getContentType();
    }
}
