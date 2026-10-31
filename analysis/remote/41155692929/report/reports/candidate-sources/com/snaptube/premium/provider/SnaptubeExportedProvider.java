package com.snaptube.premium.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.player_guide.LpFirstLaunchCheck;
import com.snaptube.player_guide.e;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.SourceDebugExtension;
import net.pubnative.mediation.adapter.model.GuideNativeAdModel;
import o.me8;
import o.or3;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 !2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJO\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0010\u0010\f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u000b\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0010\u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u000b\u0018\u00010\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J=\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0010\u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u000b\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J3\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0010\u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u000b\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/snaptube/premium/provider/SnaptubeExportedProvider;", "Landroid/content/ContentProvider;", "<init>", "()V", "Landroid/net/Uri;", "uri", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", "query", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "", "onCreate", "()Z", "", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "Landroid/database/MatrixCursor;", "a", "Landroid/database/MatrixCursor;", "mEmptyCursor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSnaptubeExportedProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnaptubeExportedProvider.kt\ncom/snaptube/premium/provider/SnaptubeExportedProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"})
public final class SnaptubeExportedProvider extends ContentProvider {
    public static final String[] c = {"_id", "key", "value"};
    public static final UriMatcher d;

    public final MatrixCursor mEmptyCursor = new MatrixCursor(c);

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        d = uriMatcher;
        uriMatcher.addURI("com.snaptube.premium.provider.SnaptubeExportedProvider", "udid", 1);
        uriMatcher.addURI("com.snaptube.premium.provider.SnaptubeExportedProvider", "udid/*", 1);
        uriMatcher.addURI("com.snaptube.premium.provider.SnaptubeExportedProvider", GuideNativeAdModel.NETWORK_NAME, 2);
        uriMatcher.addURI("com.snaptube.premium.provider.SnaptubeExportedProvider", "guide/*", 2);
        uriMatcher.addURI("com.dywx.growth.provider.GuideExportedProvider", "udid", 1);
        uriMatcher.addURI("com.dywx.growth.provider.GuideExportedProvider", "udid/*", 1);
        uriMatcher.addURI("com.dywx.growth.provider.GuideExportedProvider", GuideNativeAdModel.NETWORK_NAME, 2);
        uriMatcher.addURI("com.dywx.growth.provider.GuideExportedProvider", "guide/*", 2);
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        or3.f(uri, "uri");
        if (d.match(uri) == 2) {
            String str = selectionArgs != null ? (String) ArraysKt___ArraysKt.A(selectionArgs, 0) : null;
            if (str != null) {
                e.a.b(str);
            }
        }
        return 0;
    }

    @Override
    public String getType(Uri uri) {
        or3.f(uri, "uri");
        return "NONE";
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        or3.f(uri, "uri");
        return uri;
    }

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        or3.f(uri, "uri");
        int iMatch = d.match(uri);
        if (iMatch == 1) {
            MatrixCursor matrixCursor = new MatrixCursor(c);
            matrixCursor.addRow(new Object[]{1, "udid", me8.g(getContext())});
            return matrixCursor;
        }
        if (iMatch != 2) {
            return this.mEmptyCursor;
        }
        LpFirstLaunchCheck.a.l();
        MatrixCursor matrixCursor2 = new MatrixCursor(c);
        String strA = null;
        String str = selectionArgs != null ? (String) ArraysKt___ArraysKt.A(selectionArgs, 0) : null;
        if (str == null) {
            return matrixCursor2;
        }
        Context context = getContext();
        if (context != null) {
            e eVar = e.a;
            or3.c(context);
            strA = eVar.a(context, str);
        }
        matrixCursor2.addRow(new Object[]{1, "referrer", strA});
        return matrixCursor2;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        or3.f(uri, "uri");
        return 0;
    }
}
