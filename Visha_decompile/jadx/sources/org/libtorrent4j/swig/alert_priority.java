package org.libtorrent4j.swig;

public final class alert_priority {
    public static final alert_priority critical;
    public static final alert_priority high;
    public static final alert_priority meta;
    public static final alert_priority normal;
    private static int swigNext;
    private static alert_priority[] swigValues;
    private final String swigName;
    private final int swigValue;

    static {
        alert_priority alert_priorityVar = new alert_priority("normal", libtorrent_jni.alert_priority_normal_get());
        normal = alert_priorityVar;
        alert_priority alert_priorityVar2 = new alert_priority("high");
        high = alert_priorityVar2;
        alert_priority alert_priorityVar3 = new alert_priority("critical");
        critical = alert_priorityVar3;
        alert_priority alert_priorityVar4 = new alert_priority("meta");
        meta = alert_priorityVar4;
        swigValues = new alert_priority[]{alert_priorityVar, alert_priorityVar2, alert_priorityVar3, alert_priorityVar4};
        swigNext = 0;
    }

    private alert_priority(String str) {
        this.swigName = str;
        int i = swigNext;
        swigNext = i + 1;
        this.swigValue = i;
    }

    public static alert_priority swigToEnum(int i) {
        alert_priority[] alert_priorityVarArr = swigValues;
        if (i < alert_priorityVarArr.length && i >= 0) {
            alert_priority alert_priorityVar = alert_priorityVarArr[i];
            if (alert_priorityVar.swigValue == i) {
                return alert_priorityVar;
            }
        }
        int i2 = 0;
        while (true) {
            alert_priority[] alert_priorityVarArr2 = swigValues;
            if (i2 >= alert_priorityVarArr2.length) {
                throw new IllegalArgumentException("No enum " + alert_priority.class + " with value " + i);
            }
            alert_priority alert_priorityVar2 = alert_priorityVarArr2[i2];
            if (alert_priorityVar2.swigValue == i) {
                return alert_priorityVar2;
            }
            i2++;
        }
    }

    public final int swigValue() {
        return this.swigValue;
    }

    public String toString() {
        return this.swigName;
    }

    private alert_priority(String str, int i) {
        this.swigName = str;
        this.swigValue = i;
        swigNext = i + 1;
    }

    private alert_priority(String str, alert_priority alert_priorityVar) {
        this.swigName = str;
        int i = alert_priorityVar.swigValue;
        this.swigValue = i;
        swigNext = i + 1;
    }
}
