package com.transsion.dbdata.source.data.ktx;

import com.transsion.dbdata.source.data.repository.QueryBundle;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a#\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\t\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lxk8$x;", "", "", "projection", "Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "toQueryBundle", "(Lxk8$x;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "", "isFileTable", "toQueryMVBundle", "(Lxk8$x;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ActionExtKt {
    public static final QueryBundle toQueryBundle(xk8.x xVar, String[] strArr) {
        Pair pair;
        y45.j(xVar, "<this>");
        y45.j(strArr, "projection");
        if (xVar.c() > 0) {
            pair = new Pair("_id = ?", new String[]{String.valueOf(xVar.c())});
        } else if (xVar.d() != null) {
            pair = new Pair("_data = ?", new String[]{xVar.d()});
        } else if (xVar.b() != null) {
            pair = new Pair("_data LIKE ?", new String[]{"%" + xVar.b() + "%"});
        } else {
            pair = xVar.a() != null ? new Pair("_display_name = ?", new String[]{xVar.a()}) : null;
        }
        if (pair == null) {
            return null;
        }
        String str = (String) pair.component1();
        String[] strArr2 = (String[]) pair.component2();
        QueryBundle.Builder builder = new QueryBundle.Builder();
        builder.setProjection(strArr);
        builder.setSelection(str);
        builder.setSelectionArgs(strArr2);
        return builder.build();
    }

    public static final QueryBundle toQueryMVBundle(xk8.x xVar, boolean z) {
        Pair pair;
        y45.j(xVar, "<this>");
        if (xVar.c() > 0) {
            pair = new Pair("_id = ?", String.valueOf(xVar.c()));
        } else if (xVar.d() != null) {
            pair = new Pair("_data = ?", xVar.d());
        } else if (xVar.b() != null) {
            pair = new Pair("_data LIKE ?", "%" + xVar.b() + "%");
        } else {
            pair = xVar.a() != null ? new Pair("_display_name = ?", xVar.a()) : null;
        }
        String str = pair != null ? (String) pair.getFirst() : null;
        String str2 = pair != null ? (String) pair.getSecond() : null;
        if (str == null || str2 == null) {
            return null;
        }
        return QueryBundleKtxKt.buildQueryMVBundle(new StringBuilder(str), y71.q(str2), z);
    }
}
