package com.transsion.hubsdk.api.app;

import java.util.List;

public interface ITranNotificationStatsCallback {
    void onTranNotiStatsNotify(List<TranNotificationRanking> list);
}
