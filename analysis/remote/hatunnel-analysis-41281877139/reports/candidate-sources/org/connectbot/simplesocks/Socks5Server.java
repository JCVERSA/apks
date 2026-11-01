package org.connectbot.simplesocks;

import app.fast.ssh.ProtectedFastSSH;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class Socks5Server {
    private static final int ATYPE_DNS = 3;
    private static final int ATYPE_IPV4 = 1;
    private static final int ATYPE_IPV6 = 4;
    private InetAddress address;
    private Command command;
    private String hostName;
    private final DataInputStream in;
    private final DataOutputStream out;
    private int port = -1;

    public enum Command {
        CONNECT(1),
        BIND(2);

        private final int commandNumber;

        Command(int i) {
            this.commandNumber = i;
        }

        public static Command fromCommandNumber(int i) {
            Command command = CONNECT;
            if (i == command.commandNumber()) {
                return command;
            }
            Command command2 = BIND;
            if (i == command2.commandNumber()) {
                return command2;
            }
            return null;
        }

        public int commandNumber() {
            return this.commandNumber;
        }
    }

    public enum ResponseCode {
        SUCCESS((byte) 0),
        GENERAL_FAILURE((byte) 1),
        RULESET_DENIED((byte) 2),
        NETWORK_UNREACHABLE((byte) 3),
        HOST_UNREACHABLE((byte) 4),
        CONNECTION_REFUSED((byte) 5),
        TTL_EXPIRED((byte) 6),
        COMMAND_NOT_SUPPORTED((byte) 7),
        ADDRESS_TYPE_NOT_SUPPORTED((byte) 8);

        private final byte code;

        ResponseCode(byte b) {
            this.code = b;
        }

        public byte getCode() {
            return this.code;
        }
    }

    public Socks5Server(InputStream inputStream, OutputStream outputStream) {
        this.in = new DataInputStream(inputStream);
        this.out = new DataOutputStream(outputStream);
    }

    private void checkProtocolVersion() throws IOException {
        if (this.in.read() != 5) {
            throw new IOException(ProtectedFastSSH.s("䙈"));
        }
    }

    public boolean acceptAuthentication() throws IOException {
        boolean z;
        checkProtocolVersion();
        int i = this.in.read();
        byte[] bArr = new byte[i];
        this.in.readFully(bArr);
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = false;
                break;
            }
            if (bArr[i2] == 0) {
                z = true;
                break;
            }
            i2++;
        }
        byte[] bArr2 = new byte[2];
        bArr2[0] = 5;
        if (z) {
            bArr2[1] = 0;
        } else {
            bArr2[1] = -1;
        }
        this.out.write(bArr2);
        return z;
    }

    public InetAddress getAddress() {
        return this.address;
    }

    public Command getCommand() {
        return this.command;
    }

    public String getHostName() {
        return this.hostName;
    }

    public int getPort() {
        return this.port;
    }

    public boolean readRequest() throws IOException {
        checkProtocolVersion();
        Command commandFromCommandNumber = Command.fromCommandNumber(this.in.read());
        this.command = commandFromCommandNumber;
        boolean z = false;
        boolean z2 = commandFromCommandNumber != null;
        if (this.in.read() != 0) {
            z2 = false;
        }
        int i = this.in.read();
        if (i == 1) {
            byte[] bArr = new byte[4];
            this.in.readFully(bArr);
            this.address = InetAddress.getByAddress(bArr);
        } else {
            if (i != 3) {
                if (i == 4) {
                    byte[] bArr2 = new byte[16];
                    this.in.readFully(bArr2);
                    this.address = InetAddress.getByAddress(bArr2);
                }
                this.port = (this.in.read() << 8) | this.in.read();
                return z;
            }
            byte[] bArr3 = new byte[this.in.read()];
            this.in.readFully(bArr3);
            this.hostName = Charset.forName(ProtectedFastSSH.s("䙉")).newDecoder().decode(ByteBuffer.wrap(bArr3)).toString();
        }
        z = z2;
        this.port = (this.in.read() << 8) | this.in.read();
        return z;
    }

    public void sendReply(ResponseCode responseCode) throws IOException {
        this.out.write(new byte[]{5, responseCode.getCode(), 0, 1, 0, 0, 0, 0, 0, 0});
    }
}
