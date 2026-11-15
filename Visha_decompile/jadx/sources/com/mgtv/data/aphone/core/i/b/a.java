package com.mgtv.data.aphone.core.i.b;

import android.net.LocalSocket;
import android.util.SparseArray;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class a extends Thread {
    private LocalSocket a;
    private SparseArray<c> b;

    public a(LocalSocket localSocket) {
        this.a = localSocket;
        SparseArray<c> sparseArray = new SparseArray<>();
        this.b = sparseArray;
        sparseArray.put(11, b.a());
        setName("TraceLocalConnectionThread");
    }

    private void a(byte b, OutputStream outputStream) throws IOException {
        com.mgtv.data.aphone.core.i.a.c cVar = new com.mgtv.data.aphone.core.i.a.c(new com.mgtv.data.aphone.core.i.a.a(b, 0), null);
        if (cVar.a() != null) {
            outputStream.write(cVar.a());
            outputStream.flush();
        }
    }

    @Override
    public void run() {
        InputStream inputStream;
        OutputStream outputStream;
        com.mgtv.data.aphone.core.i.a.b bVar;
        c cVar;
        com.mgtv.data.aphone.core.i.a.c cVarA;
        LocalSocket localSocket = this.a;
        if (localSocket == null) {
            return;
        }
        try {
            inputStream = localSocket.getInputStream();
            try {
                outputStream = this.a.getOutputStream();
                try {
                    byte[] bArr = new byte[com.mgtv.data.aphone.core.i.a.a.c()];
                    while (true) {
                        if (inputStream.read(bArr, 0, com.mgtv.data.aphone.core.i.a.a.c()) != com.mgtv.data.aphone.core.i.a.a.c()) {
                            a((byte) 22, outputStream);
                            break;
                        }
                        com.mgtv.data.aphone.core.i.a.a aVarA = com.mgtv.data.aphone.core.i.a.a.a(bArr);
                        if (!aVarA.b()) {
                            a((byte) 22, outputStream);
                            break;
                        }
                        int i = aVarA.a;
                        if (i > 0) {
                            byte[] bArr2 = new byte[i];
                            bVar = inputStream.read(bArr2) == aVarA.a ? new com.mgtv.data.aphone.core.i.a.b(aVarA, bArr2) : null;
                        } else {
                            bVar = new com.mgtv.data.aphone.core.i.a.b(aVarA, null);
                        }
                        if (bVar == null || (cVar = this.b.get(bVar.a.b)) == null || (cVarA = cVar.a(bVar)) == null || cVarA.a() == null) {
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
                    LocalSocket localSocket2 = this.a;
                    if (localSocket2 != null) {
                        try {
                            localSocket2.close();
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        }
                        this.a = null;
                    }
                } catch (Throwable unused) {
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
                    LocalSocket localSocket3 = this.a;
                    if (localSocket3 == null) {
                        return;
                    }
                    try {
                        localSocket3.close();
                    } catch (IOException e6) {
                        e = e6;
                        e.printStackTrace();
                    }
                }
            } catch (Throwable unused2) {
                outputStream = null;
            }
        } catch (Throwable unused3) {
            inputStream = null;
            outputStream = null;
        }
    }
}
