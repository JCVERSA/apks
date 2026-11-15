package com.transsion.apiinvoke.monitor;

import com.transsion.apiinvoke.invoke.api.ApiCallback;

public interface InvokeMonitor {
    void onInvokeEnd(RecordItem recordItem, ApiCallback apiCallback);

    void onInvokeStart(RecordItem recordItem);
}
