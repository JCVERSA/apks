package com.transsion.al.ka;

import android.accounts.Account;
import android.app.Service;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.IBinder;

public class AccountSyncService extends Service {
    private static final String TAG = "AccountSyncService";
    private a mThreadSyncAdapter;

    class a extends AbstractThreadedSyncAdapter {
        public a(Context context, boolean z10) {
            super(context, z10);
        }

        @Override
        public void onPerformSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult) {
            c.a(AccountSyncService.TAG, "onPerformSync");
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.mThreadSyncAdapter.getSyncAdapterBinder();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.mThreadSyncAdapter = new a(getApplicationContext(), true);
    }
}
