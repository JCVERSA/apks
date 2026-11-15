package com.mgadplus.netlib.base;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.internal.AssetHelper;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

public class g implements Serializable {
    private String boundary = UUID.randomUUID().toString();
    private List<a> parts = new ArrayList();

    public static class a implements Serializable {
        private static final long serialVersionUID = -4650049538168025353L;
        String contentType;
        File file;
        String fileName;
        String name;
        String value;

        private a() {
        }
    }

    public String getBoundary() {
        return this.boundary;
    }

    public List<a> getParts() {
        return this.parts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g put(@NonNull String str, @Nullable String str2) {
        a aVar = null;
        Object[] objArr = 0;
        if (str2 != null) {
            a aVar2 = new a();
            aVar2.value = str2;
            aVar = aVar2;
        }
        aVar.contentType = AssetHelper.DEFAULT_MIME_TYPE;
        put(str, aVar);
        return this;
    }

    public g setBoundary(@NonNull String str) {
        this.boundary = str;
        return this;
    }

    public void writeTo(MultipartBody.Builder builder) {
        builder.setType(MultipartBody.FORM);
        for (a aVar : this.parts) {
            if (aVar.file != null) {
                builder.addFormDataPart(aVar.name, aVar.fileName, RequestBody.create(MediaType.parse(aVar.contentType), aVar.file));
            } else {
                builder.addPart(MultipartBody.Part.createFormData(aVar.name, null, RequestBody.create(MediaType.parse(aVar.contentType), aVar.value)));
            }
        }
    }

    public g put(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull byte[] bArr) {
        a aVar = new a();
        aVar.fileName = str2;
        aVar.contentType = str3;
        put(str, aVar);
        return this;
    }

    public g put(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull byte[] bArr, int i, int i2) {
        a aVar = new a();
        aVar.fileName = str2;
        aVar.contentType = str3;
        put(str, aVar);
        return this;
    }

    public g put(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        a aVar = new a();
        aVar.fileName = str2;
        aVar.contentType = str3;
        aVar.file = file;
        put(str, aVar);
        return this;
    }

    private void put(@NonNull String str, @Nullable a aVar) {
        Iterator<a> it = this.parts.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().name.equals(str)) {
                break;
            } else {
                i++;
            }
        }
        if (aVar == null) {
            if (i != -1) {
                this.parts.remove(i);
            }
        } else {
            aVar.name = str;
            if (i != -1) {
                this.parts.set(i, aVar);
            } else {
                this.parts.add(aVar);
            }
        }
    }
}
