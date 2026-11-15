package com.android.volley.toolbox;

import androidx.annotation.Nullable;
import com.android.volley.Request;
import java.io.UnsupportedEncodingException;

public abstract class k extends Request {
    protected static final String PROTOCOL_CHARSET = "utf-8";
    private static final String PROTOCOL_CONTENT_TYPE = String.format("application/json; charset=%s", "utf-8");

    @Nullable
    private com.android.volley.i.b mListener;
    private final Object mLock;

    @Nullable
    private final String mRequestBody;

    public k(int i10, String str, String str2, com.android.volley.i.b bVar, com.android.volley.i.a aVar) {
        super(i10, str, aVar);
        this.mLock = new Object();
        this.mListener = bVar;
        this.mRequestBody = str2;
    }

    @Override
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override
    protected void deliverResponse(Object obj) {
        com.android.volley.i.b bVar;
        synchronized (this.mLock) {
            bVar = this.mListener;
        }
        if (bVar != null) {
            bVar.onResponse(obj);
        }
    }

    @Override
    public byte[] getBody() {
        try {
            String str = this.mRequestBody;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            com.android.volley.l.f("Unsupported Encoding while trying to get the bytes of %s using %s", this.mRequestBody, "utf-8");
            return null;
        }
    }

    @Override
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }
}
