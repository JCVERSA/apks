package com.hunantv.imgo.log.b;

import android.net.LocalSocket;
import android.util.SparseArray;
import com.hunantv.imgo.util.n;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class b extends Thread {
    private LocalSocket a;
    private SparseArray<f> b;

    public b(LocalSocket localSocket) {
        this.a = localSocket;
        SparseArray<f> sparseArray = new SparseArray<>();
        this.b = sparseArray;
        sparseArray.put(11, c.a());
        this.b.put(10, e.a());
        this.b.put(13, e.a());
        this.b.put(12, a.a());
        setName("ConnectionThread");
    }

    private void a(byte b, OutputStream outputStream) throws IOException {
        n.a("LocalConnection", "responseError cmd = " + ((int) b));
        com.hunantv.imgo.log.entity.c cVar = new com.hunantv.imgo.log.entity.c(new com.hunantv.imgo.log.entity.a(b, 0), null);
        if (cVar.a() != null) {
            outputStream.write(cVar.a());
            outputStream.flush();
        }
    }

    @Override
    public void run() {
        InputStream inputStream;
        OutputStream outputStream;
        com.hunantv.imgo.log.entity.b bVar;
        f fVar;
        com.hunantv.imgo.log.entity.c cVarA;
        if (this.a == null) {
            return;
        }
        n.a("LocalConnection", "run start");
        try {
            inputStream = this.a.getInputStream();
            try {
                outputStream = this.a.getOutputStream();
                try {
                    byte[] bArr = new byte[com.hunantv.imgo.log.entity.a.c()];
                    while (true) {
                        int i = inputStream.read(bArr, 0, com.hunantv.imgo.log.entity.a.c());
                        if (i != com.hunantv.imgo.log.entity.a.c()) {
                            n.c("LocalConnection", "received  client protocol exception, length = " + i);
                            a((byte) 22, outputStream);
                            break;
                        }
                        com.hunantv.imgo.log.entity.a aVarA = com.hunantv.imgo.log.entity.a.a(bArr);
                        if (!aVarA.b()) {
                            n.c("LocalConnection", "received client protocol invalid");
                            a((byte) 22, outputStream);
                            break;
                        }
                        int i2 = aVarA.a;
                        if (i2 > 0) {
                            byte[] bArr2 = new byte[i2];
                            bVar = inputStream.read(bArr2) == aVarA.a ? new com.hunantv.imgo.log.entity.b(aVarA, bArr2) : null;
                        } else {
                            bVar = new com.hunantv.imgo.log.entity.b(aVarA, null);
                        }
                        if (bVar == null || (fVar = this.b.get(bVar.a.b)) == null || (cVarA = fVar.a(bVar)) == null || cVarA.a() == null) {
                            a((byte) 23, outputStream);
                        } else {
                            outputStream.write(cVarA.a());
                            outputStream.flush();
                        }
                    }
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    LocalSocket localSocket = this.a;
                    if (localSocket != null) {
                        try {
                            localSocket.close();
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        }
                        this.a = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        n.c("LocalConnection", "connection exception and close this connection, e = " + th.getStackTrace());
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        LocalSocket localSocket2 = this.a;
                        if (localSocket2 != null) {
                            try {
                                localSocket2.close();
                            } catch (IOException e6) {
                                e = e6;
                                e.printStackTrace();
                            }
                            this.a = null;
                        }
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                        LocalSocket localSocket3 = this.a;
                        if (localSocket3 == null) {
                            throw th2;
                        }
                        try {
                            localSocket3.close();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                        }
                        this.a = null;
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = null;
            outputStream = null;
        }
        n.a("LocalConnection", "loop end");
    }
}
