package com.transsion.dbdata.source.data.ktx;

import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.source.data.ktx.ListKtxKt;
import defpackage.e74;
import defpackage.i81;
import defpackage.ky5;
import defpackage.vmb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000&\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a+\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000*\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a+\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0000*\b\u0012\u0004\u0012\u00020\u00060\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0005\u001aW\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\b\b\u0000\u0010\b*\u00020\u0002\"\b\b\u0001\u0010\n*\u00020\t*\b\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000e\u001a+\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0004\b\u0010\u0010\u0005¨\u0006\u0011"}, d2 = {"", "", "Lcom/transsion/dbdata/beans/media/MediaItem;", "existingMediaItems", "findMissingIds", "(Ljava/util/List;Ljava/util/List;)Ljava/util/List;", "", "findMissingPaths", "M", "", "T", "Lkotlin/Function1;", "selector", "findMissingMediaItems", "(Ljava/util/List;Ljava/util/List;Le74;)Ljava/util/List;", "sourceList", "distinctAndMergeWithSourceList", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ListKtxKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final List<MediaItem> distinctAndMergeWithSourceList(List<? extends MediaItem> list, List<? extends MediaItem> list2) {
        y45.j(list, "<this>");
        y45.j(list2, "sourceList");
        if (list2.isEmpty()) {
            return list;
        }
        if (list.isEmpty()) {
            return list2;
        }
        try {
            if (list2.size() <= 5000) {
                List<? extends MediaItem> list3 = list2;
                ArrayList arrayList = new ArrayList(z71.v(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(((MediaItem) it.next()).id));
                }
                HashSet hashSetZ0 = i81.Z0(arrayList);
                List<? extends MediaItem> list4 = list2;
                ArrayList arrayList2 = new ArrayList(z71.v(list4, 10));
                Iterator it2 = list4.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((MediaItem) it2.next()).data);
                }
                HashSet hashSetZ1 = i81.Z0(arrayList2);
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : list) {
                    MediaItem mediaItem = (MediaItem) obj;
                    if (!hashSetZ0.contains(Integer.valueOf(mediaItem.id)) && !hashSetZ1.contains(mediaItem.data)) {
                        arrayList3.add(obj);
                    }
                }
                return i81.J0(list2, arrayList3);
            }
            List<? extends MediaItem> list5 = list2;
            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list5, 10)), 16));
            for (Object obj2 : list5) {
                MediaItem mediaItem2 = (MediaItem) obj2;
                linkedHashMap.put(mediaItem2.id + "_" + mediaItem2.data, (MediaItem) obj2);
            }
            ArrayList arrayList4 = new ArrayList();
            for (Object obj3 : list) {
                MediaItem mediaItem3 = (MediaItem) obj3;
                if (!linkedHashMap.containsKey(mediaItem3.id + "_" + mediaItem3.data)) {
                    arrayList4.add(obj3);
                }
            }
            return i81.J0(list2, arrayList4);
        } catch (Exception e) {
            vmb.d("MediaDataOperate", "Distinct media items failed", e);
            return i81.J0(list2, list);
        }
    }

    public static final List<Integer> findMissingIds(List<Integer> list, List<? extends MediaItem> list2) {
        y45.j(list, "<this>");
        y45.j(list2, "existingMediaItems");
        if (list.isEmpty()) {
            return y71.k();
        }
        if (list2.isEmpty()) {
            return list;
        }
        if (list.size() >= 200 || list2.size() >= 200) {
            final HashSet hashSetB0 = SequencesKt___SequencesKt.b0(SequencesKt___SequencesKt.R(i81.b0(list2), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Integer.valueOf(ListKtxKt.findMissingIds$lambda$2((MediaItem) obj));
                }
            }));
            return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.G(i81.b0(list), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ListKtxKt.findMissingIds$lambda$3(hashSetB0, ((Integer) obj).intValue()));
                }
            }));
        }
        List<? extends MediaItem> list3 = list2;
        ArrayList arrayList = new ArrayList(z71.v(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((MediaItem) it.next()).id));
        }
        Set setG1 = i81.g1(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (!setG1.contains(Integer.valueOf(((Number) obj).intValue()))) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static final int findMissingIds$lambda$2(MediaItem mediaItem) {
        y45.j(mediaItem, "it");
        return mediaItem.id;
    }

    public static final boolean findMissingIds$lambda$3(HashSet hashSet, int i) {
        return hashSet.contains(Integer.valueOf(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <M extends MediaItem, T> List<T> findMissingMediaItems(List<? extends T> list, List<? extends M> list2, e74 e74Var) {
        if (list.isEmpty()) {
            return y71.k();
        }
        if (list2.isEmpty()) {
            return list;
        }
        try {
            if (list.size() >= 200 || list2.size() >= 200) {
                final HashSet hashSetB0 = SequencesKt___SequencesKt.b0(SequencesKt___SequencesKt.S(i81.b0(list2), e74Var));
                return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.G(i81.b0(list), new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(ListKtxKt.findMissingMediaItems$lambda$6(hashSetB0, obj));
                    }
                }));
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                Object objInvoke = e74Var.invoke(it.next());
                if (objInvoke != null) {
                    arrayList.add(objInvoke);
                }
            }
            Set setG1 = i81.g1(arrayList);
            ArrayList arrayList2 = new ArrayList();
            for (T t : list) {
                if (!setG1.contains(t)) {
                    arrayList2.add(t);
                }
            }
            return arrayList2;
        } catch (Exception e) {
            vmb.d("MediaDataOperate", "Find missing items failed", e);
            return list;
        }
    }

    public static final boolean findMissingMediaItems$lambda$6(HashSet hashSet, Object obj) {
        y45.j(obj, "it");
        return hashSet.contains(obj);
    }

    public static final List<String> findMissingPaths(List<String> list, List<? extends MediaItem> list2) {
        y45.j(list, "<this>");
        y45.j(list2, "existingMediaItems");
        return findMissingMediaItems(list, list2, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return ListKtxKt.findMissingPaths$lambda$4((MediaItem) obj);
            }
        });
    }

    public static final String findMissingPaths$lambda$4(MediaItem mediaItem) {
        y45.j(mediaItem, "it");
        return mediaItem.data;
    }
}
