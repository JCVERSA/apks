package com.transsion.cloud_drive.base.api.model;

import com.lzy.okgo.model.Progress;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import com.squareup.moshi.j;
import defpackage.kdb;
import defpackage.rc5;
import defpackage.wkb;
import defpackage.y45;
import defpackage.ye9;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R \u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0019R \u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001a0\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0019R\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/SpaceStatisticsJsonAdapter;", "Lcom/squareup/moshi/e;", "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;", "Lcom/squareup/moshi/j;", "moshi", MethodDecl.initName, "(Lcom/squareup/moshi/j;)V", "", "toString", "()Ljava/lang/String;", "Lcom/squareup/moshi/JsonReader;", "reader", "fromJson", "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;", "Lrc5;", "writer", "value_", "Lzfb;", "toJson", "(Lrc5;Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;)V", "Lcom/squareup/moshi/JsonReader$b;", "options", "Lcom/squareup/moshi/JsonReader$b;", "", "longAdapter", "Lcom/squareup/moshi/e;", "", "Lcom/transsion/cloud_drive/base/api/model/AppInfo;", "listOfAppInfoAdapter", "Lcom/transsion/cloud_drive/base/api/model/SpaceType;", "listOfSpaceTypeAdapter", "Ljava/lang/reflect/Constructor;", "constructorRef", "Ljava/lang/reflect/Constructor;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GeneratedJsonAdapter extends e {
    private volatile Constructor<SpaceStatistics> constructorRef;
    private final e listOfAppInfoAdapter;
    private final e listOfSpaceTypeAdapter;
    private final e longAdapter;
    private final JsonReader.b options;

    public GeneratedJsonAdapter(j jVar) {
        y45.j(jVar, "moshi");
        JsonReader.b bVarA = JsonReader.b.a("cloudSpaceTotalSize", "cloudSpaceUsedSize", "appInfoList", "tempSpaceTotalSize", "tempSpaceUsedSize", "spaceTypeList");
        y45.i(bVarA, "of(...)");
        this.options = bVarA;
        e eVarF = jVar.f(Long.TYPE, ye9.f(), Progress.TOTAL_SIZE);
        y45.i(eVarF, "adapter(...)");
        this.longAdapter = eVarF;
        e eVarF2 = jVar.f(kdb.j(List.class, AppInfo.class), ye9.f(), "appInfoList");
        y45.i(eVarF2, "adapter(...)");
        this.listOfAppInfoAdapter = eVarF2;
        e eVarF3 = jVar.f(kdb.j(List.class, SpaceType.class), ye9.f(), "spaceTypeList");
        y45.i(eVarF3, "adapter(...)");
        this.listOfSpaceTypeAdapter = eVarF3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(37);
        sb.append("GeneratedJsonAdapter(");
        sb.append("SpaceStatistics");
        sb.append(')');
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    @Override
    public SpaceStatistics fromJson(JsonReader reader) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        y45.j(reader, "reader");
        reader.d();
        List list = null;
        int i = -1;
        Long l = 0L;
        Long l2 = null;
        Long l3 = null;
        Long l4 = null;
        List list2 = null;
        while (reader.k()) {
            switch (reader.O(this.options)) {
                case -1:
                    reader.S();
                    reader.T();
                    break;
                case 0:
                    l = (Long) this.longAdapter.fromJson(reader);
                    if (l == null) {
                        JsonDataException jsonDataExceptionW = wkb.w(Progress.TOTAL_SIZE, "cloudSpaceTotalSize", reader);
                        y45.i(jsonDataExceptionW, "unexpectedNull(...)");
                        throw jsonDataExceptionW;
                    }
                    i &= -2;
                    break;
                    break;
                case 1:
                    l2 = (Long) this.longAdapter.fromJson(reader);
                    if (l2 == null) {
                        JsonDataException jsonDataExceptionW2 = wkb.w("usedSize", "cloudSpaceUsedSize", reader);
                        y45.i(jsonDataExceptionW2, "unexpectedNull(...)");
                        throw jsonDataExceptionW2;
                    }
                    i &= -3;
                    break;
                    break;
                case 2:
                    list2 = (List) this.listOfAppInfoAdapter.fromJson(reader);
                    if (list2 == null) {
                        JsonDataException jsonDataExceptionW3 = wkb.w("appInfoList", "appInfoList", reader);
                        y45.i(jsonDataExceptionW3, "unexpectedNull(...)");
                        throw jsonDataExceptionW3;
                    }
                    i &= -5;
                    break;
                    break;
                case 3:
                    l3 = (Long) this.longAdapter.fromJson(reader);
                    if (l3 == null) {
                        JsonDataException jsonDataExceptionW4 = wkb.w("tempSpaceTotalSize", "tempSpaceTotalSize", reader);
                        y45.i(jsonDataExceptionW4, "unexpectedNull(...)");
                        throw jsonDataExceptionW4;
                    }
                    i &= -9;
                    break;
                    break;
                case 4:
                    l4 = (Long) this.longAdapter.fromJson(reader);
                    if (l4 == null) {
                        JsonDataException jsonDataExceptionW5 = wkb.w("tempSpaceUsedSize", "tempSpaceUsedSize", reader);
                        y45.i(jsonDataExceptionW5, "unexpectedNull(...)");
                        throw jsonDataExceptionW5;
                    }
                    i &= -17;
                    break;
                    break;
                case 5:
                    list = (List) this.listOfSpaceTypeAdapter.fromJson(reader);
                    if (list == null) {
                        JsonDataException jsonDataExceptionW6 = wkb.w("spaceTypeList", "spaceTypeList", reader);
                        y45.i(jsonDataExceptionW6, "unexpectedNull(...)");
                        throw jsonDataExceptionW6;
                    }
                    i &= -33;
                    break;
                    break;
            }
        }
        reader.g();
        if (i == -64) {
            long jLongValue = l.longValue();
            long jLongValue2 = l2.longValue();
            y45.h(list2, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.cloud_drive.base.api.model.AppInfo>");
            long jLongValue3 = l3.longValue();
            long jLongValue4 = l4.longValue();
            y45.h(list, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.cloud_drive.base.api.model.SpaceType>");
            return new SpaceStatistics(jLongValue, jLongValue2, list2, jLongValue3, jLongValue4, list);
        }
        Constructor<SpaceStatistics> declaredConstructor = this.constructorRef;
        if (declaredConstructor == null) {
            Class cls = Long.TYPE;
            declaredConstructor = SpaceStatistics.class.getDeclaredConstructor(cls, cls, List.class, cls, cls, List.class, Integer.TYPE, wkb.c);
            this.constructorRef = declaredConstructor;
            y45.i(declaredConstructor, "also(...)");
        }
        SpaceStatistics spaceStatisticsNewInstance = declaredConstructor.newInstance(l, l2, list2, l3, l4, list, Integer.valueOf(i), null);
        y45.i(spaceStatisticsNewInstance, "newInstance(...)");
        return spaceStatisticsNewInstance;
    }

    @Override
    public void toJson(rc5 writer, SpaceStatistics value_) {
        y45.j(writer, "writer");
        if (value_ == null) {
            throw new NullPointerException("value_ was null! Wrap in .nullSafe() to write nullable values.");
        }
        writer.d();
        writer.D("cloudSpaceTotalSize");
        this.longAdapter.toJson(writer, Long.valueOf(value_.getTotalSize()));
        writer.D("cloudSpaceUsedSize");
        this.longAdapter.toJson(writer, Long.valueOf(value_.getUsedSize()));
        writer.D("appInfoList");
        this.listOfAppInfoAdapter.toJson(writer, value_.getAppInfoList());
        writer.D("tempSpaceTotalSize");
        this.longAdapter.toJson(writer, Long.valueOf(value_.getTempSpaceTotalSize()));
        writer.D("tempSpaceUsedSize");
        this.longAdapter.toJson(writer, Long.valueOf(value_.getTempSpaceUsedSize()));
        writer.D("spaceTypeList");
        this.listOfSpaceTypeAdapter.toJson(writer, value_.getSpaceTypeList());
        writer.h();
    }
}
