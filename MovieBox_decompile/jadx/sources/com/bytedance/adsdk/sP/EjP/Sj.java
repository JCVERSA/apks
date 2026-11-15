package com.bytedance.adsdk.sP.EjP;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

public class Sj implements EjP {
    private final HttpURLConnection Sj;

    public Sj(HttpURLConnection httpURLConnection) {
        this.Sj = httpURLConnection;
    }

    @Override
    public String EjP() {
        try {
            if (Sj()) {
                return null;
            }
            return "Unable to fetch " + this.Sj.getURL() + ". Failed with " + this.Sj.getResponseCode() + "\n" + Sj(this.Sj);
        } catch (IOException e10) {
            return e10.getMessage();
        }
    }

    @Override
    public boolean Sj() {
        try {
            return this.Sj.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override
    public String TKC() {
        return this.Sj.getContentType();
    }

    @Override
    public void close() {
        this.Sj.disconnect();
    }

    @Override
    public InputStream sP() throws IOException {
        return this.Sj.getInputStream();
    }

    private String Sj(HttpURLConnection httpURLConnection) throws IOException {
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
}
