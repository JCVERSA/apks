package com.transsion.aicore.nexusflow.utils;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/transsion/aicore/nexusflow/utils/IpcBusinessInitProvider;", "Landroid/content/ContentProvider;", MethodDecl.initName, "()V", "ipc_business_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IpcBusinessInitProvider extends ContentProvider {
    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        y45.j(uri, "uri");
        Log.d("IpcBusinessInitProvider", "delete");
        return 0;
    }

    @Override
    public final String getType(Uri uri) {
        y45.j(uri, "uri");
        Log.d("IpcBusinessInitProvider", "getType");
        return null;
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        y45.j(uri, "uri");
        Log.d("IpcBusinessInitProvider", "insert");
        return null;
    }

    @Override
    public final boolean onCreate() {
        Context context = getContext();
        if (context != null) {
            context.getApplicationContext();
        }
        Log.d("NexusFlow.InitProvider", "onCreate");
        return true;
    }

    @Override
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        y45.j(uri, "uri");
        Log.d("IpcBusinessInitProvider", "query");
        return null;
    }

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        y45.j(uri, "uri");
        Log.d("IpcBusinessInitProvider", "update");
        return 0;
    }
}
