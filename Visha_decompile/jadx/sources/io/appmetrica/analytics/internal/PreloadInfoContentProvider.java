package io.appmetrica.analytics.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.impl.C2686la;
import io.appmetrica.analytics.impl.J3;
import io.appmetrica.analytics.impl.K3;
import io.appmetrica.analytics.impl.N5;
import io.appmetrica.analytics.impl.O5;
import io.appmetrica.analytics.impl.Ve;
import io.appmetrica.analytics.impl.Vi;
import io.appmetrica.analytics.impl.We;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import java.util.concurrent.CountDownLatch;

public class PreloadInfoContentProvider extends ContentProvider {
    private boolean a = false;
    private final UriMatcher b = new UriMatcher(-1);

    private void a(O5 o5, ContentValues contentValues) {
        Context context = getContext();
        Context applicationContext = context == null ? null : context.getApplicationContext();
        if (applicationContext != null) {
            try {
                Object objInvoke = o5.a.invoke(contentValues);
                if (objInvoke != null) {
                    o5.c.b(applicationContext);
                    if (((Boolean) o5.b.invoke(objInvoke)).booleanValue()) {
                        Vi.a("Successfully saved " + o5.d, new Object[0]);
                    } else {
                        Vi.a("Did not save " + o5.d + " because data is already present", new Object[0]);
                    }
                }
            } catch (Throwable th) {
                ImportantLogger.INSTANCE.info("AppMetrica-Attribution", String.format("Unexpected error occurred", new Object[0]) + "\n" + StringUtils.throwableToString(th), new Object[0]);
            }
        }
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        Vi.a("Deleting is not supported", new Object[0]);
        return -1;
    }

    public synchronized void disable() {
        this.a = true;
    }

    @Override
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        synchronized (this) {
            try {
                if (this.a) {
                    return null;
                }
                if (contentValues != null) {
                    int iMatch = this.b.match(uri);
                    if (iMatch == 1) {
                        a(new O5(new Ve(), new We(), C2686la.d, "preload info"), contentValues);
                    } else if (iMatch != 2) {
                        Vi.a("Bad content provider uri.", new Object[0]);
                    } else {
                        a(new O5(new J3(), new K3(), C2686la.d, "clids"), contentValues);
                    }
                }
                CountDownLatch countDownLatch = N5.a;
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean onCreate() {
        Context context = getContext();
        Context applicationContext = context == null ? null : context.getApplicationContext();
        String str = (applicationContext != null ? applicationContext.getPackageName() : "") + ".appmetrica.preloadinfo.retail";
        this.b.addURI(str, "preloadinfo", 1);
        this.b.addURI(str, "clids", 2);
        N5.a = new CountDownLatch(1);
        N5.b = this;
        return true;
    }

    @Override
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        Vi.a("Query is not supported", new Object[0]);
        return null;
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        Vi.a("Updating is not supported", new Object[0]);
        return -1;
    }
}
