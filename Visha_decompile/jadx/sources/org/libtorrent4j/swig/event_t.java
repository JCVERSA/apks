package org.libtorrent4j.swig;

import com.transsion.vishaplayersdk.vkPlayer.VkConstant;

public final class event_t {
    public static final event_t completed;
    public static final event_t none;
    public static final event_t paused;
    public static final event_t started;
    public static final event_t stopped;
    private static int swigNext;
    private static event_t[] swigValues;
    private final String swigName;
    private final int swigValue;

    static {
        event_t event_tVar = new event_t("none");
        none = event_tVar;
        event_t event_tVar2 = new event_t("completed");
        completed = event_tVar2;
        event_t event_tVar3 = new event_t(VkConstant.VK_EVENT_STARTED);
        started = event_tVar3;
        event_t event_tVar4 = new event_t("stopped");
        stopped = event_tVar4;
        event_t event_tVar5 = new event_t("paused");
        paused = event_tVar5;
        swigValues = new event_t[]{event_tVar, event_tVar2, event_tVar3, event_tVar4, event_tVar5};
        swigNext = 0;
    }

    private event_t(String str) {
        this.swigName = str;
        int i = swigNext;
        swigNext = i + 1;
        this.swigValue = i;
    }

    public static event_t swigToEnum(int i) {
        event_t[] event_tVarArr = swigValues;
        if (i < event_tVarArr.length && i >= 0) {
            event_t event_tVar = event_tVarArr[i];
            if (event_tVar.swigValue == i) {
                return event_tVar;
            }
        }
        int i2 = 0;
        while (true) {
            event_t[] event_tVarArr2 = swigValues;
            if (i2 >= event_tVarArr2.length) {
                throw new IllegalArgumentException("No enum " + event_t.class + " with value " + i);
            }
            event_t event_tVar2 = event_tVarArr2[i2];
            if (event_tVar2.swigValue == i) {
                return event_tVar2;
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

    private event_t(String str, int i) {
        this.swigName = str;
        this.swigValue = i;
        swigNext = i + 1;
    }

    private event_t(String str, event_t event_tVar) {
        this.swigName = str;
        int i = event_tVar.swigValue;
        this.swigValue = i;
        swigNext = i + 1;
    }
}
