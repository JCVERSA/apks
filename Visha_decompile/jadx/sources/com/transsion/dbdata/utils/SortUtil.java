package com.transsion.dbdata.utils;

import android.os.Build;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.internal.MediaNameComparator;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.abb;
import defpackage.db3;
import defpackage.i81;
import defpackage.ky5;
import defpackage.s74;
import defpackage.vmb;
import defpackage.vna;
import defpackage.wn8;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.comparisons.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.BooleanUtils;
import org.mozilla.javascript.ES6Iterator;

public final class SortUtil {
    public static final SortUtil a = new SortUtil();
    public static final MediaCombineCacheManager b = MediaCombineCacheManager.INSTANCE.getInstance();
    public static volatile SortDirection c;
    public static volatile SortType d;
    public static volatile SortDirection e;
    public static volatile SortType f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/transsion/dbdata/utils/SortUtil$SortDirection;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;II)V", "I", "getValue", "()I", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "DESCENDING", "ASCENDING", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum SortDirection {
        DESCENDING(0),
        ASCENDING(1);

        private final int value;
        private static final db3 $ENTRIES = kotlin.enums.a.a(values());

        SortDirection(int i) {
            this.value = i;
        }

        public static db3 getEntries() {
            return $ENTRIES;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/dbdata/utils/SortUtil$SortType;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;II)V", "I", "getValue", "()I", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "DATE", "NAME", "SIZE", "DURATION", "COUNT", "MANUAL", "NUMBER", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum SortType {
        DATE(0),
        NAME(1),
        SIZE(2),
        DURATION(3),
        COUNT(4),
        MANUAL(5),
        NUMBER(6);

        private final int value;
        private static final db3 $ENTRIES = kotlin.enums.a.a(values());

        public static final Companion INSTANCE = new Companion(null);

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final SortType a(int i) {
                switch (i) {
                    case 0:
                        return SortType.DATE;
                    case 1:
                        return SortType.NAME;
                    case 2:
                        return SortType.SIZE;
                    case 3:
                        return SortType.DURATION;
                    case 4:
                        return SortType.COUNT;
                    case 5:
                        return SortType.MANUAL;
                    case 6:
                        return SortType.NUMBER;
                    default:
                        return SortType.NAME;
                }
            }

            public Companion() {
            }
        }

        SortType(int i) {
            this.value = i;
        }

        public static final SortType fromValue(int i) {
            return INSTANCE.a(i);
        }

        public static db3 getEntries() {
            return $ENTRIES;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[SortType.values().length];
            try {
                iArr[SortType.DATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortType.NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SortType.SIZE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SortType.DURATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SortType.COUNT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SortType.NUMBER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SortType.MANUAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
            int[] iArr2 = new int[SortDirection.values().length];
            try {
                iArr2[SortDirection.ASCENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[SortDirection.DESCENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            b = iArr2;
        }
    }

    public static final class b implements s74 {
        @Override
        public final Integer invoke(Object obj, Object obj2) {
            MediaItem mediaItem = (MediaItem) obj;
            return Integer.valueOf(MediaNameComparator.a.g(mediaItem, (MediaItem) obj2));
        }
    }

    public static final class c implements s74 {
        @Override
        public final Integer invoke(Object obj, Object obj2) {
            MediaItem mediaItem = (MediaItem) obj;
            return Integer.valueOf(-MediaNameComparator.a.g(mediaItem, (MediaItem) obj2));
        }
    }

    static {
        SortDirection sortDirection = SortDirection.DESCENDING;
        c = sortDirection;
        SortType sortType = SortType.DATE;
        d = sortType;
        e = sortDirection;
        f = sortType;
    }

    public static final List B(List list) {
        y45.j(list, "list");
        return a.A(list, SortType.DATE, n());
    }

    public static final SortType c() {
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static final String f(boolean z) {
        try {
            z = z != 0 ? a.h() : a.d();
            return z;
        } catch (Exception e2) {
            vmb.d("SortUtil", "Failed to getMarkPointSortName for isVideo: " + z, e2);
            return "time_descend";
        }
    }

    public static final String g(boolean z) {
        try {
            return z ? a.e() : a.i();
        } catch (Exception e2) {
            vmb.d("SortUtil", "Failed to getMarkPointSortName for isVideo: " + z, e2);
            return "time_descend";
        }
    }

    public static final String j(boolean z) {
        return z ? a.k() : a.b();
    }

    public static final SortType l() {
        return d;
    }

    public static final boolean m() {
        return e == SortDirection.ASCENDING;
    }

    public static final boolean n() {
        return c == SortDirection.ASCENDING;
    }

    public static final boolean o() {
        return d == SortType.DATE;
    }

    public static final void p(boolean z) {
        e = z ? SortDirection.ASCENDING : SortDirection.DESCENDING;
    }

    public static final void q(int i) {
        f = SortType.INSTANCE.a(i);
    }

    public static final void r(boolean z) {
        c = z ? SortDirection.ASCENDING : SortDirection.DESCENDING;
    }

    public static final void s(int i) {
        d = SortType.INSTANCE.a(i);
    }

    public static final List t(List list) {
        if (list == null || list.isEmpty()) {
            return list;
        }
        return o() ? a.y(list) : z(list);
    }

    public static final List u(List list) {
        y45.j(list, "list");
        return a.v(list, f, m());
    }

    public static final List w(List list) {
        y45.j(list, "list");
        return a.v(list, SortType.DATE, false);
    }

    public static final List x(List list, boolean z) {
        y45.j(list, "list");
        return a.v(list, SortType.COUNT, z);
    }

    public static final List z(List list) {
        y45.j(list, "list");
        return a.A(list, d, n());
    }

    public final List A(List list, SortType sortType, boolean z) {
        try {
            System.setProperty("java.util.Arrays.useLegacyMergeSort", BooleanUtils.TRUE);
            return C(list, sortType, z ? SortDirection.ASCENDING : SortDirection.DESCENDING);
        } catch (Exception e2) {
            Log.e("SortUtil", "sortMediaItem error", e2);
            return list;
        }
    }

    public final List C(List list, SortType sortType, SortDirection sortDirection) {
        List listT0;
        if (list.isEmpty()) {
            return list;
        }
        if (sortType == SortType.COUNT && list.size() < 1000) {
            List list2 = list;
            final LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list2, 10)), 16));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                String str = ((MediaItem) it.next()).data;
                MediaCombineCacheManager mediaCombineCacheManager = b;
                y45.i(str, "data");
                Pair pairA = abb.a(str, Integer.valueOf(mediaCombineCacheManager.getPlayCount(str)));
                linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
            }
            int i = a.b[sortDirection.ordinal()];
            if (i == 1) {
                return i81.T0(list2, new Comparator() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public final int compare(T t, T t2) {
                        Integer num = (Integer) linkedHashMap.get(((MediaItem) t).data);
                        Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 0);
                        Integer num2 = (Integer) linkedHashMap.get(((MediaItem) t2).data);
                        return a.d(numValueOf, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                    }
                });
            }
            if (i == 2) {
                return i81.T0(list2, new Comparator() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public final int compare(T t, T t2) {
                        Integer num = (Integer) linkedHashMap.get(((MediaItem) t2).data);
                        Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 0);
                        Integer num2 = (Integer) linkedHashMap.get(((MediaItem) t).data);
                        return a.d(numValueOf, Integer.valueOf(num2 != null ? num2.intValue() : 0));
                    }
                });
            }
            throw new NoWhenBranchMatchedException();
        }
        switch (a.a[sortType.ordinal()]) {
            case 1:
                int i2 = a.b[sortDirection.ordinal()];
                if (i2 == 1) {
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Long.valueOf(((MediaItem) t).dateModified), Long.valueOf(((MediaItem) t2).dateModified));
                        }
                    });
                } else {
                    if (i2 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Long.valueOf(((MediaItem) t2).dateModified), Long.valueOf(((MediaItem) t).dateModified));
                        }
                    });
                }
                break;
            case 2:
                int i3 = a.b[sortDirection.ordinal()];
                if (i3 == 1) {
                    final b bVar = new b();
                    listT0 = i81.T0(list, new Comparator(bVar) {
                        private final s74 function;

                        {
                            y45.j(bVar, "function");
                            this.function = bVar;
                        }

                        @Override
                        public final int compare(Object obj, Object obj2) {
                            return ((Number) this.function.invoke(obj, obj2)).intValue();
                        }
                    });
                } else {
                    if (i3 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    final c cVar = new c();
                    listT0 = i81.T0(list, new Comparator(cVar) {
                        private final s74 function;

                        {
                            y45.j(cVar, "function");
                            this.function = cVar;
                        }

                        @Override
                        public final int compare(Object obj, Object obj2) {
                            return ((Number) this.function.invoke(obj, obj2)).intValue();
                        }
                    });
                }
                break;
            case 3:
                int i4 = a.b[sortDirection.ordinal()];
                if (i4 == 1) {
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Long.valueOf(((MediaItem) t).size), Long.valueOf(((MediaItem) t2).size));
                        }
                    });
                } else {
                    if (i4 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Long.valueOf(((MediaItem) t2).size), Long.valueOf(((MediaItem) t).size));
                        }
                    });
                }
                break;
            case 4:
                int i5 = a.b[sortDirection.ordinal()];
                if (i5 == 1) {
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Long.valueOf(((MediaItem) t).duration), Long.valueOf(((MediaItem) t2).duration));
                        }
                    });
                } else {
                    if (i5 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Long.valueOf(((MediaItem) t2).duration), Long.valueOf(((MediaItem) t).duration));
                        }
                    });
                }
                break;
            case 5:
                int i6 = a.b[sortDirection.ordinal()];
                if (i6 == 1) {
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            MediaCombineCacheManager mediaCombineCacheManager2 = SortUtil.b;
                            String str2 = ((MediaItem) t).data;
                            y45.i(str2, "data");
                            Integer numValueOf = Integer.valueOf(mediaCombineCacheManager2.getPlayCount(str2));
                            MediaCombineCacheManager mediaCombineCacheManager3 = SortUtil.b;
                            String str3 = ((MediaItem) t2).data;
                            y45.i(str3, "data");
                            return a.d(numValueOf, Integer.valueOf(mediaCombineCacheManager3.getPlayCount(str3)));
                        }
                    });
                } else {
                    if (i6 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            MediaCombineCacheManager mediaCombineCacheManager2 = SortUtil.b;
                            String str2 = ((MediaItem) t2).data;
                            y45.i(str2, "data");
                            Integer numValueOf = Integer.valueOf(mediaCombineCacheManager2.getPlayCount(str2));
                            MediaCombineCacheManager mediaCombineCacheManager3 = SortUtil.b;
                            String str3 = ((MediaItem) t).data;
                            y45.i(str3, "data");
                            return a.d(numValueOf, Integer.valueOf(mediaCombineCacheManager3.getPlayCount(str3)));
                        }
                    });
                }
                break;
            case 6:
                int i7 = a.b[sortDirection.ordinal()];
                if (i7 == 1) {
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Integer.valueOf(((MediaItem) t).num), Integer.valueOf(((MediaItem) t2).num));
                        }
                    });
                } else {
                    if (i7 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    listT0 = i81.T0(list, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return a.d(Integer.valueOf(((MediaItem) t2).num), Integer.valueOf(((MediaItem) t).num));
                        }
                    });
                }
                break;
            default:
                return list;
        }
        return listT0;
    }

    public final String b() {
        int i = a.a[f.ordinal()];
        if (i == 1) {
            return "date_modified" + (m() ? " ASC " : " DESC ");
        }
        if (i == 2) {
            return "_display_name" + (m() ? " ASC " : " DESC ");
        }
        if (i == 3) {
            return "_size" + (m() ? " ASC " : " DESC ");
        }
        if (i == 4) {
            return "duration" + (m() ? " ASC " : " DESC ");
        }
        if (i != 6 || Build.VERSION.SDK_INT <= 29) {
            return "date_modified DESC ";
        }
        return "cd_track_number" + (m() ? " ASC " : " DESC ");
    }

    public final String d() {
        boolean zM = m();
        int i = a.a[f.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return zM ? "name_ascend" : "name_descend";
            }
            if (i == 3) {
                return zM ? "size_ascend" : "size_descend";
            }
            if (i == 4) {
                return zM ? "duration_ascend" : "duration_descend";
            }
            if (i == 5) {
                return zM ? "frequency_ascend" : "frequency_descend";
            }
            if (i == 7) {
                return "manually";
            }
            if (!zM) {
                return "time_descend";
            }
        } else if (!zM) {
            return "time_descend";
        }
        return "time_ascend";
    }

    public final String e() {
        boolean zM = m();
        int i = a.a[f.ordinal()];
        if (i == 1) {
            return zM ? "time_ascend" : "time_descend";
        }
        if (i == 2) {
            return zM ? "name_ascend" : "name_descend";
        }
        if (i == 3) {
            return zM ? "size_ascend" : "size_descend";
        }
        if (i == 4) {
            return zM ? "duration_ascend" : "duration_descend";
        }
        if (i == 5) {
            return zM ? "frequency_ascend" : "frequency_descend";
        }
        if (i != 7) {
            return zM ? "size_ascend" : "size_descend";
        }
        return "manually";
    }

    public final String h() {
        boolean zN = n();
        int i = a.a[d.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return zN ? "name_ascend" : "name_descend";
            }
            if (i == 3) {
                return zN ? "size_ascend" : "size_descend";
            }
            if (i == 4) {
                return zN ? "duration_ascend" : "duration_descend";
            }
            if (i == 5) {
                return zN ? "frequency_ascend" : "frequency_descend";
            }
            if (!zN) {
                return "time_descend";
            }
        } else if (!zN) {
            return "time_descend";
        }
        return "time_ascend";
    }

    public final String i() {
        boolean zN = n();
        int i = a.a[d.ordinal()];
        if (i == 1) {
            return zN ? "time_ascend" : "time_descend";
        }
        if (i == 2) {
            return zN ? "name_ascend" : "name_descend";
        }
        if (i == 3) {
            return zN ? "size_ascend" : "size_descend";
        }
        if (i == 4) {
            return zN ? "duration_ascend" : "duration_descend";
        }
        if (i != 5) {
            return zN ? "size_ascend" : "size_descend";
        }
        return zN ? "frequency_ascend" : "frequency_descend";
    }

    public final String k() {
        int i = a.a[d.ordinal()];
        if (i == 1) {
            return "date_modified" + (n() ? " ASC " : " DESC ");
        }
        if (i == 2) {
            return "_display_name" + (n() ? " ASC " : " DESC ");
        }
        if (i == 3) {
            return "_size" + (n() ? " ASC " : " DESC ");
        }
        if (i != 4) {
            return "date_modified DESC ";
        }
        return "duration" + (n() ? " ASC " : " DESC ");
    }

    public final List v(List list, SortType sortType, boolean z) {
        return C(list, sortType, z ? SortDirection.ASCENDING : SortDirection.DESCENDING);
    }

    public final List y(List list) {
        List list2 = list;
        if (list != null && !list.isEmpty()) {
            list2 = list;
            List<MediaItem> listB = B(list);
            ArrayList arrayList = new ArrayList(listB.size());
            HashSet hashSet = new HashSet();
            for (MediaItem mediaItem : listB) {
                if (!mediaItem.isTimeItem) {
                    String strD = vna.d(mediaItem.dateModified * ((long) 1000), OSDateTimePicker.FORMAT_Y_M_D);
                    if (!hashSet.contains(strD)) {
                        MediaItem mediaItemCreateGroupHeaderItem = MediaDataExtKt.createGroupHeaderItem(mediaItem);
                        hashSet.add(strD);
                        arrayList.add(mediaItemCreateGroupHeaderItem);
                    }
                    arrayList.add(mediaItem);
                }
            }
            hashSet.clear();
            list2 = arrayList;
        }
        list2 = list;
        return list2;
    }
}
