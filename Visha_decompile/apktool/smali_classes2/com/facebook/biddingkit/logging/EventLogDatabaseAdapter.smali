.class Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "EventLogsDatabase.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static volatile INSTANCE:Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "EVENT_LOGS"

.field private static final TAG:Ljava/lang/String; = "EventLogDatabaseAdapter"


# instance fields
.field private final mDbHelper:Lcom/facebook/biddingkit/logging/DataBaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/biddingkit/logging/DataBaseHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "EventLogsDatabase.db"

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/facebook/biddingkit/logging/DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->mDbHelper:Lcom/facebook/biddingkit/logging/DataBaseHelper;

    return-void
.end method

.method public static deleteEntry(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getInstance()Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "EVENT_LOGS"

    const-string v2, "ID=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "EventLogDatabaseAdapter"

    const-string v1, "Failed deleting entry"

    invoke-static {v0, v1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->INSTANCE:Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    return-object v0
.end method

.method public static getRowCount()I
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getInstance()Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "EVENT_LOGS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "EventLogDatabaseAdapter"

    const-string v2, "Failed getting Row Count"

    invoke-static {v1, v2, v0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static getRows(I)Ljava/util/List;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/logging/EventLog;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getInstance()Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "EVENT_LOGS"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "exception"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "auction_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "bidder_data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez p0, :cond_1

    new-instance v6, Lcom/facebook/biddingkit/logging/EventLog;

    invoke-direct {v6}, Lcom/facebook/biddingkit/logging/EventLog;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/biddingkit/logging/EventLog;->addException(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/biddingkit/logging/EventLog;->addAuctionId(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/biddingkit/logging/EventLog;->addDatabaseId(Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "result"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/facebook/biddingkit/logging/EventLog;->addResultData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "cpm_cents"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/facebook/biddingkit/logging/EventLog;->addCpmCentsData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "error"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/facebook/biddingkit/logging/EventLog;->addError(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "latency_ms"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/facebook/biddingkit/logging/EventLog;->addLatencyMs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "EventLogDatabaseAdapter"

    const-string v2, "Failed getting rows"

    invoke-static {v1, v2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->INSTANCE:Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    if-nez v0, :cond_1

    const-class v0, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->INSTANCE:Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    invoke-direct {v1, p0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->INSTANCE:Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static insertEntry(Lcom/facebook/biddingkit/logging/EventLog;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "auction_id"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLog;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exception"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLog;->getException()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bidder_data"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLog;->getAllBidderJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getInstance()Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "EVENT_LOGS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "EventLogDatabaseAdapter"

    const-string v1, "Failed inserting an entry"

    invoke-static {v0, v1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static truncateTable()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getInstance()Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "EVENT_LOGS"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EventLogDatabaseAdapter"

    const-string v2, "Failed to truncate table"

    invoke-static {v1, v2, v0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->mDbHelper:Lcom/facebook/biddingkit/logging/DataBaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "EventLogDatabaseAdapter"

    const-string v1, "Failed getting Writable Database"

    invoke-static {v0, v1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
