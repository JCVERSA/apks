package com.hunantv.media.player.d;

import com.hunantv.media.widget.IVideoView;

public class b {
    private Object a = new Object();
    private c b;
    private IVideoView c;

    public void a() {
        synchronized (this.a) {
            try {
                c cVar = this.b;
                if (cVar != null) {
                    cVar.b();
                    this.b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(int i, int i2) {
        synchronized (this.a) {
            try {
                c cVar = this.b;
                if (cVar != null) {
                    cVar.a(i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i, int i2) {
        synchronized (this.a) {
            try {
                c cVar = this.b;
                if (cVar != null) {
                    cVar.b(i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(IVideoView iVideoView) {
        this.c = iVideoView;
        synchronized (this.a) {
            try {
                c cVar = this.b;
                if (cVar != null) {
                    cVar.a(iVideoView);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(float[] fArr) {
        synchronized (this.a) {
            try {
                c cVar = this.b;
                if (cVar != null) {
                    cVar.a(fArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean a(int i, int i2, int i3, int i4, int i5, com.hunantv.media.player.d.a.b bVar) {
        synchronized (this.a) {
            try {
                if (this.b != null) {
                    return false;
                }
                c cVar = new c(i, i2, i3);
                this.b = cVar;
                cVar.a(this.c);
                this.b.a(i4, i5);
                this.b.a(bVar);
                this.b.a();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean a(com.hunantv.media.player.d.a.b bVar) {
        synchronized (this.a) {
            try {
                c cVar = this.b;
                if (cVar == null) {
                    return false;
                }
                cVar.a(bVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
