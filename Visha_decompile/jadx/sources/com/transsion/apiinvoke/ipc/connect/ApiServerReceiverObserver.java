package com.transsion.apiinvoke.ipc.connect;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class ApiServerReceiverObserver implements ApiMessageReceiver {
    private ExecutorService mExecute;
    private List<ApiMessageReceiver> mReceivers = Collections.synchronizedList(new ArrayList());

    public ApiServerReceiverObserver(ExecutorService executorService) {
        this.mExecute = executorService;
    }

    public void lambda$onReceiveMessage$0(String str, Object obj) {
        synchronized (this.mReceivers) {
            try {
                Iterator<ApiMessageReceiver> it = this.mReceivers.iterator();
                while (it.hasNext()) {
                    it.next().onReceiveMessage(str, obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onReceiveMessage(final String str, final Object obj) {
        ExecutorService executorService = this.mExecute;
        if (executorService != null) {
            executorService.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onReceiveMessage$0(str, obj);
                }
            });
        } else {
            lambda$onReceiveMessage$0(str, obj);
        }
    }

    public void registerReceiver(ApiMessageReceiver apiMessageReceiver) {
        List<ApiMessageReceiver> list = this.mReceivers;
        if (list != null) {
            list.add(apiMessageReceiver);
        }
    }

    public void unRegisterReceiver(ApiMessageReceiver apiMessageReceiver) {
        this.mReceivers.remove(apiMessageReceiver);
    }
}
