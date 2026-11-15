package com.transsion.hubsdk.aosp.app;

import android.app.TaskInfo;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranTaskInfoAdapter;
import java.lang.reflect.Field;

public class TranAospTaskInfo implements ITranTaskInfoAdapter {
    @Override
    public int getDisplayId(TaskInfo taskInfo) {
        Integer num;
        Field field = TranDoorMan.getField(TaskInfo.class, "displayId");
        if (field == null || (num = (Integer) TranDoorMan.getFieldValue(field, taskInfo)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override
    public boolean getSupportsMultiWindow(TaskInfo taskInfo) {
        Field field = TranDoorMan.getField(TaskInfo.class, "supportsMultiWindow");
        if (field != null) {
            return ((Boolean) TranDoorMan.getFieldValue(field, taskInfo)).booleanValue();
        }
        return false;
    }

    @Override
    public int getUserId(TaskInfo taskInfo) {
        Field field = TranDoorMan.getField(TaskInfo.class, "userId");
        if (field != null) {
            return ((Integer) TranDoorMan.getFieldValue(field, taskInfo)).intValue();
        }
        return 0;
    }
}
