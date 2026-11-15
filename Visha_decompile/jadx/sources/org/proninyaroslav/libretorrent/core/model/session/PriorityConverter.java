package org.proninyaroslav.libretorrent.core.model.session;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import org.proninyaroslav.libretorrent.core.model.data.Priority;

class PriorityConverter {
    private static final SparseArray<Priority> LIB_PRIOR_TO_PRIOR;
    private static final SparseArray<org.libtorrent4j.Priority> PRIOR_TO_LIB_PRIOR;

    static {
        SparseArray<org.libtorrent4j.Priority> sparseArray = new SparseArray<>();
        PRIOR_TO_LIB_PRIOR = sparseArray;
        Priority priority = Priority.IGNORE;
        int iValue = priority.value();
        org.libtorrent4j.Priority priority2 = org.libtorrent4j.Priority.IGNORE;
        sparseArray.put(iValue, priority2);
        Priority priority3 = Priority.LOW;
        int iValue2 = priority3.value();
        org.libtorrent4j.Priority priority4 = org.libtorrent4j.Priority.LOW;
        sparseArray.put(iValue2, priority4);
        Priority priority5 = Priority.TWO;
        int iValue3 = priority5.value();
        org.libtorrent4j.Priority priority6 = org.libtorrent4j.Priority.TWO;
        sparseArray.put(iValue3, priority6);
        Priority priority7 = Priority.THREE;
        int iValue4 = priority7.value();
        org.libtorrent4j.Priority priority8 = org.libtorrent4j.Priority.THREE;
        sparseArray.put(iValue4, priority8);
        Priority priority9 = Priority.DEFAULT;
        int iValue5 = priority9.value();
        org.libtorrent4j.Priority priority10 = org.libtorrent4j.Priority.DEFAULT;
        sparseArray.put(iValue5, priority10);
        Priority priority11 = Priority.FIVE;
        int iValue6 = priority11.value();
        org.libtorrent4j.Priority priority12 = org.libtorrent4j.Priority.FIVE;
        sparseArray.put(iValue6, priority12);
        Priority priority13 = Priority.SIX;
        int iValue7 = priority13.value();
        org.libtorrent4j.Priority priority14 = org.libtorrent4j.Priority.SIX;
        sparseArray.put(iValue7, priority14);
        Priority priority15 = Priority.TOP_PRIORITY;
        int iValue8 = priority15.value();
        org.libtorrent4j.Priority priority16 = org.libtorrent4j.Priority.TOP_PRIORITY;
        sparseArray.put(iValue8, priority16);
        SparseArray<Priority> sparseArray2 = new SparseArray<>();
        LIB_PRIOR_TO_PRIOR = sparseArray2;
        sparseArray2.put(priority2.swig(), priority);
        sparseArray2.put(priority4.swig(), priority3);
        sparseArray2.put(priority6.swig(), priority5);
        sparseArray2.put(priority8.swig(), priority7);
        sparseArray2.put(priority10.swig(), priority9);
        sparseArray2.put(priority12.swig(), priority11);
        sparseArray2.put(priority14.swig(), priority13);
        sparseArray2.put(priority16.swig(), priority15);
    }

    public static org.libtorrent4j.Priority[] convert(@NonNull Priority[] priorityArr) {
        int length = priorityArr.length;
        org.libtorrent4j.Priority[] priorityArr2 = new org.libtorrent4j.Priority[length];
        for (int i = 0; i < length; i++) {
            Priority priority = priorityArr[i];
            if (priority == null) {
                priorityArr2[i] = null;
            } else {
                org.libtorrent4j.Priority priority2 = PRIOR_TO_LIB_PRIOR.get(priority.value());
                if (priority2 == null) {
                    priority2 = org.libtorrent4j.Priority.DEFAULT;
                }
                priorityArr2[i] = priority2;
            }
        }
        return priorityArr2;
    }

    public static Priority[] convert(@NonNull org.libtorrent4j.Priority[] priorityArr) {
        int length = priorityArr.length;
        Priority[] priorityArr2 = new Priority[length];
        for (int i = 0; i < length; i++) {
            org.libtorrent4j.Priority priority = priorityArr[i];
            if (priority == null) {
                priorityArr2[i] = null;
            } else {
                Priority priority2 = LIB_PRIOR_TO_PRIOR.get(priority.swig());
                if (priority2 == null) {
                    priority2 = Priority.DEFAULT;
                }
                priorityArr2[i] = priority2;
            }
        }
        return priorityArr2;
    }

    public static org.libtorrent4j.Priority convert(@NonNull Priority priority) {
        org.libtorrent4j.Priority priority2 = PRIOR_TO_LIB_PRIOR.get(priority.value());
        return priority2 == null ? org.libtorrent4j.Priority.DEFAULT : priority2;
    }

    public static Priority convert(@NonNull org.libtorrent4j.Priority priority) {
        Priority priority2 = LIB_PRIOR_TO_PRIOR.get(priority.swig());
        return priority2 == null ? Priority.DEFAULT : priority2;
    }
}
