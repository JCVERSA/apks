package org.mozilla.javascript.tools;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import org.apache.commons.lang3.CharEncoding;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.commonjs.module.provider.ParsedContentType;

public class SourceReader {
    /* JADX WARN: Code duplicated, block: B:57:0x00a7  */
    public static Object readFileOrUrl(String str, boolean z, String str2) throws Throwable {
        String contentType;
        int contentLength;
        String str3;
        URL url = toUrl(str);
        InputStream inputStream = null;
        String encoding = null;
        try {
            if (url == null) {
                File file = new File(str);
                contentLength = (int) file.length();
                FileInputStream fileInputStream = new FileInputStream(file);
                str3 = null;
                inputStream = fileInputStream;
                contentType = null;
            } else {
                URLConnection uRLConnectionOpenConnection = url.openConnection();
                InputStream inputStream2 = uRLConnectionOpenConnection.getInputStream();
                if (z) {
                    try {
                        ParsedContentType parsedContentType = new ParsedContentType(uRLConnectionOpenConnection.getContentType());
                        contentType = parsedContentType.getContentType();
                        encoding = parsedContentType.getEncoding();
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } else {
                    contentType = null;
                }
                contentLength = uRLConnectionOpenConnection.getContentLength();
                if (contentLength > 1048576) {
                    contentLength = -1;
                }
                str3 = encoding;
                inputStream = inputStream2;
            }
            if (contentLength <= 0) {
                contentLength = 4096;
            }
            byte[] stream = Kit.readStream(inputStream, contentLength);
            if (inputStream != null) {
                inputStream.close();
            }
            if (!z) {
                return stream;
            }
            if (str3 != null) {
                str2 = str3;
            } else if (stream.length > 3 && stream[0] == -1 && stream[1] == -2 && stream[2] == 0 && stream[3] == 0) {
                str2 = "UTF-32LE";
            } else if (stream.length > 3 && stream[0] == 0 && stream[1] == 0 && stream[2] == -2 && stream[3] == -1) {
                str2 = "UTF-32BE";
            } else if (stream.length > 2 && stream[0] == -17 && stream[1] == -69 && stream[2] == -65) {
                str2 = "UTF-8";
            } else if (stream.length > 1 && stream[0] == -1 && stream[1] == -2) {
                str2 = CharEncoding.UTF_16LE;
            } else if (stream.length > 1 && stream[0] == -2 && stream[1] == -1) {
                str2 = CharEncoding.UTF_16BE;
            } else if (str2 == null) {
                if (url == null) {
                    str2 = System.getProperty("file.encoding");
                } else if (contentType == null || !contentType.startsWith("application/")) {
                    str2 = CharEncoding.US_ASCII;
                } else {
                    str2 = "UTF-8";
                }
            }
            String str4 = new String(stream, str2);
            return (str4.length() <= 0 || str4.charAt(0) != 65279) ? str4 : str4.substring(1);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static URL toUrl(String str) {
        if (str.indexOf(58) < 2) {
            return null;
        }
        try {
            return new URL(str);
        } catch (MalformedURLException unused) {
            return null;
        }
    }
}
