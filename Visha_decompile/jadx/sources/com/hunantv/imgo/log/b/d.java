package com.hunantv.imgo.log.b;

import android.net.LocalServerSocket;
import com.hunantv.imgo.util.n;
import java.io.IOException;

public class d {
    private static d b;
    private a a;

    public class a extends Thread {
        private boolean b = false;
        private LocalServerSocket c;

        public a(LocalServerSocket localServerSocket) {
            this.c = localServerSocket;
            setName("local service");
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
            try {
                try {
                    try {
                        try {
                            n.a("LogService", "LocalService start");
                            while (!this.b) {
                                b bVar = new b(this.c.accept());
                                n.c("LogService", "new connection come logServerConnection = " + bVar);
                                bVar.start();
                            }
                            LocalServerSocket localServerSocket = this.c;
                            if (localServerSocket != null) {
                                localServerSocket.close();
                                this.c = null;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        LocalServerSocket localServerSocket2 = this.c;
                        if (localServerSocket2 != null) {
                            localServerSocket2.close();
                            this.c = null;
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                    LocalServerSocket localServerSocket3 = this.c;
                    if (localServerSocket3 != null) {
                        localServerSocket3.close();
                        this.c = null;
                    }
                }
            } catch (Throwable th2) {
                try {
                    LocalServerSocket localServerSocket4 = this.c;
                    if (localServerSocket4 != null) {
                        localServerSocket4.close();
                        this.c = null;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                throw th2;
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
        n.a("LogService", "createLocalServerSocket start");
        try {
            LocalServerSocket localServerSocket = new LocalServerSocket("com.hunantv.imgo.log");
            n.a("LogService", "createLocalServerSocket success");
            return localServerSocket;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean b() throws Throwable {
        com.hunantv.imgo.log.b.a.a().b();
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
