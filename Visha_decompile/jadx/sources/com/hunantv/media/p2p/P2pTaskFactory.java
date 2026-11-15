package com.hunantv.media.p2p;

import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.utils.ClassUtil;
import com.mgtv.a.b;

public class P2pTaskFactory {
    public static final String P2P_MGR_CLASS_NAME = "com.mgtv.p2p.ImgoP2pMgr";
    public static final String P2P_TASK_CLASS_NAME = "com.mgtv.p2p.ImgoP2pTask";
    public static final String P2P_TASK_INFO_CLASS_NAME = "com.mgtv.p2p.ImgoTaskInfo";
    public static final String TAG = "P2P";
    public static final String YF_P2P_CLASS_NAME = "com.yunfan.net.Yfnet";
    public static boolean sP2pClassChecked = false;
    public static boolean sP2pClassExist = false;

    static {
        checkP2pClass();
    }

    public static synchronized boolean checkP2pClass() {
        try {
            if (!sP2pClassChecked) {
                sP2pClassExist = ClassUtil.isClassExist(P2P_TASK_CLASS_NAME) && ClassUtil.isClassExist(P2P_MGR_CLASS_NAME) && ClassUtil.isClassExist(P2P_TASK_INFO_CLASS_NAME) && ClassUtil.isClassExist(YF_P2P_CLASS_NAME);
                if (ClassUtil.isClassExist(YF_P2P_CLASS_NAME) && ClassUtil.isMethodExist(YF_P2P_CLASS_NAME, "GetVersion")) {
                    try {
                        DebugLog.i(TAG, "checkP2pClass ImgoP2pMgr p2p version:" + b.d().b());
                    } catch (Exception | UnsatisfiedLinkError e) {
                        e.printStackTrace();
                    }
                }
                sP2pClassChecked = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return sP2pClassExist;
    }

    public static IP2pTask create(Object obj) {
        checkP2pClass();
        if (obj != null && P2P_TASK_CLASS_NAME.equals(obj.getClass().getName()) && sP2pClassExist) {
            return P2pTask.build(obj);
        }
        return null;
    }
}
