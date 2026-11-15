package com.hunantv.media.player.libnative;

import com.hunantv.media.player.MgtvPlayerLogger;

public class ImgoReportLog {
    public static void ImgoLogReport(int i, String str, String str2, String str3) {
        if (MgtvPlayerLogger.getLogCallback() != null) {
            if (MgtvPlayerLogger.isDebugMode() || i != 0) {
                MgtvPlayerLogger.getLogCallback().onLogCb(i, str, "[MgtvCore-" + Thread.currentThread().getId() + "]" + str2, str3);
            }
        }
    }
}
