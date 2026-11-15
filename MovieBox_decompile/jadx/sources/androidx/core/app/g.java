package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import android.view.Window$OnFrameMetricsAvailableListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class g {

    private final b f7760a;

    private static class a extends b {

        private static HandlerThread f7761e;

        private static Handler f7762f;

        int f7763a;

        SparseIntArray[] f7764b = new SparseIntArray[9];

        private final ArrayList f7765c = new ArrayList();

        Window$OnFrameMetricsAvailableListener f7766d = new WindowOnFrameMetricsAvailableListenerC0057a();

        class WindowOnFrameMetricsAvailableListenerC0057a implements Window$OnFrameMetricsAvailableListener {
            WindowOnFrameMetricsAvailableListenerC0057a() {
            }

            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i10) {
                a aVar = a.this;
                if ((aVar.f7763a & 1) != 0) {
                    aVar.e(aVar.f7764b[0], frameMetrics.getMetric(8));
                }
                a aVar2 = a.this;
                if ((aVar2.f7763a & 2) != 0) {
                    aVar2.e(aVar2.f7764b[1], frameMetrics.getMetric(1));
                }
                a aVar3 = a.this;
                if ((aVar3.f7763a & 4) != 0) {
                    aVar3.e(aVar3.f7764b[2], frameMetrics.getMetric(3));
                }
                a aVar4 = a.this;
                if ((aVar4.f7763a & 8) != 0) {
                    aVar4.e(aVar4.f7764b[3], frameMetrics.getMetric(4));
                }
                a aVar5 = a.this;
                if ((aVar5.f7763a & 16) != 0) {
                    aVar5.e(aVar5.f7764b[4], frameMetrics.getMetric(5));
                }
                a aVar6 = a.this;
                if ((aVar6.f7763a & 64) != 0) {
                    aVar6.e(aVar6.f7764b[6], frameMetrics.getMetric(7));
                }
                a aVar7 = a.this;
                if ((aVar7.f7763a & 32) != 0) {
                    aVar7.e(aVar7.f7764b[5], frameMetrics.getMetric(6));
                }
                a aVar8 = a.this;
                if ((aVar8.f7763a & 128) != 0) {
                    aVar8.e(aVar8.f7764b[7], frameMetrics.getMetric(0));
                }
                a aVar9 = a.this;
                if ((aVar9.f7763a & 256) != 0) {
                    aVar9.e(aVar9.f7764b[8], frameMetrics.getMetric(2));
                }
            }
        }

        a(int i10) {
            this.f7763a = i10;
        }

        @Override
        public void a(Activity activity) {
            if (f7761e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f7761e = handlerThread;
                handlerThread.start();
                f7762f = new Handler(f7761e.getLooper());
            }
            for (int i10 = 0; i10 <= 8; i10++) {
                SparseIntArray[] sparseIntArrayArr = this.f7764b;
                if (sparseIntArrayArr[i10] == null && (this.f7763a & (1 << i10)) != 0) {
                    sparseIntArrayArr[i10] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f7766d, f7762f);
            this.f7765c.add(new WeakReference(activity));
        }

        @Override
        public SparseIntArray[] b() {
            return this.f7764b;
        }

        @Override
        public SparseIntArray[] c(Activity activity) {
            for (WeakReference weakReference : this.f7765c) {
                if (weakReference.get() == activity) {
                    this.f7765c.remove(weakReference);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f7766d);
            return this.f7764b;
        }

        @Override
        public SparseIntArray[] d() {
            SparseIntArray[] sparseIntArrayArr = this.f7764b;
            this.f7764b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }

        void e(SparseIntArray sparseIntArray, long j10) {
            if (sparseIntArray != null) {
                int i10 = (int) ((500000 + j10) / 1000000);
                if (j10 >= 0) {
                    sparseIntArray.put(i10, sparseIntArray.get(i10) + 1);
                }
            }
        }
    }

    public g() {
        this(1);
    }

    public void a(Activity activity) {
        this.f7760a.a(activity);
    }

    public SparseIntArray[] b() {
        return this.f7760a.b();
    }

    public SparseIntArray[] c(Activity activity) {
        return this.f7760a.c(activity);
    }

    public SparseIntArray[] d() {
        return this.f7760a.d();
    }

    public g(int i10) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f7760a = new a(i10);
        } else {
            this.f7760a = new b();
        }
    }

    private static class b {
        b() {
        }

        public SparseIntArray[] b() {
            return null;
        }

        public SparseIntArray[] c(Activity activity) {
            return null;
        }

        public SparseIntArray[] d() {
            return null;
        }

        public void a(Activity activity) {
        }
    }
}
