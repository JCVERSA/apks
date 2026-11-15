package com.transsion.apiinvoke.monitor;

import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

public class ApiInvokeMonitor {
    private static final int MAX_RECORD_TRACE = 30;
    private static final int MAX_TRACE = 100;
    private static volatile ApiInvokeMonitor instance;
    private List<InvokeMonitor> monitors = new ArrayList();
    private Map<Integer, RecordItem> cachedRecords = new LinkedHashMap<Integer, RecordItem>() {
        private static final long serialVersionUID = 1141621631228391789L;

        @Override
        public boolean removeEldestEntry(Map.Entry<Integer, RecordItem> entry) {
            return size() >= 30;
        }
    };

    public static class DefaultTraceMonitor implements InvokeMonitor {
        protected List<RecordItem> recordProcessing = new CopyOnWriteArrayList();
        protected List<RecordItem> recordList = new CopyOnWriteArrayList();

        @Override
        public void onInvokeEnd(RecordItem recordItem, ApiCallback apiCallback) {
            synchronized (this.recordList) {
                try {
                    if (this.recordList.size() > 100) {
                        this.recordList.clear();
                    }
                    this.recordList.add(0, recordItem);
                } catch (Throwable th) {
                    throw th;
                }
            }
            synchronized (this.recordProcessing) {
                this.recordProcessing.remove(recordItem);
            }
        }

        @Override
        public void onInvokeStart(RecordItem recordItem) {
            synchronized (this.recordProcessing) {
                try {
                    this.recordProcessing.add(0, recordItem);
                    if (this.recordProcessing.size() >= 100) {
                        this.recordProcessing.remove(99);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private ApiInvokeMonitor() {
        addMonitor(new DefaultTraceMonitor());
    }

    private void dispatchEnd(RecordItem recordItem, ApiCallback apiCallback) {
        synchronized (this.monitors) {
            for (int i = 0; i < this.monitors.size(); i++) {
                try {
                    this.monitors.get(i).onInvokeEnd(recordItem, apiCallback);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void dispatchStart(RecordItem recordItem) {
        synchronized (this.monitors) {
            for (int i = 0; i < this.monitors.size(); i++) {
                try {
                    this.monitors.get(i).onInvokeStart(recordItem);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static ApiInvokeMonitor getInstance() {
        if (instance == null) {
            synchronized (ApiInvokeMonitor.class) {
                try {
                    if (instance == null) {
                        instance = new ApiInvokeMonitor();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void addMonitor(InvokeMonitor invokeMonitor) {
        synchronized (this.monitors) {
            try {
                if (!this.monitors.contains(invokeMonitor)) {
                    this.monitors.add(invokeMonitor);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeMonitor(InvokeMonitor invokeMonitor) {
        synchronized (this.monitors) {
            this.monitors.remove(invokeMonitor);
        }
    }

    public void traceEnd(ApiRequest apiRequest, ApiResponse apiResponse, ApiCallback apiCallback) {
        int iHashCode = Objects.hashCode(apiRequest);
        RecordItem recordItem = this.cachedRecords.get(Integer.valueOf(iHashCode));
        if (recordItem != null) {
            recordItem.setResult(apiResponse, System.currentTimeMillis());
            this.cachedRecords.remove(Integer.valueOf(iHashCode));
            dispatchEnd(recordItem, apiCallback);
        }
    }

    public void tracePublish(ApiRequest apiRequest, String str, Serializable serializable) {
        RecordItem recordItemCreatePublish = RecordItem.createPublish(apiRequest, str, serializable, System.currentTimeMillis());
        this.cachedRecords.put(Integer.valueOf(Objects.hashCode(apiRequest)), recordItemCreatePublish);
        dispatchStart(recordItemCreatePublish);
    }

    public void traceRequest(ApiRequest apiRequest, boolean z) {
        RecordItem recordItemCreateRequest = RecordItem.createRequest(apiRequest, System.currentTimeMillis(), z);
        this.cachedRecords.put(Integer.valueOf(Objects.hashCode(apiRequest)), recordItemCreateRequest);
        dispatchStart(recordItemCreateRequest);
    }
}
