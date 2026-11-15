package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import java.util.ArrayList;

public class TransferNetworkLossHandler extends BroadcastReceiver {

    private static final Log f17848d = LogFactory.b(TransferNetworkLossHandler.class);

    private static TransferNetworkLossHandler f17849e;

    final ConnectivityManager f17850a;

    private TransferDBUtil f17851b;

    TransferStatusUpdater f17852c;

    private TransferNetworkLossHandler(Context context) {
        this.f17850a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f17851b = new TransferDBUtil(context);
        this.f17852c = TransferStatusUpdater.c(context);
    }

    public static synchronized TransferNetworkLossHandler c() {
        TransferNetworkLossHandler transferNetworkLossHandler;
        transferNetworkLossHandler = f17849e;
        if (transferNetworkLossHandler == null) {
            f17848d.f("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
            throw new TransferUtilityException("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
        }
        return transferNetworkLossHandler;
    }

    public static synchronized TransferNetworkLossHandler d(Context context) {
        try {
            if (f17849e == null) {
                f17849e = new TransferNetworkLossHandler(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17849e;
    }

    public synchronized void f() {
        for (TransferRecord transferRecord : this.f17852c.e().values()) {
            AmazonS3 amazonS3A = S3ClientReference.a(Integer.valueOf(transferRecord.f17864a));
            if (amazonS3A != null && transferRecord.h(amazonS3A, this.f17852c, this.f17850a)) {
                this.f17852c.l(transferRecord.f17864a, TransferState.WAITING_FOR_NETWORK);
            }
        }
    }

    public synchronized void g() {
        TransferRecord transferRecordD;
        int i10 = 0;
        synchronized (this) {
            try {
                TransferState[] transferStateArr = {TransferState.WAITING_FOR_NETWORK};
                f17848d.a("Loading transfers from database...");
                ArrayList<Integer> arrayList = new ArrayList();
                Cursor cursorO = null;
                try {
                    cursorO = this.f17851b.o(TransferType.ANY, transferStateArr);
                    while (cursorO.moveToNext()) {
                        int i11 = cursorO.getInt(cursorO.getColumnIndexOrThrow("_id"));
                        if (this.f17852c.d(i11) == null) {
                            TransferRecord transferRecord = new TransferRecord(i11);
                            transferRecord.j(cursorO);
                            this.f17852c.b(transferRecord);
                            i10++;
                        }
                        arrayList.add(Integer.valueOf(i11));
                    }
                    f17848d.a("Closing the cursor for resumeAllTransfers");
                    cursorO.close();
                    try {
                        for (Integer num : arrayList) {
                            AmazonS3 amazonS3A = S3ClientReference.a(num);
                            if (amazonS3A != null && (transferRecordD = this.f17852c.d(num.intValue())) != null && !transferRecordD.f()) {
                                transferRecordD.i(amazonS3A, this.f17851b, this.f17852c, this.f17850a);
                            }
                        }
                    } catch (Exception e10) {
                        f17848d.f("Error in resuming the transfers." + e10.getMessage());
                    }
                    f17848d.a(i10 + " transfers are loaded from database.");
                } catch (Throwable th2) {
                    if (cursorO != null) {
                        f17848d.a("Closing the cursor for resumeAllTransfers");
                        cursorO.close();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    boolean e() {
        NetworkInfo activeNetworkInfo = this.f17850a.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            Log log = f17848d;
            log.d("Network connectivity changed detected.");
            log.d("Network connected: " + e());
            new Thread(new Runnable() {
                @Override
                public void run() {
                    if (TransferNetworkLossHandler.this.e()) {
                        TransferNetworkLossHandler.this.g();
                    } else {
                        TransferNetworkLossHandler.this.f();
                    }
                }
            }).start();
        }
    }
}
