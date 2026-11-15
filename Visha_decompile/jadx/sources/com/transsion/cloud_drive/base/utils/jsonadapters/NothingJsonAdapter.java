package com.transsion.cloud_drive.base.utils.jsonadapters;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import defpackage.rc5;
import defpackage.uoa;
import defpackage.y45;
import defpackage.z64;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/cloud_drive/base/utils/jsonadapters/NothingJsonAdapter;", "Lcom/squareup/moshi/e;", "", MethodDecl.initName, "()V", "Lcom/squareup/moshi/JsonReader;", "p0", "fromJson", "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Void;", "Lrc5;", "p1", "Lzfb;", "toJson", "(Lrc5;Ljava/lang/Void;)V", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NothingJsonAdapter extends e {
    @Override
    @z64
    public Void fromJson(JsonReader p0) {
        y45.j(p0, "p0");
        return null;
    }

    @Override
    @uoa
    public void toJson(rc5 p0, Void p1) {
        y45.j(p0, "p0");
    }
}
