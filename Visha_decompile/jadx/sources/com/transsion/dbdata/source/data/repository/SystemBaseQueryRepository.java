package com.transsion.dbdata.source.data.repository;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.abb;
import defpackage.c74;
import defpackage.ge6;
import defpackage.j05;
import defpackage.ly0;
import defpackage.pc9;
import defpackage.s74;
import defpackage.vdb;
import defpackage.vmb;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.b;
import kotlin.c;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\b \u0018\u0000 22\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\n\u001a\u00020\bH\u0003¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012JI\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0007\u001a\u00020\u00062$\u0010\u0016\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0015H\u0004¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u001a\b\u0004\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001a0\u0014H\u0084\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u001bJI\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017\"\u0004\b\u0000\u0010\u001c2\u0006\u0010\u0007\u001a\u00020\u00062 \b\u0004\u0010\u001e\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001d0\u0014H\u0084\bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0019Jc\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00170 \"\u0004\b\u0000\u0010\u001c2\u0006\u0010\u0007\u001a\u00020\u00062.\b\u0004\u0010!\u001a(\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00018\u00000 0\u001d0\u0014H\u0084\bø\u0001\u0000¢\u0006\u0004\b\"\u0010#JE\u0010$\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0007\u001a\u00020\u00062$\u0010\u0016\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0015H\u0004¢\u0006\u0004\b$\u0010%R\u0017\u0010'\u001a\u00020&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001b\u0010.\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010\u0010R\u001b\u00101\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010,\u001a\u0004\b0\u0010\u0012\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00063"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "queryBundle", "", TypedValues.CycleType.S_WAVE_OFFSET, "pageSize", "Landroid/database/Cursor;", "query", "(Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;", "Landroid/net/Uri;", "providerUri", "()Landroid/net/Uri;", "providerPageSize", "()I", DataTypes.OBJ_DATA, "Lkotlin/Function2;", "Lcom/transsion/dbdata/source/data/repository/BuildCursorItem;", "cursorAction", "", "queryBatch", "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;", "", "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)I", "T", "Lpc9;", "sequenceProcessor", "queryBatchWithSequence", "Lkotlin/Pair;", "filterProcessor", "queryBatchWithFilter", "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Lkotlin/Pair;", "querySingle", "(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;", "", "mTag", "Ljava/lang/String;", "getMTag", "()Ljava/lang/String;", "mUri$delegate", "Lyi5;", "getMUri", "mUri", "mPageSize$delegate", "getMPageSize", "mPageSize", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SystemBaseQueryRepository {
    private static final int PAGE_SIZE = 500;

    private final yi5 mPageSize;
    private final String mTag;

    private final yi5 mUri;

    public SystemBaseQueryRepository() {
        String simpleName = getClass().getSimpleName();
        y45.i(simpleName, "getSimpleName(...)");
        this.mTag = simpleName;
        this.mUri = b.a(new c74() {
            @Override
            public final Object invoke() {
                return this.b.providerUri();
            }
        });
        this.mPageSize = b.a(new c74() {
            @Override
            public final Object invoke() {
                return Integer.valueOf(this.b.providerPageSize());
            }
        });
    }

    public final int getMPageSize() {
        return ((Number) this.mPageSize.getValue()).intValue();
    }

    public final Uri getMUri() {
        return (Uri) this.mUri.getValue();
    }

    @SuppressLint({"Recycle"})
    public final Cursor query(Context context, QueryBundle queryBundle, int offset, @IntRange(from = 1) int pageSize) {
        Uri uri = queryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        String[] projection = queryBundle.getProjection();
        String selection = queryBundle.getSelection();
        String[] selectionArgs = queryBundle.getSelectionArgs();
        String sortOrder = queryBundle.getSortOrder();
        Bundle bundle = new Bundle();
        if (selection != null && selection.length() != 0) {
            bundle.putString("android:query-arg-sql-selection", selection);
        }
        if (selectionArgs != null && selectionArgs.length != 0) {
            bundle.putStringArray("android:query-arg-sql-selection-args", selectionArgs);
        }
        bundle.putInt("android:query-arg-limit", pageSize);
        bundle.putInt("android:query-arg-offset", offset);
        if (sortOrder != null && sortOrder.length() != 0) {
            bundle.putString("android:query-arg-sql-sort-order", sortOrder);
        }
        return context.getContentResolver().query(uri, projection, bundle, null);
    }

    public final String getMTag() {
        return this.mTag;
    }

    public int providerPageSize() {
        return 500;
    }

    public abstract Uri providerUri();

    /* JADX WARN: Code duplicated, block: B:45:0x010c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0116 A[EDGE_INSN: B:60:0x0116->B:47:0x0116 BREAK  A[LOOP:0: B:53:0x003a->B:62:?], SYNTHETIC] */
    public final <Data> List<Data> m121queryBatch(QueryBundle queryBundle, s74 cursorAction) {
        int count;
        Throwable th;
        y45.j(queryBundle, "queryBundle");
        y45.j(cursorAction, "cursorAction");
        Object uri = queryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Object obj = uri;
        ArrayList arrayList = new ArrayList();
        int mPageSize = queryBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundle.getLimitedCount();
        int i = 0;
        do {
            try {
                Cursor cursorQuery = query(ge6.a.g(), queryBundle, i, mPageSize);
                if (cursorQuery != null) {
                    Cursor cursor = cursorQuery;
                    try {
                        Cursor cursor2 = cursor;
                        count = cursor2.getCount();
                        try {
                            vdb.a.c(this.mTag, "cursor_count: " + count);
                            while (cursor2.moveToNext()) {
                                Object objInvoke = cursorAction.invoke(cursor2, obj);
                                if (objInvoke != null) {
                                    arrayList.add(objInvoke);
                                }
                                if (arrayList.size() >= queryBundle.getLimitedCount()) {
                                    break;
                                }
                            }
                            zfb zfbVar = zfb.a;
                            try {
                                ly0.a(cursor, null);
                            } catch (Exception e) {
                                e = e;
                                vdb.a.c(this.mTag, "queryBatch(uri:" + obj + ") error: " + e.getMessage());
                                vmb.d(this.mTag, "queryBatch(uri:" + obj + ") error:", e);
                                i += mPageSize;
                                if (count == mPageSize) {
                                    break;
                                }
                                vdb.a.c(this.mTag, "queryBatch(uri:" + obj + ") items: " + arrayList.size());
                                return arrayList;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                ly0.a(cursor, th);
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        count = 0;
                    }
                } else {
                    vdb.a.c(this.mTag, "queryBatch(uri:" + obj + ") cursor is null");
                    vmb.c(this.mTag, "queryBatch(uri:" + obj + ") cursor is null");
                    count = 0;
                }
            } catch (Exception e2) {
                e = e2;
                count = 0;
            }
            i += mPageSize;
            if (count == mPageSize) {
                break;
                break;
            }
        } while (arrayList.size() < queryBundle.getLimitedCount());
        vdb.a.c(this.mTag, "queryBatch(uri:" + obj + ") items: " + arrayList.size());
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea A[EDGE_INSN: B:59:0x00ea->B:46:0x00ea BREAK  A[LOOP:0: B:56:0x0032->B:61:?], SYNTHETIC] */
    public final <T> Pair<Integer, List<T>> queryBatchWithFilter(QueryBundle queryBundle, s74 filterProcessor) {
        int count;
        y45.j(queryBundle, "queryBundle");
        y45.j(filterProcessor, "filterProcessor");
        Object uri = queryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        ArrayList arrayList = new ArrayList();
        int mPageSize = queryBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundle.getLimitedCount();
        int i = 0;
        int i2 = 0;
        do {
            try {
                Cursor cursorQuery = query(ge6.a.g(), queryBundle, i, mPageSize);
                if (cursorQuery != null) {
                    Cursor cursor = cursorQuery;
                    try {
                        Cursor cursor2 = cursor;
                        count = cursor2.getCount();
                        try {
                            if (cursor2.moveToFirst()) {
                                for (Pair pair : (pc9) filterProcessor.invoke(cursor2, uri)) {
                                    boolean zBooleanValue = ((Boolean) pair.component1()).booleanValue();
                                    Object objComponent2 = pair.component2();
                                    if (zBooleanValue) {
                                        if (objComponent2 != null) {
                                            arrayList.add(objComponent2);
                                            arrayList.size();
                                            queryBundle.getLimitedCount();
                                        } else {
                                            i2++;
                                        }
                                    }
                                }
                            }
                            zfb zfbVar = zfb.a;
                            try {
                                j05.b(1);
                                ly0.a(cursor, null);
                                j05.a(1);
                            } catch (Exception e) {
                                e = e;
                                Log.e(getMTag(), "queryBatchWithFilter(uri:" + uri + ") error:", e);
                                i += mPageSize;
                                if (count == mPageSize) {
                                    break;
                                }
                                return abb.a(Integer.valueOf(i2), arrayList);
                            }
                        } catch (Throwable th) {
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                j05.b(1);
                                ly0.a(cursor, th);
                                j05.a(1);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        count = 0;
                    }
                } else {
                    Log.e(getMTag(), "queryBatchWithFilter(uri:" + uri + ") cursor is null");
                    count = 0;
                }
            } catch (Exception e2) {
                e = e2;
                count = 0;
            }
            i += mPageSize;
            if (count == mPageSize) {
                break;
                break;
            }
        } while (arrayList.size() < queryBundle.getLimitedCount());
        return abb.a(Integer.valueOf(i2), arrayList);
    }

    public final <T> List<T> queryBatchWithSequence(QueryBundle queryBundle, s74 sequenceProcessor) {
        int count;
        y45.j(queryBundle, "queryBundle");
        y45.j(sequenceProcessor, "sequenceProcessor");
        Object uri = queryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        ArrayList arrayList = new ArrayList();
        int mPageSize = queryBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundle.getLimitedCount();
        int i = 0;
        do {
            try {
                Cursor cursorQuery = query(ge6.a.g(), queryBundle, i, mPageSize);
                if (cursorQuery != null) {
                    Cursor cursor = cursorQuery;
                    try {
                        Cursor cursor2 = cursor;
                        count = cursor2.getCount();
                        try {
                            if (cursor2.moveToFirst()) {
                                Iterator it = ((pc9) sequenceProcessor.invoke(cursor2, uri)).iterator();
                                while (it.hasNext()) {
                                    arrayList.add(it.next());
                                    arrayList.size();
                                    queryBundle.getLimitedCount();
                                }
                            }
                            zfb zfbVar = zfb.a;
                            try {
                                j05.b(1);
                                ly0.a(cursor, null);
                                j05.a(1);
                            } catch (Exception e) {
                                e = e;
                                Log.e(getMTag(), "queryBatchWithSequence(uri:" + uri + ") error:", e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                j05.b(1);
                                ly0.a(cursor, th);
                                j05.a(1);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        count = 0;
                    }
                } else {
                    Log.e(getMTag(), "queryBatchWithSequence(uri:" + uri + ") cursor is null");
                    count = 0;
                }
            } catch (Exception e2) {
                e = e2;
                count = 0;
            }
            i += mPageSize;
            if (count != mPageSize) {
                break;
            }
        } while (arrayList.size() < queryBundle.getLimitedCount());
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:6:0x0017, B:8:0x0027, B:16:0x005c, B:26:0x0084, B:23:0x0066, B:24:0x0069, B:25:0x006a, B:21:0x0064, B:9:0x0029, B:11:0x0054), top: B:37:0x0017, inners: #1, #2 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x006a, please report this as an issue */
    public final <Data> Data querySingle(QueryBundle queryBundle, s74 cursorAction) {
        Object objM279constructorimpl;
        Object objInvoke;
        y45.j(queryBundle, "queryBundle");
        y45.j(cursorAction, "cursorAction");
        Object uri = queryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Cursor cursorQuery = query(ge6.a.g(), queryBundle, 0, 1);
            if (cursorQuery != null) {
                Cursor cursor = cursorQuery;
                try {
                    Cursor cursor2 = cursor;
                    int count = cursor2.getCount();
                    vmb.a(this.mTag, "a single query(uri:" + uri + "), the number of conditions met is:" + count);
                    objInvoke = cursor2.moveToFirst() ? cursorAction.invoke(cursor2, uri) : null;
                    ly0.a(cursor, null);
                    if (objInvoke == null) {
                        vmb.c(this.mTag, "querySingle(uri:" + uri + ") cursor is null");
                        objInvoke = null;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(cursor, th);
                        throw th2;
                    }
                }
            } else {
                vmb.c(this.mTag, "querySingle(uri:" + uri + ") cursor is null");
                objInvoke = null;
            }
            objM279constructorimpl = Result.m279constructorimpl(objInvoke);
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th3));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.d(this.mTag, "querySingle(uri:" + uri + ") error:", thM282exceptionOrNullimpl);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            return null;
        }
        return (Data) objM279constructorimpl;
    }

    public final int queryBatch(QueryBundle queryBundle, s74 cursorAction) {
        int limitedCount;
        int count;
        y45.j(queryBundle, "queryBundle");
        y45.j(cursorAction, "cursorAction");
        Object uri = queryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri + ") start");
        if (queryBundle.getLimitedCount() > getMPageSize()) {
            limitedCount = getMPageSize();
        } else {
            limitedCount = queryBundle.getLimitedCount();
        }
        int i = 0;
        int i2 = 0;
        do {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri + ") start query");
                Cursor cursorQuery = query(ge6.a.g(), queryBundle, i, limitedCount);
                if (cursorQuery != null) {
                    Cursor cursor = cursorQuery;
                    try {
                        Cursor cursor2 = cursor;
                        count = cursor2.getCount();
                        try {
                            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri + ") end query,count:" + count);
                            while (cursor2.moveToNext()) {
                                if (((Boolean) cursorAction.invoke(cursor2, uri)).booleanValue()) {
                                    i2++;
                                }
                                if (i2 >= queryBundle.getLimitedCount()) {
                                    break;
                                }
                            }
                            zfb zfbVar = zfb.a;
                            try {
                                j05.b(1);
                                ly0.a(cursor, null);
                                j05.a(1);
                            } catch (Exception e) {
                                e = e;
                                vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri + ") error:", e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                j05.b(1);
                                ly0.a(cursor, th);
                                j05.a(1);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        count = 0;
                    }
                } else {
                    vmb.c(getMTag(), "queryBatchNoResult(uri:" + uri + ") cursor is null");
                    count = 0;
                }
            } catch (Exception e2) {
                e = e2;
                count = 0;
            }
            i += limitedCount;
            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri + ") ,count:" + count + ", totalNumber:" + i2 + ", pageSize:" + limitedCount);
            if (count != limitedCount) {
                break;
            }
        } while (i2 < queryBundle.getLimitedCount());
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri + ") end");
        return i2;
    }
}
