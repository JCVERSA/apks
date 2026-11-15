package v4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

public class a implements c {

    private final HttpURLConnection f73449a;

    public a(HttpURLConnection httpURLConnection) {
        this.f73449a = httpURLConnection;
    }

    private String b(HttpURLConnection httpURLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb2.append(line);
                    sb2.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th2;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }

    @Override
    public InputStream M() {
        return this.f73449a.getInputStream();
    }

    @Override
    public void close() {
        this.f73449a.disconnect();
    }

    @Override
    public String error() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.f73449a.getURL() + ". Failed with " + this.f73449a.getResponseCode() + "\n" + b(this.f73449a);
        } catch (IOException e10) {
            x4.f.d("get error failed ", e10);
            return e10.getMessage();
        }
    }

    @Override
    public boolean isSuccessful() {
        try {
            return this.f73449a.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override
    public String z() {
        return this.f73449a.getContentType();
    }
}
