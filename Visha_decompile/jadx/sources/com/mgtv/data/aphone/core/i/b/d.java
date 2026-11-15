package com.mgtv.data.aphone.core.i.b;

import android.net.LocalServerSocket;
import java.io.IOException;

public class d {
    private static d b;
    private a a;

    public class a extends Thread {
        private boolean b = false;
        private LocalServerSocket c;

        public a(LocalServerSocket localServerSocket) {
            this.c = localServerSocket;
            setName("big_data_sdk  trace local service");
        }

        public void a() {
            this.b = true;
            try {
                LocalServerSocket localServerSocket = this.c;
                if (localServerSocket != null) {
                    localServerSocket.close();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override
        public void run() {
            while (!this.b) {
                try {
                    try {
                        try {
                            try {
                                new com.mgtv.data.aphone.core.i.b.a(this.c.accept()).start();
                            } catch (Throwable th) {
                                th.printStackTrace();
                                LocalServerSocket localServerSocket = this.c;
                                if (localServerSocket != null) {
                                    localServerSocket.close();
                                    this.c = null;
                                }
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                            LocalServerSocket localServerSocket2 = this.c;
                            if (localServerSocket2 != null) {
                                localServerSocket2.close();
                                this.c = null;
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            LocalServerSocket localServerSocket3 = this.c;
                            if (localServerSocket3 != null) {
                                localServerSocket3.close();
                                this.c = null;
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        throw th2;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            LocalServerSocket localServerSocket4 = this.c;
            if (localServerSocket4 != null) {
                localServerSocket4.close();
                this.c = null;
            }
        }
    }

    private d() {
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                try {
                    if (b == null) {
                        b = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    private LocalServerSocket d() {
        try {
            return new LocalServerSocket("com.mgtv.data.trace");
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean b() {
        if (this.a != null) {
            c();
        }
        LocalServerSocket localServerSocketD = d();
        if (localServerSocketD == null) {
            return false;
        }
        a aVar = new a(localServerSocketD);
        this.a = aVar;
        try {
            aVar.start();
            return true;
        } catch (InternalError e) {
            e.printStackTrace();
            return true;
        }
    }

    public void c() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
            this.a = null;
        }
    }
}
