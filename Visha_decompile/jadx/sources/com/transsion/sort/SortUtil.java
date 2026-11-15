package com.transsion.sort;

import defpackage.ubc;
import java.util.Comparator;

public abstract class SortUtil {

    public class NameComparator implements Comparator<String> {
        final SortUtil this$0;

        private NameComparator(SortUtil sortUtil) {
        }

        public NameComparator(SortUtil sortUtil, NameComparator nameComparator) {
            this(sortUtil);
        }

        @Override
        public int compare(String str, String str2) {
            throw null;
        }
    }

    public class NormalComparator implements Comparator<a> {
        final SortUtil this$0;

        private NormalComparator(SortUtil sortUtil) {
        }

        @Override
        public int compare(a aVar, a aVar2) {
            ubc.a(aVar);
            ubc.a(aVar2);
            return compare2((a) null, (a) null);
        }

        public NormalComparator(SortUtil sortUtil, NormalComparator normalComparator) {
            this(sortUtil);
        }

        public int compare2(a aVar, a aVar2) {
            aVar.getString();
            aVar2.getString();
            throw null;
        }
    }

    public interface a {
        String getString();
    }
}
