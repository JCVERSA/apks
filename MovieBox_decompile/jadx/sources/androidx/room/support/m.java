package androidx.room.support;

import android.content.Context;
import android.util.Log;
import androidx.room.RoomDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class m implements z3.e, androidx.room.d {

    private final Context f14437a;

    private final String f14438b;

    private final File f14439c;

    private final Callable f14440d;

    private final int f14441e;

    private final z3.e f14442f;

    private androidx.room.c f14443g;

    private boolean f14444h;

    public static final class a extends z3.e.a {

        final int f14445c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i10, int i11) {
            super(i11);
            this.f14445c = i10;
        }

        @Override
        public void d(z3.d db2) {
            Intrinsics.h(db2, "db");
        }

        @Override
        public void f(z3.d db2) {
            Intrinsics.h(db2, "db");
            int i10 = this.f14445c;
            if (i10 < 1) {
                db2.U(i10);
            }
        }

        @Override
        public void g(z3.d db2, int i10, int i11) {
            Intrinsics.h(db2, "db");
        }
    }

    public m(Context context, String str, File file, Callable callable, int i10, z3.e delegate) {
        Intrinsics.h(context, "context");
        Intrinsics.h(delegate, "delegate");
        this.f14437a = context;
        this.f14438b = str;
        this.f14439c = file;
        this.f14440d = callable;
        this.f14441e = i10;
        this.f14442f = delegate;
    }

    private final void b(File file, boolean z10) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel;
        if (this.f14438b != null) {
            readableByteChannelNewChannel = Channels.newChannel(this.f14437a.getAssets().open(this.f14438b));
        } else if (this.f14439c != null) {
            readableByteChannelNewChannel = new FileInputStream(this.f14439c).getChannel();
        } else {
            Callable callable = this.f14440d;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                readableByteChannelNewChannel = Channels.newChannel((InputStream) callable.call());
            } catch (Exception e10) {
                throw new IOException("inputStreamCallable exception on call", e10);
            }
        }
        File fileCreateTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f14437a.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(fileCreateTempFile).getChannel();
        Intrinsics.e(channel);
        androidx.room.util.d.a(readableByteChannelNewChannel, channel);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        Intrinsics.e(fileCreateTempFile);
        f(fileCreateTempFile, z10);
        if (fileCreateTempFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + fileCreateTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    private final z3.e d(File file) {
        try {
            int iH = androidx.room.util.b.h(file);
            return new a4.h().a(z3.e.b.f76615f.a(this.f14437a).d(file.getAbsolutePath()).c(new a(iH, RangesKt.e(iH, 1))).b());
        } catch (IOException e10) {
            throw new RuntimeException("Malformed database file, unable to read version.", e10);
        }
    }

    private final void f(File file, boolean z10) {
        androidx.room.c cVar = this.f14443g;
        if (cVar == null) {
            Intrinsics.y("databaseConfiguration");
            cVar = null;
        }
        if (cVar.f14265q == null) {
            return;
        }
        z3.e eVarD = d(file);
        try {
            z3.d writableDatabase = z10 ? eVarD.getWritableDatabase() : eVarD.getReadableDatabase();
            androidx.room.c cVar2 = this.f14443g;
            if (cVar2 == null) {
                Intrinsics.y("databaseConfiguration");
                cVar2 = null;
            }
            RoomDatabase.e eVar = cVar2.f14265q;
            Intrinsics.e(eVar);
            eVar.a(writableDatabase);
            Unit unit = Unit.f64096a;
            CloseableKt.a(eVarD, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(eVarD, th2);
                throw th3;
            }
        }
    }

    private final void j(boolean z10) {
        String databaseName = getDatabaseName();
        if (databaseName == null) {
            throw new IllegalStateException("Required value was null.");
        }
        File databasePath = this.f14437a.getDatabasePath(databaseName);
        androidx.room.c cVar = this.f14443g;
        androidx.room.c cVar2 = null;
        if (cVar == null) {
            Intrinsics.y("databaseConfiguration");
            cVar = null;
        }
        c4.a aVar = new c4.a(databaseName, this.f14437a.getFilesDir(), cVar.f14271w);
        try {
            c4.a.c(aVar, false, 1, null);
            if (!databasePath.exists()) {
                try {
                    Intrinsics.e(databasePath);
                    b(databasePath, z10);
                    aVar.d();
                    return;
                } catch (IOException e10) {
                    throw new RuntimeException("Unable to copy database file.", e10);
                }
            }
            try {
                Intrinsics.e(databasePath);
                int iH = androidx.room.util.b.h(databasePath);
                if (iH == this.f14441e) {
                    aVar.d();
                    return;
                }
                androidx.room.c cVar3 = this.f14443g;
                if (cVar3 == null) {
                    Intrinsics.y("databaseConfiguration");
                } else {
                    cVar2 = cVar3;
                }
                if (cVar2.e(iH, this.f14441e)) {
                    aVar.d();
                    return;
                }
                if (this.f14437a.deleteDatabase(databaseName)) {
                    try {
                        b(databasePath, z10);
                        Unit unit = Unit.f64096a;
                    } catch (IOException e11) {
                        Log.w("ROOM", "Unable to copy database file.", e11);
                    }
                } else {
                    Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                aVar.d();
                return;
            } catch (IOException e12) {
                Log.w("ROOM", "Unable to read database version.", e12);
                aVar.d();
                return;
            }
        } catch (Throwable th2) {
            aVar.d();
            throw th2;
        }
        aVar.d();
        throw th2;
    }

    @Override
    public synchronized void close() {
        getDelegate().close();
        this.f14444h = false;
    }

    @Override
    public String getDatabaseName() {
        return getDelegate().getDatabaseName();
    }

    @Override
    public z3.e getDelegate() {
        return this.f14442f;
    }

    @Override
    public z3.d getReadableDatabase() {
        if (!this.f14444h) {
            j(false);
            this.f14444h = true;
        }
        return getDelegate().getReadableDatabase();
    }

    @Override
    public z3.d getWritableDatabase() {
        if (!this.f14444h) {
            j(true);
            this.f14444h = true;
        }
        return getDelegate().getWritableDatabase();
    }

    public final void h(androidx.room.c databaseConfiguration) {
        Intrinsics.h(databaseConfiguration, "databaseConfiguration");
        this.f14443g = databaseConfiguration;
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean z10) {
        getDelegate().setWriteAheadLoggingEnabled(z10);
    }
}
