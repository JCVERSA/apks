package defpackage;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.utils.BaseConstant;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.text.Regex;

public abstract class t55 {
    public static String a;

    public static final Uri e(boolean z) {
        Uri uri;
        String str;
        if (z) {
            uri = MediaStore.Audio.Media.INTERNAL_CONTENT_URI;
            str = "INTERNAL_CONTENT_URI";
        } else {
            uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            str = "EXTERNAL_CONTENT_URI";
        }
        y45.i(uri, str);
        return uri;
    }

    public static final AudioItem f(Cursor cursor, boolean z) {
        Uri uriWithAppendedPath;
        y45.j(cursor, "cursor");
        int i = cursor.getInt(0);
        String string = cursor.getString(1);
        String string2 = cursor.getString(11);
        long j = cursor.getLong(5);
        long j2 = cursor.getLong(6);
        String string3 = cursor.getString(4);
        int i2 = Build.VERSION.SDK_INT;
        String string4 = cursor.getString(2);
        int i3 = cursor.getInt(3);
        int i4 = cursor.getInt(13);
        String strU = av3.u(string3);
        String string5 = cursor.getString(14) != null ? cursor.getString(14) : null;
        if (TextUtils.isEmpty(string5)) {
            string5 = av3.q(strU);
        }
        String str = string5;
        int i5 = cursor.getInt(7);
        String string6 = cursor.getString(8);
        int i6 = cursor.getInt(9);
        String string7 = cursor.getString(10);
        int i7 = cursor.getInt(15);
        int i8 = i2 > 29 ? cursor.getInt(16) : 0;
        try {
            uriWithAppendedPath = Uri.withAppendedPath(z ? MediaStore.Audio.Media.INTERNAL_CONTENT_URI : MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, String.valueOf(i));
        } catch (Exception e) {
            e.printStackTrace();
            uriWithAppendedPath = null;
        }
        AudioItem fromInternal = new AudioItem(i, strU, i4, (string4 == null || string4.length() == 0) ? Build.MODEL : string4, string2, string, i3, string3, j, j2, i5, string6, i6, string7, cursor.getLong(12), uriWithAppendedPath, str, i7, i8).setFromInternal(z);
        y45.i(fromInternal, "setFromInternal(...)");
        return fromInternal;
    }

    public static final boolean g(Cursor cursor) {
        y45.j(cursor, "cursor");
        if (!pp3.A) {
            return false;
        }
        String strU = av3.u(cursor.getString(4));
        String string = cursor.getString(4);
        long j = cursor.getLong(12);
        long j2 = cursor.getLong(3);
        cursor.getInt(0);
        if ((!y45.e(BaseConstant.i, strU) || AudioFilterUtils.w(string)) && !AudioFilterUtils.v(string)) {
            return AudioFilterUtils.m(j, j2, strU, string);
        }
        return false;
    }

    public static final boolean h(Cursor cursor) {
        y45.j(cursor, "cursor");
        return AudioFilterUtils.o(cursor.getString(7));
    }

    public static final boolean i(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        String str = audioItem.data;
        if (str != null) {
            return AudioFilterUtils.o(str);
        }
        return false;
    }

    public static final String j() {
        String strK = ns9.k(false);
        y45.i(strK, "getOrderColumn(...)");
        return strK;
    }

    public static final Uri k(boolean z, int i) {
        try {
            return Uri.withAppendedPath(z ? MediaStore.Audio.Media.INTERNAL_CONTENT_URI : MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, String.valueOf(i));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static final boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static final long m(List list, long j, boolean z, e74 e74Var) {
        y45.j(e74Var, "operation");
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = (AudioItem) it.next();
                if (z != i(audioItem)) {
                    j++;
                } else {
                    e74Var.invoke(audioItem);
                }
            }
        }
        return j;
    }

    public static final void n(ArrayList arrayList, String str) {
        List listK;
        y45.j(arrayList, "<this>");
        String strM = MMKV.p().m("mmkv_key_manual_sort_result" + str, "");
        LogUtils.i("Manual", "restoreManualList: idsInOrderStr = " + strM + " key = mmkv_key_manual_sort_result" + str);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (strM != null && strM.length() != 0) {
            List<String> listSplit = new Regex(StringUtils.COMMA).split(strM, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        listK = y71.k();
                        break;
                    } else if (listIterator.previous().length() != 0) {
                        listK = i81.U0(listSplit, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            } else {
                listK = y71.k();
                break;
            }
            Stream stream = Arrays.stream(listK.toArray(new String[0]));
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return t55.p((String) obj);
                }
            };
            final List list = (List) stream.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return t55.q(e74Var, obj);
                }
            }).collect(Collectors.toList());
            Iterator it = arrayList.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                Object next = it.next();
                y45.i(next, "next(...)");
                AudioItem audioItem = (AudioItem) next;
                if (list.contains(Integer.valueOf(audioItem.id))) {
                    arrayList2.add(audioItem);
                } else {
                    arrayList3.add(audioItem);
                }
            }
            final e74 e74Var2 = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Integer.valueOf(t55.r(list, (AudioItem) obj));
                }
            };
            Collections.sort(arrayList2, Comparator.comparingInt(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    return t55.s(e74Var2, obj);
                }
            }));
            arrayList3.addAll(arrayList2);
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        arrayList.clear();
        arrayList.addAll(arrayList3);
    }

    public static void o(ArrayList arrayList, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = a;
        }
        n(arrayList, str);
    }

    public static final Integer p(String str) {
        y45.g(str);
        return Integer.valueOf(Integer.parseInt(str));
    }

    public static final Integer q(e74 e74Var, Object obj) {
        return (Integer) e74Var.invoke(obj);
    }

    public static final int r(List list, AudioItem audioItem) {
        y45.j(audioItem, "item");
        return list.indexOf(Integer.valueOf(audioItem.id));
    }

    public static final int s(e74 e74Var, Object obj) {
        return ((Number) e74Var.invoke(obj)).intValue();
    }

    public static final void t(List list, String str) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return;
        }
        a = str;
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((AudioItem) it.next()).id));
        }
        String strJoin = String.join(StringUtils.COMMA, i81.b1(arrayList));
        LogUtils.j("Manual", "saveManualSort: idsInOrderStr = " + strJoin + " key = mmkv_key_manual_sort_result" + str);
        MMKV mmkvP = MMKV.p();
        StringBuilder sb = new StringBuilder();
        sb.append("mmkv_key_manual_sort_result");
        sb.append(str);
        mmkvP.w(sb.toString(), strJoin);
    }

    public static final void u(String str) {
        a = str;
    }
}
