package com.lzy.okgo.request.base;

import android.text.TextUtils;
import com.lzy.okgo.model.HttpParams;
import com.lzy.okgo.request.base.BodyRequest;
import defpackage.ie7;
import defpackage.ut4;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.List;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class BodyRequest<T, R extends BodyRequest> extends Request<T, R> {
    private static final long serialVersionUID = -6459175248476927501L;
    protected byte[] bs;
    protected String content;
    protected transient File file;
    protected boolean isMultipart;
    protected boolean isSpliceUrl;
    protected transient MediaType mediaType;
    protected RequestBody requestBody;

    public BodyRequest(String str) {
        super(str);
        this.isMultipart = false;
        this.isSpliceUrl = false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mediaType = MediaType.parse(str);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MediaType mediaType = this.mediaType;
        objectOutputStream.writeObject(mediaType == null ? "" : mediaType.getMediaType());
    }

    public Object m89addFileParams(String str, List list) {
        return addFileParams(str, (List<File>) list);
    }

    public Object m90addFileWrapperParams(String str, List list) {
        return addFileWrapperParams(str, (List<HttpParams.FileWrapper>) list);
    }

    @Override
    public RequestBody generateRequestBody() {
        MediaType mediaType;
        MediaType mediaType2;
        MediaType mediaType3;
        if (this.isSpliceUrl) {
            this.url = ut4.c(this.baseUrl, this.params.urlParamsMap);
        }
        RequestBody requestBody = this.requestBody;
        if (requestBody != null) {
            return requestBody;
        }
        String str = this.content;
        if (str != null && (mediaType3 = this.mediaType) != null) {
            return RequestBody.create(mediaType3, str);
        }
        byte[] bArr = this.bs;
        if (bArr != null && (mediaType2 = this.mediaType) != null) {
            return RequestBody.create(mediaType2, bArr);
        }
        File file = this.file;
        return (file == null || (mediaType = this.mediaType) == null) ? ut4.d(this.params, this.isMultipart) : RequestBody.create(mediaType, file);
    }

    public okhttp3.Request.Builder generateRequestBuilder(RequestBody requestBody) {
        try {
            headers("Content-Length", String.valueOf(requestBody.contentLength()));
        } catch (IOException e) {
            ie7.a(e);
        }
        return ut4.a(new okhttp3.Request.Builder(), this.headers);
    }

    public R addFileParams(String str, List<File> list) {
        this.params.putFileParams(str, list);
        return this;
    }

    public R addFileWrapperParams(String str, List<HttpParams.FileWrapper> list) {
        this.params.putFileWrapperParams(str, list);
        return this;
    }

    public R m91isMultipart(boolean z) {
        this.isMultipart = z;
        return this;
    }

    public R m92isSpliceUrl(boolean z) {
        this.isSpliceUrl = z;
        return this;
    }

    public R m103upRequestBody(RequestBody requestBody) {
        this.requestBody = requestBody;
        return this;
    }

    public R m96upBytes(byte[] bArr) {
        this.bs = bArr;
        this.mediaType = HttpParams.MEDIA_TYPE_STREAM;
        return this;
    }

    public R m98upFile(File file) {
        this.file = file;
        this.mediaType = ut4.j(file.getName());
        return this;
    }

    public R m104upString(String str) {
        this.content = str;
        this.mediaType = HttpParams.MEDIA_TYPE_PLAIN;
        return this;
    }

    public R m93params(String str, File file) {
        this.params.put(str, file);
        return this;
    }

    public R m100upJson(String str) {
        this.content = str;
        this.mediaType = HttpParams.MEDIA_TYPE_JSON;
        return this;
    }

    public R m94params(String str, File file, String str2) {
        this.params.put(str, file, str2);
        return this;
    }

    public R m97upBytes(byte[] bArr, MediaType mediaType) {
        this.bs = bArr;
        this.mediaType = mediaType;
        return this;
    }

    public R m99upFile(File file, MediaType mediaType) {
        this.file = file;
        this.mediaType = mediaType;
        return this;
    }

    public R m105upString(String str, MediaType mediaType) {
        this.content = str;
        this.mediaType = mediaType;
        return this;
    }

    public R m95params(String str, File file, String str2, MediaType mediaType) {
        this.params.put(str, file, str2, mediaType);
        return this;
    }

    public R m102upJson(JSONObject jSONObject) {
        this.content = jSONObject.toString();
        this.mediaType = HttpParams.MEDIA_TYPE_JSON;
        return this;
    }

    public R m101upJson(JSONArray jSONArray) {
        this.content = jSONArray.toString();
        this.mediaType = HttpParams.MEDIA_TYPE_JSON;
        return this;
    }
}
