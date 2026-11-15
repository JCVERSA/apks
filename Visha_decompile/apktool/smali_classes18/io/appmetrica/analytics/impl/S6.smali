.class public final Lio/appmetrica/analytics/impl/S6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field public final c:Lio/appmetrica/analytics/impl/f7;

.field public final d:Lio/appmetrica/analytics/impl/R6;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/content/Context;

.field public final h:Lio/appmetrica/analytics/impl/m5;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lio/appmetrica/analytics/impl/O6;

.field public final l:Lio/appmetrica/analytics/impl/n7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/f7;Lio/appmetrica/analytics/impl/O6;Lio/appmetrica/analytics/impl/n7;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S6;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S6;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/S6;->j:Ljava/util/ArrayList;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/S6;->g:Landroid/content/Context;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/S6;->k:Lio/appmetrica/analytics/impl/O6;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/S6;->l:Lio/appmetrica/analytics/impl/n7;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/S6;->b()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance p2, Lio/appmetrica/analytics/impl/R6;

    invoke-direct {p2, p0, p1}, Lio/appmetrica/analytics/impl/R6;-><init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/m5;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/S6;->d:Lio/appmetrica/analytics/impl/R6;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/S6;->a(Lio/appmetrica/analytics/impl/La;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/La;)Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseWorker ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/La;->b()Lio/appmetrica/analytics/impl/f5;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f5;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id >= ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " AND "

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/S6;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->e:Ljava/lang/Object;

    .line 154
    monitor-enter v0

    .line 155
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a([Ljava/lang/String;Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 8

    const-string v0, ", "

    .line 78
    :try_start_0
    const-string v1, "id IN (SELECT id FROM events ORDER BY CASE WHEN type IN (%1$s) THEN 2 WHEN type IN (%2$s) THEN 1 ELSE 0 END, id LIMIT (SELECT count() FROM events) / %3$s)"

    sget-object v2, Lio/appmetrica/analytics/impl/C9;->i:Ljava/util/List;

    .line 79
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/appmetrica/analytics/impl/C9;->j:Ljava/util/List;

    .line 80
    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 83
    iget-object v2, p0, Lio/appmetrica/analytics/impl/S6;->k:Lio/appmetrica/analytics/impl/O6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    .line 84
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    .line 85
    iget-object v6, p0, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v5, 0x2

    move-object v3, p1

    .line 86
    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/impl/O6;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/M6;

    move-result-object p0

    iget p0, p0, Lio/appmetrica/analytics/impl/M6;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 87
    sget-object p1, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    new-instance v0, Lio/appmetrica/analytics/impl/fj;

    const-string v1, "deleteExcessiveReports exception"

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/fj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method

.method public final a(Ljava/util/Set;)J
    .locals 10

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT count() FROM events"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-lez v6, :cond_1

    .line 12
    const-string v8, " OR "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    :cond_3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    .line 18
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1
.end method

.method public final a(JLio/appmetrica/analytics/impl/zk;)Landroid/content/ContentValues;
    .locals 5

    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    iget-object v1, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 118
    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 120
    iget p2, p3, Lio/appmetrica/analytics/impl/zk;->a:I

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 122
    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 127
    :catchall_0
    :cond_0
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    .line 128
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public final a(JIIZ)V
    .locals 9

    if-gtz p4, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)"

    const-string v2, "session_id"

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "session_type"

    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "events"

    add-int/lit8 p4, p4, -0x1

    .line 94
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 95
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 96
    iget-object p1, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 97
    iget-object v2, p0, Lio/appmetrica/analytics/impl/S6;->k:Lio/appmetrica/analytics/impl/O6;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    .line 98
    iget-object p1, p1, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    .line 99
    iget-object v6, p1, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    const/4 v5, 0x1

    move v7, p5

    .line 100
    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/impl/O6;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/M6;

    move-result-object p1

    .line 101
    iget-object p2, p1, Lio/appmetrica/analytics/impl/M6;->a:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object p3, p1, Lio/appmetrica/analytics/impl/M6;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ContentValues;

    .line 104
    const-string p5, "type"

    .line 105
    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 106
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object p3, p0, Lio/appmetrica/analytics/impl/S6;->j:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/appmetrica/analytics/impl/W8;

    .line 108
    invoke-interface {p4, p2}, Lio/appmetrica/analytics/impl/W8;->b(Ljava/util/List;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object p2, p1, Lio/appmetrica/analytics/impl/M6;->a:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 110
    const-string p3, "Event removed from db"

    const/4 p4, 0x0

    .line 111
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_3

    .line 112
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/ContentValues;

    invoke-virtual {p0, p5, p3}, Lio/appmetrica/analytics/impl/S6;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 113
    :cond_3
    iget p1, p1, Lio/appmetrica/analytics/impl/M6;->b:I

    .line 114
    iget-object p2, p0, Lio/appmetrica/analytics/impl/S6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int p1, p1

    int-to-long p3, p1

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    :cond_4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final a(JLio/appmetrica/analytics/impl/zk;J)V
    .locals 7

    .line 21
    new-instance v0, Lio/appmetrica/analytics/impl/B7;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/B7;-><init>(Lio/appmetrica/analytics/impl/y7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iget-object v3, p0, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    .line 24
    iget-object v3, v3, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    .line 25
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/ch;

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 27
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 28
    new-instance p4, Lio/appmetrica/analytics/impl/A7;

    .line 29
    :try_start_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v4, "dId"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 31
    const-string v4, "uId"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 32
    const-string v4, "appVer"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 33
    const-string v4, "appBuild"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 34
    const-string v4, "kitBuildType"

    .line 35
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildType()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 37
    const-string v4, "osVer"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 38
    const-string v4, "osApiLev"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsApiLevel()I

    move-result v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p5

    .line 39
    const-string v4, "lang"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 40
    const-string v4, "root"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceRootStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 41
    const-string v4, "app_debuggable"

    .line 42
    iget-object v5, v3, Lio/appmetrica/analytics/impl/Y5;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 44
    const-string v4, "app_framework"

    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppFramework()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 45
    const-string v4, "attribution_id"

    .line 46
    iget v5, v3, Lio/appmetrica/analytics/impl/ch;->r:I

    .line 47
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p5

    .line 48
    const-string v4, "analyticsSdkVersionName"

    .line 49
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {p5, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5

    .line 51
    const-string v4, "kitBuildNumber"

    .line 52
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildNumber()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {p5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :goto_0
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    .line 56
    new-instance v3, Lio/appmetrica/analytics/impl/z7;

    .line 57
    invoke-static {}, Lio/appmetrica/analytics/impl/fn;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 58
    sget-object v5, Lio/appmetrica/analytics/impl/Jj;->a:Lio/appmetrica/analytics/impl/Kj;

    .line 59
    monitor-enter v5

    .line 60
    :try_start_1
    iget-object v6, v5, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {v6, v2}, Lio/appmetrica/analytics/impl/Oe;->b(Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v5

    .line 61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 62
    invoke-direct {v3, p2, v4, v2}, Lio/appmetrica/analytics/impl/z7;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 63
    invoke-direct {p4, p1, p3, p5, v3}, Lio/appmetrica/analytics/impl/A7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/zk;Ljava/lang/String;Lio/appmetrica/analytics/impl/z7;)V

    .line 64
    invoke-virtual {v0, p4}, Lio/appmetrica/analytics/impl/B7;->a(Lio/appmetrica/analytics/impl/A7;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/f7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 67
    const-string p3, "sessions"

    invoke-virtual {p2, p3, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :catchall_1
    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :catchall_2
    move-exception p0

    .line 69
    monitor-exit v5

    throw p0
.end method

.method public final a(Landroid/content/ContentValues;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/S6;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    iget-object p1, p0, Lio/appmetrica/analytics/impl/S6;->d:Lio/appmetrica/analytics/impl/R6;

    monitor-enter p1

    .line 74
    :try_start_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->d:Lio/appmetrica/analytics/impl/R6;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 76
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 77
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    .line 139
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 141
    :goto_0
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->d:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lio/appmetrica/analytics/impl/n7;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/impl/n7;-><init>(Lio/appmetrica/analytics/impl/k7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/n7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/m7;

    move-result-object p1

    .line 145
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    .line 146
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 147
    iget-object v0, p1, Lio/appmetrica/analytics/impl/m7;->d:Lio/appmetrica/analytics/impl/hb;

    .line 148
    iget-object p1, p1, Lio/appmetrica/analytics/impl/m7;->g:Lio/appmetrica/analytics/impl/l7;

    .line 149
    iget-object v1, p1, Lio/appmetrica/analytics/impl/l7;->b:Ljava/lang/String;

    .line 150
    iget-object p1, p1, Lio/appmetrica/analytics/impl/l7;->c:Ljava/lang/String;

    .line 151
    invoke-static {p2, v0, v1, p1}, Lio/appmetrica/analytics/impl/Df;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/hb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/W8;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "events"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->queryRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0
.end method

.method public final c()V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, " SELECT DISTINCT id From sessions order by id asc "

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "All sessions in db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ", "

    if-eqz v5, :cond_0

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v4, " SELECT DISTINCT session_id From events order by session_id asc "

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "All sessions in reports db: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_1
    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-object v1, v0

    :goto_2
    move-object v2, v0

    move-object v0, v1

    :cond_2
    :goto_3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    invoke-static {v0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->d:Lio/appmetrica/analytics/impl/R6;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
