package com.transsion.socket;

import android.app.Application;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.transsion.socket.internal.LooperExecutor;
import com.transsion.socket.pkgdata.SocketData;

public class SocketMain {
    private static final boolean DEBUG_ALL = true;
    public static boolean DEBUG_DATA_TRANSFER = true;
    public static final boolean DEBUG_HEART = false;
    public static boolean DEBUG_SEND_DATA = true;
    public static boolean DEBUG_SOCKET_CONNECT = true;
    public static boolean DEBUG_SOCKET_HEARTBEAT = true;
    public static boolean DEBUG_SOCKET_PRINT_TRACE = true;
    public static boolean DEBUG_SOCKET_STREAM = true;
    public static boolean DEBUG_TRANSFER_SPEED = false;
    public static int PACKAGE_MAX_BLOCK_SIZE = 204800;
    private static final int SOCKET_VERSION = 10;
    static Application sApplication;
    static SocketDataCreator sSocketDataCreator;
    static Handler sMainHandler = new Handler(Looper.getMainLooper());
    public static final LooperExecutor MAIN_EXECUTOR = new LooperExecutor(Looper.getMainLooper());
    public static final LooperExecutor SOCKET_HELP_EXECUTOR = new LooperExecutor(createAndStartNewLooper("socket-help", -2));

    public interface SocketDataCreator {
        SocketData creatorSocketData(int i);
    }

    public static Application app() {
        return sApplication;
    }

    public static Looper createAndStartNewLooper(String str, int i) {
        HandlerThread handlerThread = new HandlerThread(str, i);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    public static SocketDataCreator getSocketDataCreator() {
        return sSocketDataCreator;
    }

    public static int getSocketVersion() {
        return 10;
    }

    public static void init(Application application, SocketDataCreator socketDataCreator) {
        sApplication = application;
        sSocketDataCreator = socketDataCreator;
    }

    public static void setDebug(boolean z) {
        DEBUG_SEND_DATA = true;
        DEBUG_DATA_TRANSFER = true;
        DEBUG_SOCKET_STREAM = true;
        DEBUG_SOCKET_PRINT_TRACE = true;
        DEBUG_TRANSFER_SPEED = false;
    }
}
