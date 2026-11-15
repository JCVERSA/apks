package androidx.media3.datasource;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceBitmapLoader;
import com.google.common.base.Suppliers;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.im5;
import defpackage.pm5;
import defpackage.w6a;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;

@UnstableApi
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final w6a DEFAULT_EXECUTOR_SERVICE = Suppliers.a(new w6a() {
        @Override
        public final Object get() {
            return DataSourceBitmapLoader.lambda$static$0();
        }
    });
    private final DataSource.Factory dataSourceFactory;
    private final pm5 listeningExecutorService;
    private final int maximumOutputDimension;

    @Nullable
    private final BitmapFactory.Options options;

    public DataSourceBitmapLoader(Context context) {
        this((pm5) Assertions.checkStateNotNull((pm5) DEFAULT_EXECUTOR_SERVICE.get()), new DefaultDataSource.Factory(context));
    }

    public Bitmap lambda$decodeBitmap$1(byte[] bArr) throws Exception {
        return BitmapUtil.decode(bArr, bArr.length, this.options, this.maximumOutputDimension);
    }

    public Bitmap lambda$loadBitmap$2(Uri uri) throws Exception {
        return load(this.dataSourceFactory.createDataSource(), uri, this.options, this.maximumOutputDimension);
    }

    public static pm5 lambda$static$0() {
        return MoreExecutors.b(Executors.newSingleThreadExecutor());
    }

    private static Bitmap load(DataSource dataSource, Uri uri, @Nullable BitmapFactory.Options options, int i) throws IOException {
        try {
            dataSource.open(new DataSpec(uri));
            byte[] toEnd = DataSourceUtil.readToEnd(dataSource);
            return BitmapUtil.decode(toEnd, toEnd.length, options, i);
        } finally {
            dataSource.close();
        }
    }

    @Override
    public im5 decodeBitmap(final byte[] bArr) {
        return this.listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return this.b.lambda$decodeBitmap$1(bArr);
            }
        });
    }

    @Override
    public im5 loadBitmap(final Uri uri) {
        return this.listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return this.b.lambda$loadBitmap$2(uri);
            }
        });
    }

    @Override
    public boolean supportsMimeType(String str) {
        return Util.isBitmapFactorySupportedMimeType(str);
    }

    public DataSourceBitmapLoader(pm5 pm5Var, DataSource.Factory factory) {
        this(pm5Var, factory, null);
    }

    public DataSourceBitmapLoader(pm5 pm5Var, DataSource.Factory factory, @Nullable BitmapFactory.Options options) {
        this(pm5Var, factory, options, -1);
    }

    public DataSourceBitmapLoader(pm5 pm5Var, DataSource.Factory factory, @Nullable BitmapFactory.Options options, int i) {
        this.listeningExecutorService = pm5Var;
        this.dataSourceFactory = factory;
        this.options = options;
        this.maximumOutputDimension = i;
    }
}
