package defpackage;

import com.hisavana.common.constant.ComConstants;
import com.transsion.push.utils.PushLogUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public abstract class vt4 {
    public static long a(InputStream inputStream, OutputStream outputStream) {
        return b(inputStream, outputStream, 8024);
    }

    public static long b(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 <= 0) {
                return j;
            }
            outputStream.write(bArr, 0, i2);
            j += (long) i2;
        }
    }

    public static byte[] c(String str, byte[] bArr) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
        httpURLConnection.setReadTimeout(ComConstants.AD_TIMEOUT_MILLIS);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("User-Agent", "push");
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArr);
        outputStream.flush();
        PushLogUtils.LOG.g("response code:" + httpURLConnection.getResponseCode());
        if (httpURLConnection.getResponseCode() >= 400) {
            return null;
        }
        return d(httpURLConnection.getInputStream());
    }

    public static byte[] d(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
