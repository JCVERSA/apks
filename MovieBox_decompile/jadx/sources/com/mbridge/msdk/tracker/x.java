package com.mbridge.msdk.tracker;

import android.util.Log;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

public class x {

    public final int f37908a;

    public final int f37909b;

    public final int f37910c;

    public final int f37911d;

    public final int f37912e;

    public final int f37913f;

    public final p f37914g;

    public final d f37915h;

    public final w f37916i;

    public final f f37917j;

    public static final class b {

        private p f37921d;

        private d f37925h;

        private w f37926i;

        private f f37927j;

        private int f37918a = 50;

        private int f37919b = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

        private int f37920c = 1;

        private int f37922e = 2;

        private int f37923f = 50;

        private int f37924g = MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF;

        public b a(int i10, p pVar) {
            this.f37920c = i10;
            this.f37921d = pVar;
            return this;
        }

        public b b(int i10) {
            if (i10 <= 0) {
                this.f37918a = 50;
            } else {
                this.f37918a = i10;
            }
            return this;
        }

        public b c(int i10) {
            if (i10 < 0) {
                this.f37919b = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
            } else {
                this.f37919b = i10;
            }
            return this;
        }

        public b d(int i10) {
            if (i10 < 0) {
                this.f37923f = 50;
            } else {
                this.f37923f = i10;
            }
            return this;
        }

        public b e(int i10) {
            if (i10 <= 0) {
                this.f37922e = 2;
            } else {
                this.f37922e = i10;
            }
            return this;
        }

        public b a(int i10) {
            if (i10 < 0) {
                this.f37924g = MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF;
            } else {
                this.f37924g = i10;
            }
            return this;
        }

        public b a(d dVar) {
            this.f37925h = dVar;
            return this;
        }

        public b a(w wVar) {
            this.f37926i = wVar;
            return this;
        }

        public b a(f fVar) {
            this.f37927j = fVar;
            return this;
        }

        public x a() {
            if (y.b(this.f37925h) && com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", "decorate can not be null");
            }
            if (y.b(this.f37926i) && com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", "responseHandler can not be null");
            }
            if ((y.b(this.f37921d) || y.b(this.f37921d.b())) && com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", "networkStackConfig or stack can not be null");
            }
            return new x(this);
        }
    }

    private x(b bVar) {
        this.f37908a = bVar.f37918a;
        this.f37909b = bVar.f37919b;
        this.f37910c = bVar.f37920c;
        this.f37911d = bVar.f37922e;
        this.f37912e = bVar.f37923f;
        this.f37913f = bVar.f37924g;
        this.f37914g = bVar.f37921d;
        this.f37915h = bVar.f37925h;
        this.f37916i = bVar.f37926i;
        this.f37917j = bVar.f37927j;
    }
}
