package com.transsion.cloud_drive.base.api.request;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import com.squareup.moshi.j;
import defpackage.rc5;
import defpackage.wkb;
import defpackage.y45;
import defpackage.ye9;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0015R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0017R\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;", "Lcom/squareup/moshi/e;", "Lcom/transsion/cloud_drive/base/api/request/MccMap;", "Lcom/squareup/moshi/j;", "moshi", MethodDecl.initName, "(Lcom/squareup/moshi/j;)V", "", "toString", "()Ljava/lang/String;", "Lcom/squareup/moshi/JsonReader;", "reader", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/request/MccMap;", "Lrc5;", "writer", "value_", "Lzfb;", "b", "(Lrc5;Lcom/transsion/cloud_drive/base/api/request/MccMap;)V", "Lcom/squareup/moshi/JsonReader$b;", "Lcom/squareup/moshi/JsonReader$b;", "options", "Lcom/squareup/moshi/e;", "stringAdapter", "Ljava/lang/reflect/Constructor;", "c", "Ljava/lang/reflect/Constructor;", "constructorRef", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GeneratedJsonAdapter extends e {

    public final JsonReader.b options;

    public final e stringAdapter;

    public volatile Constructor constructorRef;

    public GeneratedJsonAdapter(j jVar) {
        y45.j(jVar, "moshi");
        JsonReader.b bVarA = JsonReader.b.a("ipMcc", "oobeMcc", "accountMcc", "simMcc");
        y45.i(bVarA, "of(...)");
        this.options = bVarA;
        e eVarF = jVar.f(String.class, ye9.f(), "ipMcc");
        y45.i(eVarF, "adapter(...)");
        this.stringAdapter = eVarF;
    }

    @Override
    public MccMap fromJson(JsonReader reader) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        y45.j(reader, "reader");
        reader.d();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = -1;
        while (reader.k()) {
            int iO = reader.O(this.options);
            if (iO == -1) {
                reader.S();
                reader.T();
            } else if (iO == 0) {
                str = (String) this.stringAdapter.fromJson(reader);
                if (str == null) {
                    JsonDataException jsonDataExceptionW = wkb.w("ipMcc", "ipMcc", reader);
                    y45.i(jsonDataExceptionW, "unexpectedNull(...)");
                    throw jsonDataExceptionW;
                }
                i &= -2;
            } else if (iO == 1) {
                str2 = (String) this.stringAdapter.fromJson(reader);
                if (str2 == null) {
                    JsonDataException jsonDataExceptionW2 = wkb.w("oobeMcc", "oobeMcc", reader);
                    y45.i(jsonDataExceptionW2, "unexpectedNull(...)");
                    throw jsonDataExceptionW2;
                }
                i &= -3;
            } else if (iO == 2) {
                str3 = (String) this.stringAdapter.fromJson(reader);
                if (str3 == null) {
                    JsonDataException jsonDataExceptionW3 = wkb.w("accountMcc", "accountMcc", reader);
                    y45.i(jsonDataExceptionW3, "unexpectedNull(...)");
                    throw jsonDataExceptionW3;
                }
                i &= -5;
            } else if (iO == 3) {
                str4 = (String) this.stringAdapter.fromJson(reader);
                if (str4 == null) {
                    JsonDataException jsonDataExceptionW4 = wkb.w("simMcc", "simMcc", reader);
                    y45.i(jsonDataExceptionW4, "unexpectedNull(...)");
                    throw jsonDataExceptionW4;
                }
                i &= -9;
            } else {
                continue;
            }
        }
        reader.g();
        if (i == -16) {
            y45.h(str, "null cannot be cast to non-null type kotlin.String");
            y45.h(str2, "null cannot be cast to non-null type kotlin.String");
            y45.h(str3, "null cannot be cast to non-null type kotlin.String");
            y45.h(str4, "null cannot be cast to non-null type kotlin.String");
            return new MccMap(str, str2, str3, str4);
        }
        Constructor declaredConstructor = this.constructorRef;
        if (declaredConstructor == null) {
            declaredConstructor = MccMap.class.getDeclaredConstructor(String.class, String.class, String.class, String.class, Integer.TYPE, wkb.c);
            this.constructorRef = declaredConstructor;
            y45.i(declaredConstructor, "also(...)");
        }
        Object objNewInstance = declaredConstructor.newInstance(str, str2, str3, str4, Integer.valueOf(i), null);
        y45.i(objNewInstance, "newInstance(...)");
        return (MccMap) objNewInstance;
    }

    @Override
    public void toJson(rc5 writer, MccMap value_) {
        y45.j(writer, "writer");
        if (value_ == null) {
            throw new NullPointerException("value_ was null! Wrap in .nullSafe() to write nullable values.");
        }
        writer.d();
        writer.D("ipMcc");
        this.stringAdapter.toJson(writer, value_.getIpMcc());
        writer.D("oobeMcc");
        this.stringAdapter.toJson(writer, value_.getOobeMcc());
        writer.D("accountMcc");
        this.stringAdapter.toJson(writer, value_.getAccountMcc());
        writer.D("simMcc");
        this.stringAdapter.toJson(writer, value_.getSimMcc());
        writer.h();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(28);
        sb.append("GeneratedJsonAdapter(");
        sb.append("MccMap");
        sb.append(')');
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
