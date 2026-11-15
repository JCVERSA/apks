package freemarker.debug.impl;

import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.ha9;
import defpackage.pq5;
import freemarker.template.utility.UndeclaredThrowableException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Random;

public class DebuggerServer {
    public static final pq5 f = pq5.k("freemarker.debug.server");
    public static final Random g = new SecureRandom();
    public final byte[] a;
    public final Serializable c;
    public ServerSocket e;
    public boolean d = false;
    public final int b = ha9.a("freemarker.debug.port", TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED).intValue();

    public class DebuggerAuthProtocol implements Runnable {
        private final Socket s;

        public DebuggerAuthProtocol(Socket socket) {
            this.s = socket;
        }

        @Override
        public void run() {
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(this.s.getOutputStream());
                ObjectInputStream objectInputStream = new ObjectInputStream(this.s.getInputStream());
                byte[] bArr = new byte[512];
                DebuggerServer.g.nextBytes(bArr);
                objectOutputStream.writeInt(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT);
                objectOutputStream.writeObject(bArr);
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(DebuggerServer.this.a);
                messageDigest.update(bArr);
                if (Arrays.equals((byte[]) objectInputStream.readObject(), messageDigest.digest())) {
                    objectOutputStream.writeObject(DebuggerServer.this.c);
                } else {
                    objectOutputStream.writeObject(null);
                }
            } catch (Exception e) {
                pq5 pq5Var = DebuggerServer.f;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Connection to ");
                stringBuffer.append(this.s.getInetAddress().getHostAddress());
                stringBuffer.append(" abruply broke");
                pq5Var.A(stringBuffer.toString(), e);
            }
        }
    }

    public DebuggerServer(Serializable serializable) {
        try {
            this.a = ha9.c("freemarker.debug.password", "").getBytes("UTF-8");
            this.c = serializable;
        } catch (UnsupportedEncodingException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    public void f() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                DebuggerServer.this.g();
            }
        }, "FreeMarker Debugger Server Acceptor").start();
    }

    public final void g() {
        try {
            this.e = new ServerSocket(this.b);
            while (!this.d) {
                new Thread(new DebuggerAuthProtocol(this.e.accept())).start();
            }
        } catch (IOException e) {
            f.h("Debugger server shut down.", e);
        }
    }
}
