.class public final Lio/appmetrica/analytics/impl/O6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

.field public final b:Lio/appmetrica/analytics/impl/cj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->v()Lio/appmetrica/analytics/impl/cj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/O6;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/cj;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/cj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O6;->a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/O6;->b:Lio/appmetrica/analytics/impl/cj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Z)Lio/appmetrica/analytics/impl/M6;
    .locals 10

    const-string v0, "events"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT %s, %s, %s FROM %s WHERE %s"

    const-string v3, "global_number"

    const-string v4, "type"

    const-string v5, "event_description"

    const-string v6, "events"

    filled-new-array {v3, v4, v5, v6, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    move-object v3, v1

    :cond_1
    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v2, v1

    :goto_1
    :try_start_2
    sget-object v4, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    const-string v5, "select_rows_to_delete_exception"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lio/appmetrica/analytics/impl/fj;

    invoke-direct {v6, v5, v3}, Lio/appmetrica/analytics/impl/fj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v6}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    move-object v3, v1

    :goto_2
    :try_start_3
    invoke-virtual {p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    const/4 p1, 0x0

    :goto_3
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_2

    goto/16 :goto_9

    :cond_2
    if-eqz p5, :cond_7

    if-eqz p4, :cond_7

    iget-object p2, p0, Lio/appmetrica/analytics/impl/O6;->b:Lio/appmetrica/analytics/impl/cj;

    if-eqz p2, :cond_7

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O6;->a:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    monitor-enter p2

    :try_start_4
    iget-object p5, p2, Lio/appmetrica/analytics/impl/cj;->c:Ljava/util/HashMap;

    invoke-virtual {p5, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/appmetrica/analytics/impl/aj;

    if-nez p5, :cond_3

    new-instance p5, Lio/appmetrica/analytics/impl/aj;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/cj;->b:Landroid/content/Context;

    iget-object v2, p2, Lio/appmetrica/analytics/impl/cj;->a:Lio/appmetrica/analytics/impl/dj;

    invoke-direct {p5, p4, v0, p0, v2}, Lio/appmetrica/analytics/impl/aj;-><init>(Ljava/lang/String;Landroid/content/Context;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/dj;)V

    iget-object p0, p2, Lio/appmetrica/analytics/impl/cj;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    goto/16 :goto_8

    :cond_3
    :goto_4
    monitor-exit p2

    :try_start_5
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "global_number"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Lio/appmetrica/analytics/impl/Cf;->a:Ljava/util/Map;

    move-object v4, v1

    goto :goto_6

    :cond_5
    sget-object v5, Lio/appmetrica/analytics/impl/Cf;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_6
    const-string v2, "global_number"

    invoke-virtual {p0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "event_type"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "reason"

    invoke-static {p3}, Lio/appmetrica/analytics/impl/N6;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "cleared"

    invoke-virtual {p2, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "actual_deleted_number"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "details"

    invoke-virtual {p2, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p4}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v9

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    new-instance p0, Lio/appmetrica/analytics/impl/e4;

    const-string v6, ""

    sget-object p2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/4 v8, 0x0

    const/16 v7, 0x3002

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :catchall_4
    move-object p0, v1

    :goto_7
    if-eqz p0, :cond_7

    iget-object p2, p5, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    if-eqz p2, :cond_7

    :try_start_6
    new-instance p2, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object p3, p5, Lio/appmetrica/analytics/impl/aj;->a:Ljava/lang/String;

    invoke-direct {p2, p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Ljava/lang/String;)V

    iget-object p3, p5, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-virtual {p2, p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setReporterType(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object p3, p5, Lio/appmetrica/analytics/impl/aj;->d:Lio/appmetrica/analytics/impl/dj;

    new-instance p4, Lio/appmetrica/analytics/impl/xh;

    new-instance v0, Lio/appmetrica/analytics/impl/pf;

    iget-object p5, p5, Lio/appmetrica/analytics/impl/aj;->b:Landroid/content/Context;

    invoke-direct {v0, p5, v1}, Lio/appmetrica/analytics/impl/pf;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    invoke-direct {p4, v0, p2, v1}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/xh;->c()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/a6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    iget-object p2, p3, Lio/appmetrica/analytics/impl/dj;->a:Lio/appmetrica/analytics/impl/u1;

    const/4 p3, 0x1

    invoke-interface {p2, p3, p0}, Lio/appmetrica/analytics/impl/u1;->reportData(ILandroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_9

    :goto_8
    monitor-exit p2

    throw p0

    :catchall_5
    :cond_7
    :goto_9
    new-instance p0, Lio/appmetrica/analytics/impl/M6;

    invoke-direct {p0, v3, p1}, Lio/appmetrica/analytics/impl/M6;-><init>(Ljava/util/ArrayList;I)V

    return-object p0

    :catchall_6
    move-exception p0

    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    throw p0
.end method
