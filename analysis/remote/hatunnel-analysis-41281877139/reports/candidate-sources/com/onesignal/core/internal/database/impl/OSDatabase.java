package com.onesignal.core.internal.database.impl;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.core.internal.database.ICursor;
import com.onesignal.core.internal.database.IDatabase;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.internal.outcomes.impl.OutcomeTableProvider;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0010\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ/\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J$\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J$\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J \u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bH\u0002J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J \u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bH\u0016J \u0010 \u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bH\u0016J{\u0010!\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00102\b\u0010#\u001a\u0004\u0018\u00010\r2\b\u0010$\u001a\u0004\u0018\u00010\r2\b\u0010%\u001a\u0004\u0018\u00010\r2\b\u0010&\u001a\u0004\u0018\u00010\r2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u000b0(H\u0016¢\u0006\u0002\u0010*J\u0018\u0010+\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\rH\u0002J7\u0010-\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00100\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00101\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00102\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00103\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00104\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00105\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u0010\u00106\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/onesignal/core/internal/database/impl/OSDatabase;", "Landroid/database/sqlite/SQLiteOpenHelper;", "Lcom/onesignal/core/internal/database/IDatabase;", "_outcomeTableProvider", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeTableProvider;", "context", "Landroid/content/Context;", "version", "", "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeTableProvider;Landroid/content/Context;I)V", "delete", "", "table", "", "whereClause", "whereArgs", "", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "getSQLiteDatabase", "Landroid/database/sqlite/SQLiteDatabase;", "getSQLiteDatabaseWithRetries", "insert", "nullColumnHack", "values", "Landroid/content/ContentValues;", "insertOrThrow", "internalOnUpgrade", "db", "oldVersion", "newVersion", "onCreate", "onDowngrade", "onUpgrade", "query", "columns", "groupBy", "having", "orderBy", "limit", "action", "Lkotlin/Function1;", "Lcom/onesignal/core/internal/database/ICursor;", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "safeExecSQL", "sql", "update", "(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "upgradeFromV5ToV6", "upgradeToV2", "upgradeToV3", "upgradeToV4", "upgradeToV5", "upgradeToV7", "upgradeToV8", "upgradeToV9", "Companion", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class OSDatabase extends SQLiteOpenHelper implements IDatabase {
    private static final int DB_OPEN_RETRY_BACKOFF = 400;
    private static final int DB_OPEN_RETRY_MAX = 5;
    private static final int DB_VERSION = 9;
    public static final int DEFAULT_TTL_IF_NOT_IN_PAYLOAD = 259200;
    private final OutcomeTableProvider _outcomeTableProvider;
    private static final String DATABASE_NAME = ProtectedFastSSH.s("鰞");
    private static final String SQL_CREATE_IN_APP_MESSAGE_ENTRIES = ProtectedFastSSH.s("鰟");
    private static final String INTEGER_PRIMARY_KEY_TYPE = ProtectedFastSSH.s("鰠");
    private static final String SQL_CREATE_ENTRIES = ProtectedFastSSH.s("鰡");
    private static final String FLOAT_TYPE = ProtectedFastSSH.s("鰢");
    private static final String COMMA_SEP = ProtectedFastSSH.s("鰣");
    private static final String INT_TYPE = ProtectedFastSSH.s("鰤");
    private static final String TEXT_TYPE = ProtectedFastSSH.s("鰥");
    private static final String TIMESTAMP_TYPE = ProtectedFastSSH.s("鰦");
    private static final Object LOCK = new Object();
    private static final String[] SQL_INDEX_ENTRIES = {ProtectedFastSSH.s("鰩"), ProtectedFastSSH.s("鰪"), ProtectedFastSSH.s("鰫"), ProtectedFastSSH.s("鰬"), ProtectedFastSSH.s("鰧"), ProtectedFastSSH.s("鰨")};

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSDatabase(OutcomeTableProvider outcomeTableProvider, Context context, int i) {
        super(context, ProtectedFastSSH.s("鰞"), (SQLiteDatabase.CursorFactory) null, i);
        Intrinsics.checkNotNullParameter(outcomeTableProvider, ProtectedFastSSH.s("鰭"));
        this._outcomeTableProvider = outcomeTableProvider;
    }

    public OSDatabase(OutcomeTableProvider outcomeTableProvider, Context context, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(outcomeTableProvider, context, (i2 & 4) != 0 ? 9 : i);
    }

    private final SQLiteDatabase getSQLiteDatabase() {
        SQLiteDatabase writableDatabase;
        synchronized (LOCK) {
            try {
                writableDatabase = getWritableDatabase();
                Intrinsics.checkNotNull(writableDatabase);
            } catch (SQLiteCantOpenDatabaseException e) {
                throw e;
            } catch (SQLiteDatabaseLockedException e2) {
                throw e2;
            }
        }
        return writableDatabase;
    }

    private final SQLiteDatabase getSQLiteDatabaseWithRetries() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (LOCK) {
            int i = 0;
            while (true) {
                try {
                    sQLiteDatabase = getSQLiteDatabase();
                } catch (SQLiteCantOpenDatabaseException e) {
                    i++;
                    if (i >= 5) {
                        throw e;
                    }
                    SystemClock.sleep(i * DB_OPEN_RETRY_BACKOFF);
                } catch (SQLiteDatabaseLockedException e2) {
                    i++;
                    if (i >= 5) {
                        throw e2;
                    }
                    SystemClock.sleep(i * DB_OPEN_RETRY_BACKOFF);
                }
            }
        }
        return sQLiteDatabase;
    }

    private final synchronized void internalOnUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion < 2 && newVersion >= 2) {
            try {
                upgradeToV2(db);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (oldVersion < 3 && newVersion >= 3) {
            upgradeToV3(db);
        }
        if (oldVersion < 4 && newVersion >= 4) {
            upgradeToV4(db);
        }
        if (oldVersion < 5 && newVersion >= 5) {
            upgradeToV5(db);
        }
        if (oldVersion == 5 && newVersion >= 6) {
            upgradeFromV5ToV6(db);
        }
        if (oldVersion < 7 && newVersion >= 7) {
            upgradeToV7(db);
        }
        if (oldVersion < 8 && newVersion >= 8) {
            upgradeToV8(db);
        }
        if (oldVersion < 9 && newVersion >= 9) {
            upgradeToV9(db);
        }
    }

    private final void safeExecSQL(SQLiteDatabase db, String sql) {
        try {
            db.execSQL(sql);
        } catch (SQLiteException e) {
            e.printStackTrace();
        }
    }

    private final void upgradeFromV5ToV6(SQLiteDatabase db) {
        this._outcomeTableProvider.upgradeOutcomeTableRevision1To2(db);
    }

    private final void upgradeToV2(SQLiteDatabase db) {
        safeExecSQL(db, ProtectedFastSSH.s("鰮"));
        safeExecSQL(db, ProtectedFastSSH.s("鰫"));
    }

    private final void upgradeToV3(SQLiteDatabase db) {
        safeExecSQL(db, ProtectedFastSSH.s("鰯"));
        safeExecSQL(db, ProtectedFastSSH.s("鰰"));
        safeExecSQL(db, ProtectedFastSSH.s("鰨"));
    }

    private final void upgradeToV4(SQLiteDatabase db) {
        safeExecSQL(db, ProtectedFastSSH.s("鰱"));
    }

    private final void upgradeToV5(SQLiteDatabase db) {
        safeExecSQL(db, ProtectedFastSSH.s("鰲"));
        upgradeFromV5ToV6(db);
    }

    private final void upgradeToV7(SQLiteDatabase db) {
        safeExecSQL(db, ProtectedFastSSH.s("鰟"));
    }

    private final synchronized void upgradeToV8(SQLiteDatabase db) {
        this._outcomeTableProvider.upgradeOutcomeTableRevision2To3(db);
        this._outcomeTableProvider.upgradeCacheOutcomeTableRevision1To2(db);
    }

    private final void upgradeToV9(SQLiteDatabase db) {
        this._outcomeTableProvider.upgradeOutcomeTableRevision3To4(db);
    }

    @Override
    public void delete(String table, String whereClause, String[] whereArgs) {
        String strS;
        IllegalStateException illegalStateException;
        String strS2;
        SQLiteException sQLiteException;
        String strS3 = ProtectedFastSSH.s("鰳");
        String strS4 = ProtectedFastSSH.s("鰴");
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("鰵"));
        synchronized (LOCK) {
            try {
                SQLiteDatabase sQLiteDatabaseWithRetries = getSQLiteDatabaseWithRetries();
                try {
                    try {
                        try {
                            sQLiteDatabaseWithRetries.beginTransaction();
                            sQLiteDatabaseWithRetries.delete(table, whereClause, whereArgs);
                            sQLiteDatabaseWithRetries.setTransactionSuccessful();
                            try {
                                try {
                                    sQLiteDatabaseWithRetries.endTransaction();
                                } catch (SQLiteException e) {
                                    strS2 = ProtectedFastSSH.s("鰶");
                                    sQLiteException = e;
                                    Logging.error(strS2, sQLiteException);
                                }
                            } catch (IllegalStateException e2) {
                                strS = ProtectedFastSSH.s("鰶");
                                illegalStateException = e2;
                                Logging.error(strS, illegalStateException);
                            }
                        } catch (Throwable th) {
                            try {
                                sQLiteDatabaseWithRetries.endTransaction();
                            } catch (SQLiteException e3) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e3);
                            } catch (IllegalStateException e4) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e4);
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e5) {
                        Logging.error(strS3 + table + ProtectedFastSSH.s("鰷") + whereClause + ProtectedFastSSH.s("鰸") + whereArgs, e5);
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e6) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e6;
                            Logging.error(strS2, sQLiteException);
                        } catch (IllegalStateException e7) {
                            strS = ProtectedFastSSH.s("鰶");
                            illegalStateException = e7;
                            Logging.error(strS, illegalStateException);
                        }
                    }
                } catch (SQLiteException e8) {
                    Logging.error(strS4 + table + ProtectedFastSSH.s("鰷") + whereClause + ProtectedFastSSH.s("鰸") + whereArgs, e8);
                    try {
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e9) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e9;
                            Logging.error(strS2, sQLiteException);
                        }
                    } catch (IllegalStateException e10) {
                        strS = ProtectedFastSSH.s("鰶");
                        illegalStateException = e10;
                        Logging.error(strS, illegalStateException);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void insert(String table, String nullColumnHack, ContentValues values) {
        String strS;
        IllegalStateException illegalStateException;
        String strS2;
        SQLiteException sQLiteException;
        String strS3 = ProtectedFastSSH.s("鰹");
        String strS4 = ProtectedFastSSH.s("鰺");
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("鰵"));
        synchronized (LOCK) {
            try {
                SQLiteDatabase sQLiteDatabaseWithRetries = getSQLiteDatabaseWithRetries();
                try {
                    try {
                        try {
                            sQLiteDatabaseWithRetries.beginTransaction();
                            sQLiteDatabaseWithRetries.insert(table, nullColumnHack, values);
                            sQLiteDatabaseWithRetries.setTransactionSuccessful();
                            try {
                                try {
                                    sQLiteDatabaseWithRetries.endTransaction();
                                } catch (SQLiteException e) {
                                    strS2 = ProtectedFastSSH.s("鰶");
                                    sQLiteException = e;
                                    Logging.error(strS2, sQLiteException);
                                }
                            } catch (IllegalStateException e2) {
                                strS = ProtectedFastSSH.s("鰶");
                                illegalStateException = e2;
                                Logging.error(strS, illegalStateException);
                            }
                        } catch (Throwable th) {
                            try {
                                sQLiteDatabaseWithRetries.endTransaction();
                            } catch (SQLiteException e3) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e3);
                            } catch (IllegalStateException e4) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e4);
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e5) {
                        Logging.error(strS3 + table + ProtectedFastSSH.s("鰻") + nullColumnHack + ProtectedFastSSH.s("鰼") + values, e5);
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e6) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e6;
                            Logging.error(strS2, sQLiteException);
                        } catch (IllegalStateException e7) {
                            strS = ProtectedFastSSH.s("鰶");
                            illegalStateException = e7;
                            Logging.error(strS, illegalStateException);
                        }
                    }
                } catch (SQLiteException e8) {
                    Logging.error(strS4 + table + ProtectedFastSSH.s("鰻") + nullColumnHack + ProtectedFastSSH.s("鰼") + values, e8);
                    try {
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e9) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e9;
                            Logging.error(strS2, sQLiteException);
                        }
                    } catch (IllegalStateException e10) {
                        strS = ProtectedFastSSH.s("鰶");
                        illegalStateException = e10;
                        Logging.error(strS, illegalStateException);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void insertOrThrow(String table, String nullColumnHack, ContentValues values) throws SQLException {
        String strS;
        IllegalStateException illegalStateException;
        String strS2;
        SQLiteException sQLiteException;
        String strS3 = ProtectedFastSSH.s("鰽");
        String strS4 = ProtectedFastSSH.s("鰾");
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("鰵"));
        synchronized (LOCK) {
            try {
                SQLiteDatabase sQLiteDatabaseWithRetries = getSQLiteDatabaseWithRetries();
                try {
                    try {
                        try {
                            sQLiteDatabaseWithRetries.beginTransaction();
                            sQLiteDatabaseWithRetries.insertOrThrow(table, nullColumnHack, values);
                            sQLiteDatabaseWithRetries.setTransactionSuccessful();
                            try {
                                try {
                                    sQLiteDatabaseWithRetries.endTransaction();
                                } catch (SQLiteException e) {
                                    strS2 = ProtectedFastSSH.s("鰶");
                                    sQLiteException = e;
                                    Logging.error(strS2, sQLiteException);
                                }
                            } catch (IllegalStateException e2) {
                                strS = ProtectedFastSSH.s("鰶");
                                illegalStateException = e2;
                                Logging.error(strS, illegalStateException);
                            }
                        } catch (Throwable th) {
                            try {
                                sQLiteDatabaseWithRetries.endTransaction();
                            } catch (SQLiteException e3) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e3);
                            } catch (IllegalStateException e4) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e4);
                            }
                            throw th;
                        }
                    } catch (IllegalStateException e5) {
                        Logging.error(strS3 + table + ProtectedFastSSH.s("鰻") + nullColumnHack + ProtectedFastSSH.s("鰼") + values, e5);
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e6) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e6;
                            Logging.error(strS2, sQLiteException);
                        } catch (IllegalStateException e7) {
                            strS = ProtectedFastSSH.s("鰶");
                            illegalStateException = e7;
                            Logging.error(strS, illegalStateException);
                        }
                    }
                } catch (SQLiteException e8) {
                    Logging.error(strS4 + table + ProtectedFastSSH.s("鰻") + nullColumnHack + ProtectedFastSSH.s("鰼") + values, e8);
                    try {
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e9) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e9;
                            Logging.error(strS2, sQLiteException);
                        }
                    } catch (IllegalStateException e10) {
                        strS = ProtectedFastSSH.s("鰶");
                        illegalStateException = e10;
                        Logging.error(strS, illegalStateException);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("鰿"));
        db.execSQL(ProtectedFastSSH.s("鰡"));
        db.execSQL(ProtectedFastSSH.s("鱀"));
        db.execSQL(ProtectedFastSSH.s("鱁"));
        db.execSQL(ProtectedFastSSH.s("鰟"));
        for (String str : SQL_INDEX_ENTRIES) {
            db.execSQL(str);
        }
    }

    @Override
    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) throws IOException {
        Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("鰿"));
        Logging.warn$default(ProtectedFastSSH.s("鱂"), null, 2, null);
        Cursor cursorRawQuery = db.rawQuery(ProtectedFastSSH.s("鱃"), null);
        try {
            Cursor cursor = cursorRawQuery;
            ArrayList<String> arrayList = new ArrayList(cursor.getCount());
            while (cursor.moveToNext()) {
                String string = cursor.getString(0);
                Intrinsics.checkNotNullExpressionValue(string, ProtectedFastSSH.s("鱄"));
                arrayList.add(string);
            }
            for (String str : arrayList) {
                if (!StringsKt.startsWith$default(str, ProtectedFastSSH.s("鱅"), false, 2, (Object) null)) {
                    db.execSQL(ProtectedFastSSH.s("鱆") + str);
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(cursorRawQuery, null);
            onCreate(db);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(cursorRawQuery, th);
                throw th2;
            }
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("鰿"));
        Logging.debug$default(ProtectedFastSSH.s("鱇") + oldVersion + ProtectedFastSSH.s("鱈") + newVersion, null, 2, null);
        try {
            internalOnUpgrade(db, oldVersion, newVersion);
        } catch (SQLiteException e) {
            Logging.error(ProtectedFastSSH.s("鱉"), e);
        }
    }

    @Override
    public void query(String table, String[] columns, String whereClause, String[] whereArgs, String groupBy, String having, String orderBy, String limit, Function1<? super ICursor, Unit> action) throws IOException {
        Cursor cursorQuery;
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("鰵"));
        Intrinsics.checkNotNullParameter(action, ProtectedFastSSH.s("鱊"));
        synchronized (LOCK) {
            try {
                if (limit == null) {
                    cursorQuery = getSQLiteDatabaseWithRetries().query(table, columns, whereClause, whereArgs, groupBy, having, orderBy);
                    Intrinsics.checkNotNullExpressionValue(cursorQuery, ProtectedFastSSH.s("鱋"));
                } else {
                    cursorQuery = getSQLiteDatabaseWithRetries().query(table, columns, whereClause, whereArgs, groupBy, having, orderBy, limit);
                    Intrinsics.checkNotNullExpressionValue(cursorQuery, ProtectedFastSSH.s("鱋"));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Cursor cursor = cursorQuery;
        try {
            action.invoke(new DatabaseCursor(cursor));
            Unit unit2 = Unit.INSTANCE;
            CloseableKt.closeFinally(cursor, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.closeFinally(cursor, th2);
                throw th3;
            }
        }
    }

    @Override
    public int update(String table, ContentValues values, String whereClause, String[] whereArgs) {
        String strS;
        IllegalStateException illegalStateException;
        String strS2;
        SQLiteException sQLiteException;
        String strS3 = ProtectedFastSSH.s("鱌");
        String strS4 = ProtectedFastSSH.s("鱍");
        Intrinsics.checkNotNullParameter(table, ProtectedFastSSH.s("鰵"));
        Intrinsics.checkNotNullParameter(values, ProtectedFastSSH.s("鱎"));
        String string = values.toString();
        Intrinsics.checkNotNullExpressionValue(string, ProtectedFastSSH.s("鱏"));
        int iUpdate = 0;
        if (string.length() == 0) {
            return 0;
        }
        synchronized (LOCK) {
            try {
                SQLiteDatabase sQLiteDatabaseWithRetries = getSQLiteDatabaseWithRetries();
                try {
                    try {
                        try {
                            sQLiteDatabaseWithRetries.beginTransaction();
                            iUpdate = sQLiteDatabaseWithRetries.update(table, values, whereClause, whereArgs);
                            sQLiteDatabaseWithRetries.setTransactionSuccessful();
                            try {
                                try {
                                    sQLiteDatabaseWithRetries.endTransaction();
                                } catch (IllegalStateException e) {
                                    strS = ProtectedFastSSH.s("鰶");
                                    illegalStateException = e;
                                    Logging.error(strS, illegalStateException);
                                }
                            } catch (SQLiteException e2) {
                                strS2 = ProtectedFastSSH.s("鰶");
                                sQLiteException = e2;
                                Logging.error(strS2, sQLiteException);
                            }
                        } catch (Throwable th) {
                            try {
                                sQLiteDatabaseWithRetries.endTransaction();
                            } catch (SQLiteException e3) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e3);
                            } catch (IllegalStateException e4) {
                                Logging.error(ProtectedFastSSH.s("鰶"), e4);
                            }
                            throw th;
                        }
                    } catch (SQLiteException e5) {
                        Logging.error(strS4 + table + ProtectedFastSSH.s("鰷") + whereClause + ProtectedFastSSH.s("鰸") + whereArgs, e5);
                        try {
                            sQLiteDatabaseWithRetries.endTransaction();
                        } catch (SQLiteException e6) {
                            strS2 = ProtectedFastSSH.s("鰶");
                            sQLiteException = e6;
                            Logging.error(strS2, sQLiteException);
                        } catch (IllegalStateException e7) {
                            strS = ProtectedFastSSH.s("鰶");
                            illegalStateException = e7;
                            Logging.error(strS, illegalStateException);
                        }
                    }
                } catch (IllegalStateException e8) {
                    Logging.error(strS3 + table + ProtectedFastSSH.s("鰷") + whereClause + ProtectedFastSSH.s("鰸") + whereArgs, e8);
                    try {
                        sQLiteDatabaseWithRetries.endTransaction();
                    } catch (SQLiteException e9) {
                        strS2 = ProtectedFastSSH.s("鰶");
                        sQLiteException = e9;
                        Logging.error(strS2, sQLiteException);
                    } catch (IllegalStateException e10) {
                        strS = ProtectedFastSSH.s("鰶");
                        illegalStateException = e10;
                        Logging.error(strS, illegalStateException);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iUpdate;
    }
}
