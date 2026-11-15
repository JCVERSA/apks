package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

public class ExecutorDelivery implements j {

    private final Executor f18600a;

    private static class ResponseDeliveryRunnable implements Runnable {
        private final Request mRequest;
        private final i mResponse;
        private final Runnable mRunnable;

        public ResponseDeliveryRunnable(Request request, i iVar, Runnable runnable) {
            this.mRequest = request;
            this.mResponse = iVar;
            this.mRunnable = runnable;
        }

        @Override
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish("canceled-at-delivery");
                return;
            }
            if (this.mResponse.b()) {
                this.mRequest.deliverResponse(this.mResponse.f18634a);
            } else {
                this.mRequest.deliverError(this.mResponse.f18636c);
            }
            if (this.mResponse.f18637d) {
                this.mRequest.addMarker("intermediate-response");
            } else {
                this.mRequest.finish("done");
            }
            Runnable runnable = this.mRunnable;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    class a implements Executor {

        final Handler f18601a;

        a(Handler handler) {
            this.f18601a = handler;
        }

        @Override
        public void execute(Runnable runnable) {
            this.f18601a.post(runnable);
        }
    }

    public ExecutorDelivery(Handler handler) {
        this.f18600a = new a(handler);
    }

    @Override
    public void a(Request request, i iVar) {
        b(request, iVar, null);
    }

    @Override
    public void b(Request request, i iVar, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f18600a.execute(new ResponseDeliveryRunnable(request, iVar, runnable));
    }

    @Override
    public void c(Request request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f18600a.execute(new ResponseDeliveryRunnable(request, i.a(volleyError), null));
    }
}
