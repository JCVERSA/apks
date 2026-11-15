package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

abstract class j0 {
    private static final j0 FULL_INSTANCE;
    private static final j0 LITE_INSTANCE;

    private static final class b extends j0 {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> getList(Object obj, long j10) {
            return (List) s1.getObject(obj, j10);
        }

        @Override
        void makeImmutableListAt(Object obj, long j10) {
            Object objUnmodifiableList;
            List list = (List) s1.getObject(obj, j10);
            if (list instanceof i0) {
                objUnmodifiableList = ((i0) list).getUnmodifiableView();
            } else {
                if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof c1) && (list instanceof y.j)) {
                    y.j jVar = (y.j) list;
                    if (jVar.isModifiable()) {
                        jVar.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            s1.putObject(obj, j10, objUnmodifiableList);
        }

        @Override
        <E> void mergeListsAt(Object obj, Object obj2, long j10) {
            List list = getList(obj2, j10);
            List listMutableListAt = mutableListAt(obj, j10, list.size());
            int size = listMutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listMutableListAt.addAll(list);
            }
            if (size > 0) {
                list = listMutableListAt;
            }
            s1.putObject(obj, j10, list);
        }

        @Override
        <L> List<L> mutableListAt(Object obj, long j10) {
            return mutableListAt(obj, j10, 10);
        }

        private static <L> List<L> mutableListAt(Object obj, long j10, int i10) {
            Object obj2;
            List<L> listMutableCopyWithCapacity;
            List<L> list = getList(obj, j10);
            if (list.isEmpty()) {
                if (list instanceof i0) {
                    listMutableCopyWithCapacity = new h0(i10);
                } else {
                    listMutableCopyWithCapacity = ((list instanceof c1) && (list instanceof y.j)) ? ((y.j) list).mutableCopyWithCapacity(i10) : new ArrayList<>(i10);
                }
                s1.putObject(obj, j10, listMutableCopyWithCapacity);
                return listMutableCopyWithCapacity;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i10);
                arrayList.addAll(list);
                s1.putObject(obj, j10, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof r1)) {
                    if (!(list instanceof c1) || !(list instanceof y.j)) {
                        return list;
                    }
                    y.j jVar = (y.j) list;
                    if (jVar.isModifiable()) {
                        return list;
                    }
                    y.j jVarMutableCopyWithCapacity = jVar.mutableCopyWithCapacity(list.size() + i10);
                    s1.putObject(obj, j10, jVarMutableCopyWithCapacity);
                    return jVarMutableCopyWithCapacity;
                }
                h0 h0Var = new h0(list.size() + i10);
                h0Var.addAll((r1) list);
                s1.putObject(obj, j10, h0Var);
                obj2 = h0Var;
            }
            return (List<L>) obj2;
        }
    }

    private static final class c extends j0 {
        private c() {
            super();
        }

        static <E> y.j getProtobufList(Object obj, long j10) {
            return (y.j) s1.getObject(obj, j10);
        }

        @Override
        void makeImmutableListAt(Object obj, long j10) {
            getProtobufList(obj, j10).makeImmutable();
        }

        @Override
        <E> void mergeListsAt(Object obj, Object obj2, long j10) {
            y.j protobufList = getProtobufList(obj, j10);
            y.j protobufList2 = getProtobufList(obj2, j10);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            if (size > 0 && size2 > 0) {
                if (!protobufList.isModifiable()) {
                    protobufList = protobufList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList.addAll(protobufList2);
            }
            if (size > 0) {
                protobufList2 = protobufList;
            }
            s1.putObject(obj, j10, protobufList2);
        }

        @Override
        <L> List<L> mutableListAt(Object obj, long j10) {
            y.j protobufList = getProtobufList(obj, j10);
            if (protobufList.isModifiable()) {
                return protobufList;
            }
            int size = protobufList.size();
            y.j jVarMutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            s1.putObject(obj, j10, jVarMutableCopyWithCapacity);
            return jVarMutableCopyWithCapacity;
        }
    }

    static {
        FULL_INSTANCE = new b();
        LITE_INSTANCE = new c();
    }

    static j0 full() {
        return FULL_INSTANCE;
    }

    static j0 lite() {
        return LITE_INSTANCE;
    }

    abstract void makeImmutableListAt(Object obj, long j10);

    abstract <L> void mergeListsAt(Object obj, Object obj2, long j10);

    abstract <L> List<L> mutableListAt(Object obj, long j10);

    private j0() {
    }
}
