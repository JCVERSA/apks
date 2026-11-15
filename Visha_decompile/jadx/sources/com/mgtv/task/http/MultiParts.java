package com.mgtv.task.http;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.internal.AssetHelper;
import com.mgtv.json.JsonInterface;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

public class MultiParts implements JsonInterface {
    private String boundary = UUID.randomUUID().toString();
    private List<Part> parts = new ArrayList();

    public static class Part implements JsonInterface {
        private static final long serialVersionUID = -4650049538168025353L;
        String contentType;
        File file;
        String fileName;
        String name;
        String value;

        private Part() {
        }
    }

    public String getBoundary() {
        return this.boundary;
    }

    public List<Part> getParts() {
        return this.parts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultiParts put(@NonNull String str, @Nullable String str2) {
        Part part = null;
        Object[] objArr = 0;
        if (str2 != null) {
            Part part2 = new Part();
            part2.value = str2;
            part = part2;
        }
        part.contentType = AssetHelper.DEFAULT_MIME_TYPE;
        put(str, part);
        return this;
    }

    public MultiParts setBoundary(@NonNull String str) {
        this.boundary = str;
        return this;
    }

    public void writeTo(MultipartBody.Builder builder) {
        builder.setType(MultipartBody.FORM);
        for (Part part : this.parts) {
            if (part.file != null) {
                builder.addFormDataPart(part.name, part.fileName, RequestBody.create(MediaType.parse(part.contentType), part.file));
            } else {
                builder.addPart(MultipartBody.Part.createFormData(part.name, null, RequestBody.create(MediaType.parse(part.contentType), part.value)));
            }
        }
    }

    public MultiParts put(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull byte[] bArr) {
        Part part = new Part();
        part.fileName = str2;
        part.contentType = str3;
        put(str, part);
        return this;
    }

    public MultiParts put(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull byte[] bArr, int i, int i2) {
        Part part = new Part();
        part.fileName = str2;
        part.contentType = str3;
        put(str, part);
        return this;
    }

    public MultiParts put(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        Part part = new Part();
        part.fileName = str2;
        part.contentType = str3;
        part.file = file;
        put(str, part);
        return this;
    }

    private void put(@NonNull String str, @Nullable Part part) {
        Iterator<Part> it = this.parts.iterator();
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
        if (part == null) {
            if (i != -1) {
                this.parts.remove(i);
            }
        } else {
            part.name = str;
            if (i != -1) {
                this.parts.set(i, part);
            } else {
                this.parts.add(part);
            }
        }
    }
}
