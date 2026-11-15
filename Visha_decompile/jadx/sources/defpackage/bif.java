package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocketFactory;

public final class bif extends SSLSocketFactory {
    public final SSLSocketFactory a = (SSLSocketFactory) SSLSocketFactory.getDefault();
    public final cif b;

    public bif(cif cifVar) {
        this.b = cifVar;
    }

    public final Socket a(Socket socket) throws SocketException {
        cif cifVar = this.b;
        if (cifVar.s > 0) {
            socket.setReceiveBufferSize(cifVar.s);
        }
        cifVar.t.add(socket);
        return socket;
    }

    @Override
    public final Socket createSocket(String str, int i) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(str, i);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override
    public final String[] getDefaultCipherSuites() {
        return this.a.getDefaultCipherSuites();
    }

    @Override
    public final String[] getSupportedCipherSuites() {
        return this.a.getSupportedCipherSuites();
    }

    @Override
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(str, i, inetAddress, i2);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(inetAddress, i);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(inetAddress, i, inetAddress2, i2);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(socket, str, i, z);
        a(socketCreateSocket);
        return socketCreateSocket;
    }
}
