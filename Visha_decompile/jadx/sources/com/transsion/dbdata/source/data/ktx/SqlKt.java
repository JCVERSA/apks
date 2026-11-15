package com.transsion.dbdata.source.data.ktx;

import android.util.Log;
import com.transsion.dbdata.source.data.ktx.SqlKt;
import defpackage.abb;
import defpackage.e74;
import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\u001a\u0010\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a\u0012\u0010\t\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a6\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\f\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u001a.\u0010\u0010\u001a\u0018\u0012\b\u0012\u00060\u0011j\u0002`\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00130\u000b2\u0006\u0010\u0014\u001a\u00020\u00012\b\b\u0002\u0010\u0015\u001a\u00020\b\u001a8\u0010\u0016\u001a\u0018\u0012\b\u0012\u00060\u0011j\u0002`\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00130\u000b2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001¨\u0006\u0018"}, d2 = {"toInSelection", "", "", "", "toDataInSelection", "toDurationSelection", "", "isLongerThan", "", "toSizeSelection", "buildFieldLikeWithDisplayNameCondition", "Lkotlin/Pair;", "", "field", "fieldValue", "displayName", "buildSearchCondition", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", "searchText", "isSearchMV", "buildIdsAndNameCondition", "mediaIds", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SqlKt {
    public static final Pair<String, String[]> buildFieldLikeWithDisplayNameCondition(String str, String str2, String str3) {
        y45.j(str, "field");
        if (str2 == null || str2.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str + " LIKE ?");
        arrayList.add("is_music = ?");
        if (str3 != null) {
            if ((str3.length() > 0 ? str3 : null) != null) {
                arrayList.add("title LIKE ?");
            }
        }
        if (str3 == null || str3.length() <= 0) {
            str3 = null;
        }
        return abb.a(i81.y0(arrayList, " AND ", null, null, 0, null, null, 62, null), (String[]) y71.p(str2, "1", str3).toArray(new String[0]));
    }

    public static final Pair<StringBuilder, List<String>> buildIdsAndNameCondition(List<Integer> list, String str) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        List<Integer> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            sb.append(toInSelection(list));
        }
        if (str != null && str.length() != 0) {
            if (sb.length() > 0) {
                sb.append(" AND ");
            }
            sb.append("title LIKE ?");
            arrayList.add("%" + str + "%");
        }
        return abb.a(sb, arrayList);
    }

    public static Pair buildIdsAndNameCondition$default(List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return buildIdsAndNameCondition(list, str);
    }

    public static final Pair<StringBuilder, List<String>> buildSearchCondition(String str, boolean z) {
        y45.j(str, "searchText");
        List listQ = y71.q("%" + str + "%");
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("(");
            sb.append("_display_name LIKE ?");
            sb.append(" OR ");
            sb.append("title LIKE ?");
            sb.append(")");
            listQ.add("%" + str + "%");
        } else {
            sb.append("_display_name LIKE ?");
        }
        return abb.a(sb, listQ);
    }

    public static Pair buildSearchCondition$default(String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return buildSearchCondition(str, z);
    }

    public static final String toDataInSelection(List<String> list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            Log.e("MediaSql", "toDataInSelection list is empty!");
            return "1=0";
        }
        return "_data IN (" + i81.y0(list, StringUtils.COMMA, null, null, 0, null, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SqlKt.toDataInSelection$lambda$0((String) obj);
            }
        }, 30, null) + ")";
    }

    public static final CharSequence toDataInSelection$lambda$0(String str) {
        y45.j(str, "it");
        return "'" + str + "'";
    }

    public static final String toDurationSelection(long j, boolean z) {
        return "(duration IS NULL OR duration " + (z ? ">" : "<=") + " " + j + ")";
    }

    public static final String toInSelection(List<Integer> list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            Log.e("MediaSql", "toInSelection list is empty!");
            return "1=0";
        }
        return "_id IN (" + i81.y0(list, StringUtils.COMMA, null, null, 0, null, null, 62, null) + ")";
    }

    public static final String toSizeSelection(long j, boolean z) {
        return "_size IS NULL OR _size " + (z ? ">" : "<=") + " " + j;
    }
}
