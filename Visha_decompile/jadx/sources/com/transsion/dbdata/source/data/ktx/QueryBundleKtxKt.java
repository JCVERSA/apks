package com.transsion.dbdata.source.data.ktx;

import com.transsion.dbdata.source.data.ktx.QueryBundleKtxKt;
import com.transsion.dbdata.source.data.repository.QueryBundle;
import defpackage.at;
import defpackage.d81;
import defpackage.dw6;
import defpackage.e74;
import defpackage.g1a;
import defpackage.hi;
import defpackage.hk3;
import defpackage.i81;
import defpackage.qq3;
import defpackage.qtb;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\u001a)\u0010\u0007\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\u0007\u0010\b\u001a3\u0010\u000b\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a)\u0010\r\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\r\u0010\b\u001a)\u0010\u000e\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\u000e\u0010\b\u001a1\u0010\u0012\u001a\u00020\u00112\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0010\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a)\u0010\u0014\u001a\u00020\u00112\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a%\u0010\u0019\u001a\u00020\u00112\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016¢\u0006\u0004\b\u0019\u0010\u001a\u001a%\u0010\u001b\u001a\u00020\u00112\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016¢\u0006\u0004\b\u001b\u0010\u001a\u001a%\u0010\u001c\u001a\u00020\u00112\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016¢\u0006\u0004\b\u001c\u0010\u001a\u001a5\u0010\u001f\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u001d2\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "selectionBuilder", "", "", "selectionArray", "Lzfb;", "appendMVQueryCondition", "(Ljava/lang/StringBuilder;Ljava/util/List;)V", "", "needMediaTypeFilter", "appendFileTableVideoQueryCondition", "(Ljava/lang/StringBuilder;Ljava/util/List;Z)V", "appendFileTableMVQueryCondition", "appendVideoTableMVQueryCondition", "selectionArgsList", "isFileTable", "Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "buildQueryMVBundle", "(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "buildQueryVideoBundleFromFileTable", "(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "Lkotlin/Function1;", "Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;", "config", "buildAudioQueryBundle", "(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "buildVideoQueryBundle", "buildFileQueryBundle", "", "projection", "buildBaseQueryBundle", "([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class QueryBundleKtxKt {
    private static final void appendFileTableMVQueryCondition(StringBuilder sb, List<String> list) {
        appendFileTableVideoQueryCondition$default(sb, list, false, 4, null);
        sb.append(" AND ");
        appendMVQueryCondition(sb, list);
    }

    private static final void appendFileTableVideoQueryCondition(StringBuilder sb, List<String> list, boolean z) {
        String[] strArr = hk3.h;
        y45.i(strArr, "VIDEO_NOT_MEDIADB");
        String strS0 = hi.s0(strArr, " OR ", null, null, 0, null, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return QueryBundleKtxKt.appendFileTableVideoQueryCondition$lambda$3((String) obj);
            }
        }, 30, null);
        if (z) {
            sb.append("media_type = ? AND ");
        }
        sb.append("(");
        sb.append(strS0);
        sb.append(")");
        if (z) {
            list.add("0");
        }
        y45.i(strArr, "VIDEO_NOT_MEDIADB");
        d81.D(list, strArr);
    }

    public static void appendFileTableVideoQueryCondition$default(StringBuilder sb, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        appendFileTableVideoQueryCondition(sb, list, z);
    }

    public static final CharSequence appendFileTableVideoQueryCondition$lambda$3(String str) {
        return "_data LIKE?";
    }

    private static final void appendMVQueryCondition(StringBuilder sb, List<String> list) {
        List listB1 = i81.b1(dw6.c.a().c());
        if (listB1.isEmpty()) {
            return;
        }
        List list2 = listB1;
        String strY0 = i81.y0(list2, " OR ", null, null, 0, null, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return QueryBundleKtxKt.appendMVQueryCondition$lambda$0((String) obj);
            }
        }, 30, null);
        sb.append("(");
        sb.append(strY0);
        sb.append(")");
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add("%" + ((String) it.next()) + "_%");
        }
        list.addAll(arrayList);
    }

    public static final CharSequence appendMVQueryCondition$lambda$0(String str) {
        y45.j(str, "it");
        return "LOWER(_display_name) LIKE LOWER(?)";
    }

    private static final void appendVideoTableMVQueryCondition(StringBuilder sb, List<String> list) {
        appendMVQueryCondition(sb, list);
    }

    public static final QueryBundle buildAudioQueryBundle(e74 e74Var) {
        return buildBaseQueryBundle(at.b.e(), e74Var);
    }

    public static QueryBundle buildAudioQueryBundle$default(e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = null;
        }
        return buildAudioQueryBundle(e74Var);
    }

    private static final QueryBundle buildBaseQueryBundle(String[] strArr, e74 e74Var) {
        QueryBundle.Builder builder = new QueryBundle.Builder();
        builder.setProjection(strArr);
        if (e74Var != null) {
            e74Var.invoke(builder);
        }
        return builder.build();
    }

    public static QueryBundle buildBaseQueryBundle$default(String[] strArr, e74 e74Var, int i, Object obj) {
        if ((i & 2) != 0) {
            e74Var = null;
        }
        return buildBaseQueryBundle(strArr, e74Var);
    }

    public static final QueryBundle buildFileQueryBundle(e74 e74Var) {
        return buildBaseQueryBundle(qq3.b.e(), e74Var);
    }

    public static QueryBundle buildFileQueryBundle$default(e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = null;
        }
        return buildFileQueryBundle(e74Var);
    }

    public static final QueryBundle buildQueryMVBundle(StringBuilder sb, List<String> list, boolean z) {
        y45.j(sb, "selectionBuilder");
        y45.j(list, "selectionArgsList");
        int length = sb.length();
        int size = list.size();
        if (sb.length() > 0) {
            sb.append(" AND ");
        }
        if (z) {
            appendFileTableMVQueryCondition(sb, list);
        } else {
            appendVideoTableMVQueryCondition(sb, list);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        if (list.size() <= size) {
            if (sb.length() <= length + (length > 0 ? 5 : 0) && g1a.D(string, " AND ", false, 2, null)) {
                string = string.substring(0, string.length() - 5);
                y45.i(string, "substring(...)");
            }
        }
        QueryBundle.Builder builder = new QueryBundle.Builder();
        builder.setProjection(z ? qq3.b.e() : qtb.b.e());
        builder.setSelection(string);
        builder.setSelectionArgs((String[]) list.toArray(new String[0]));
        return builder.build();
    }

    public static final QueryBundle buildQueryVideoBundleFromFileTable(StringBuilder sb, List<String> list) {
        y45.j(sb, "selectionBuilder");
        y45.j(list, "selectionArgsList");
        int length = sb.length();
        int size = list.size();
        if (sb.length() > 0) {
            sb.append(" AND ");
        }
        appendFileTableVideoQueryCondition(sb, list, false);
        String string = sb.toString();
        y45.i(string, "toString(...)");
        if (list.size() <= size) {
            if (sb.length() <= length + (length > 0 ? 5 : 0) && g1a.D(string, " AND ", false, 2, null)) {
                string = string.substring(0, string.length() - 5);
                y45.i(string, "substring(...)");
            }
        }
        QueryBundle.Builder builder = new QueryBundle.Builder();
        builder.setProjection(qq3.b.e());
        builder.setSelection(string);
        builder.setSelectionArgs((String[]) list.toArray(new String[0]));
        return builder.build();
    }

    public static final QueryBundle buildVideoQueryBundle(e74 e74Var) {
        return buildBaseQueryBundle(qtb.b.e(), e74Var);
    }

    public static QueryBundle buildVideoQueryBundle$default(e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = null;
        }
        return buildVideoQueryBundle(e74Var);
    }
}
