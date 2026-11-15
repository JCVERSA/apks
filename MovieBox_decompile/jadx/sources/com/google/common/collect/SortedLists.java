package com.google.common.collect;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

abstract class SortedLists {

    enum KeyAbsentBehavior {
        NEXT_LOWER {
            @Override
            int resultIndex(int i10) {
                return i10 - 1;
            }
        },
        NEXT_HIGHER {
            @Override
            public int resultIndex(int i10) {
                return i10;
            }
        },
        INVERTED_INSERTION_INDEX {
            @Override
            public int resultIndex(int i10) {
                return ~i10;
            }
        };

        abstract int resultIndex(int i10);
    }

    enum KeyPresentBehavior {
        ANY_PRESENT {
            @Override
            <E> int resultIndex(Comparator<? super E> comparator, E e10, List<? extends E> list, int i10) {
                return i10;
            }
        },
        LAST_PRESENT {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            <E> int resultIndex(Comparator<? super E> comparator, E e10, List<? extends E> list, int i10) {
                int size = list.size() - 1;
                while (i10 < size) {
                    int i11 = ((i10 + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i11), e10) > 0) {
                        size = i11 - 1;
                    } else {
                        i10 = i11;
                    }
                }
                return i10;
            }
        },
        FIRST_PRESENT {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            <E> int resultIndex(Comparator<? super E> comparator, E e10, List<? extends E> list, int i10) {
                int i11 = 0;
                while (i11 < i10) {
                    int i12 = (i11 + i10) >>> 1;
                    if (comparator.compare(list.get(i12), e10) < 0) {
                        i11 = i12 + 1;
                    } else {
                        i10 = i12;
                    }
                }
                return i11;
            }
        },
        FIRST_AFTER {
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e10, List<? extends E> list, int i10) {
                return KeyPresentBehavior.LAST_PRESENT.resultIndex(comparator, e10, list, i10) + 1;
            }
        },
        LAST_BEFORE {
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e10, List<? extends E> list, int i10) {
                return KeyPresentBehavior.FIRST_PRESENT.resultIndex(comparator, e10, list, i10) - 1;
            }
        };

        abstract <E> int resultIndex(Comparator<? super E> comparator, E e10, List<? extends E> list, int i10);
    }

    public static int a(List list, com.google.common.base.f fVar, Comparable comparable, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        com.google.common.base.m.o(comparable);
        return b(list, fVar, comparable, Ordering.natural(), keyPresentBehavior, keyAbsentBehavior);
    }

    public static int b(List list, com.google.common.base.f fVar, Object obj, Comparator comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        return c(Lists.o(list, fVar), obj, comparator, keyPresentBehavior, keyAbsentBehavior);
    }

    public static int c(List list, Object obj, Comparator comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(list);
        com.google.common.base.m.o(keyPresentBehavior);
        com.google.common.base.m.o(keyAbsentBehavior);
        if (!(list instanceof RandomAccess)) {
            list = new ArrayList(list);
        }
        int size = list.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            int iCompare = comparator.compare(obj, list.get(i11));
            if (iCompare < 0) {
                size = i11 - 1;
            } else {
                if (iCompare <= 0) {
                    return i10 + keyPresentBehavior.resultIndex(comparator, obj, list.subList(i10, size + 1), i11 - i10);
                }
                i10 = i11 + 1;
            }
        }
        return keyAbsentBehavior.resultIndex(i10);
    }
}
