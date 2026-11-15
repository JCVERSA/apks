package com.google.common.collect;

import defpackage.o74;
import defpackage.xd8;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

public abstract class SortedLists {

    public enum KeyAbsentBehavior {
        NEXT_LOWER {
            @Override
            public int resultIndex(int i) {
                return i - 1;
            }
        },
        NEXT_HIGHER {
            @Override
            public int resultIndex(int i) {
                return i;
            }
        },
        INVERTED_INSERTION_INDEX {
            @Override
            public int resultIndex(int i) {
                return ~i;
            }
        };

        public abstract int resultIndex(int i);
    }

    public enum KeyPresentBehavior {
        ANY_PRESENT {
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return i;
            }
        },
        LAST_PRESENT {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                int size = list.size() - 1;
                while (i < size) {
                    int i2 = ((i + size) + 1) >>> 1;
                    if (comparator.compare(list.get(i2), e) > 0) {
                        size = i2 - 1;
                    } else {
                        i = i2;
                    }
                }
                return i;
            }
        },
        FIRST_PRESENT {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                int i2 = 0;
                while (i2 < i) {
                    int i3 = (i2 + i) >>> 1;
                    if (comparator.compare(list.get(i3), e) < 0) {
                        i2 = i3 + 1;
                    } else {
                        i = i3;
                    }
                }
                return i2;
            }
        },
        FIRST_AFTER {
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return KeyPresentBehavior.LAST_PRESENT.resultIndex(comparator, e, list, i) + 1;
            }
        },
        LAST_BEFORE {
            @Override
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return KeyPresentBehavior.FIRST_PRESENT.resultIndex(comparator, e, list, i) - 1;
            }
        };

        public abstract <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i);
    }

    public static int a(List list, o74 o74Var, Comparable comparable, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        xd8.o(comparable);
        return b(list, o74Var, comparable, Ordering.natural(), keyPresentBehavior, keyAbsentBehavior);
    }

    public static int b(List list, o74 o74Var, Object obj, Comparator comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        return c(Lists.o(list, o74Var), obj, comparator, keyPresentBehavior, keyAbsentBehavior);
    }

    public static int c(List list, Object obj, Comparator comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        xd8.o(comparator);
        xd8.o(list);
        xd8.o(keyPresentBehavior);
        xd8.o(keyAbsentBehavior);
        if (!(list instanceof RandomAccess)) {
            list = new ArrayList(list);
        }
        int size = list.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            int iCompare = comparator.compare(obj, list.get(i2));
            if (iCompare < 0) {
                size = i2 - 1;
            } else {
                if (iCompare <= 0) {
                    return i + keyPresentBehavior.resultIndex(comparator, obj, list.subList(i, size + 1), i2 - i);
                }
                i = i2 + 1;
            }
        }
        return keyAbsentBehavior.resultIndex(i);
    }
}
