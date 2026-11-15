package com.transsion.socket.mian;

import java.io.IOException;
import java.io.PrintStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

public class UDPSocketMain {
    static final int SERVICE_PORT = 3006;

    public static void runUDPServer() {
        try {
            DatagramSocket datagramSocket = new DatagramSocket(3006);
            try {
                DatagramPacket datagramPacket = new DatagramPacket(new byte[1024], 1024);
                System.out.println("Waiting for a client to connect...");
                do {
                    datagramSocket.receive(datagramPacket);
                } while (datagramPacket.getData()[0] != 1);
                PrintStream printStream = System.out;
                printStream.println("Waiting OVER...........................");
                String str = new String(datagramPacket.getData());
                printStream.println("Sent from the client: " + str);
                byte[] bytes = str.toUpperCase().getBytes();
                datagramSocket.send(new DatagramPacket(bytes, bytes.length, datagramPacket.getAddress(), datagramPacket.getPort()));
                datagramSocket.close();
                datagramSocket.close();
            } catch (Throwable th) {
                try {
                    datagramSocket.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (SocketException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
