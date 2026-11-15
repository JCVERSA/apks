package defpackage;

import android.text.TextUtils;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.HttpParams;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public abstract class ut4 {
    public static Request.Builder a(Request.Builder builder, HttpHeaders httpHeaders) {
        if (httpHeaders.headersMap.isEmpty()) {
            return builder;
        }
        Headers.Builder builder2 = new Headers.Builder();
        try {
            for (Map.Entry<String, String> entry : httpHeaders.headersMap.entrySet()) {
                builder2.add(entry.getKey(), entry.getValue());
            }
        } catch (Exception e) {
            ie7.a(e);
        }
        builder.headers(builder2.build());
        return builder;
    }

    public static Object b(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public static String c(String str, Map map) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (str.indexOf(38) > 0 || str.indexOf(63) > 0) {
                sb.append("&");
            } else {
                sb.append("?");
            }
            for (Map.Entry entry : map.entrySet()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    String strEncode = URLEncoder.encode((String) it.next(), "UTF-8");
                    sb.append((String) entry.getKey());
                    sb.append("=");
                    sb.append(strEncode);
                    sb.append("&");
                }
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            ie7.a(e);
            return str;
        }
    }

    public static RequestBody d(HttpParams httpParams, boolean z) {
        if (httpParams.fileParamsMap.isEmpty() && !z) {
            FormBody.Builder builder = new FormBody.Builder();
            for (String str : httpParams.urlParamsMap.keySet()) {
                Iterator<String> it = httpParams.urlParamsMap.get(str).iterator();
                while (it.hasNext()) {
                    builder.addEncoded(str, it.next());
                }
            }
            return builder.build();
        }
        MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
        if (!httpParams.urlParamsMap.isEmpty()) {
            for (Map.Entry<String, List<String>> entry : httpParams.urlParamsMap.entrySet()) {
                Iterator<String> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    type.addFormDataPart(entry.getKey(), it2.next());
                }
            }
        }
        for (Map.Entry<String, List<HttpParams.FileWrapper>> entry2 : httpParams.fileParamsMap.entrySet()) {
            for (HttpParams.FileWrapper fileWrapper : entry2.getValue()) {
                type.addFormDataPart(entry2.getKey(), fileWrapper.fileName, RequestBody.create(fileWrapper.contentType, fileWrapper.file));
            }
        }
        return type.build();
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        String strReplaceAll = str.replaceAll("\"", "");
        int iIndexOf = strReplaceAll.indexOf("filename=");
        int iIndexOf2 = strReplaceAll.indexOf("filename*=");
        if (iIndexOf != -1 && iIndexOf2 == -1) {
            return strReplaceAll.substring(iIndexOf + 9);
        }
        if (iIndexOf2 == -1) {
            return null;
        }
        String strSubstring = strReplaceAll.substring(iIndexOf2 + 10);
        return strSubstring.startsWith("UTF-8''") ? strSubstring.substring(7) : strSubstring;
    }

    public static String f(Response response) {
        String strHeader = response.header(HttpHeaders.HEAD_KEY_CONTENT_DISPOSITION);
        if (strHeader == null) {
            return null;
        }
        String strReplaceAll = strHeader.replaceAll("\"", "");
        int iIndexOf = strReplaceAll.indexOf("filename=");
        int iIndexOf2 = strReplaceAll.indexOf("filename*=");
        if (iIndexOf != -1 && iIndexOf2 == -1) {
            return strReplaceAll.substring(iIndexOf + 9);
        }
        if (iIndexOf2 == -1) {
            return null;
        }
        String strSubstring = strReplaceAll.substring(iIndexOf2 + 10);
        return strSubstring.startsWith("UTF-8''") ? strSubstring.substring(7) : strSubstring;
    }

    public static String g(String str, String str2) {
        String strE = e(str);
        if (TextUtils.isEmpty(strE)) {
            strE = i(str2);
        }
        if (TextUtils.isEmpty(strE)) {
            strE = "unknownfile_" + System.currentTimeMillis();
        }
        try {
            return URLDecoder.decode(strE, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            ie7.a(e);
            return strE;
        }
    }

    public static String h(Response response, String str) {
        String strF = f(response);
        if (TextUtils.isEmpty(strF)) {
            strF = i(str);
        }
        if (TextUtils.isEmpty(strF)) {
            strF = "unknownfile_" + System.currentTimeMillis();
        }
        try {
            return URLDecoder.decode(strF, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            ie7.a(e);
            return strF;
        }
    }

    public static String i(String str) {
        int iIndexOf;
        String[] strArrSplit = str.split("/");
        for (String str2 : strArrSplit) {
            if (str2.contains("?") && (iIndexOf = str2.indexOf("?")) != -1) {
                return str2.substring(0, iIndexOf);
            }
        }
        if (strArrSplit.length > 0) {
            return strArrSplit[strArrSplit.length - 1];
        }
        return null;
    }

    public static MediaType j(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str.replace("#", ""));
        return contentTypeFor == null ? HttpParams.MEDIA_TYPE_STREAM : MediaType.parse(contentTypeFor);
    }

    public static void k(Runnable runnable) {
        fe7.i().h().post(runnable);
    }
}
