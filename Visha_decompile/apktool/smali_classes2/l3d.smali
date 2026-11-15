.class public abstract Ll3d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ll3d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 52
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lj1d;

    invoke-direct {v1}, Lj1d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 12

    .line 1
    const-string v0, "<this>"

    const-string v1, "ABTEST"

    sget-object v2, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 2
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4
    sget-object v6, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_8

    .line 5
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6
    const-string v5, "layer_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 7
    const-string v6, "request_time"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 8
    const-string v7, "ab_info"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 9
    :cond_0
    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v5, :cond_1

    .line 10
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move-object v8, v3

    :goto_0
    if-eqz v8, :cond_6

    .line 11
    new-instance v9, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    const/4 v10, 0x1

    invoke-direct {v9, v3, v10, v3}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lnvd;->setLayerId(J)V

    .line 13
    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v6, :cond_2

    .line 14
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v3

    :goto_1
    if-eqz v10, :cond_3

    .line 15
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    :cond_3
    const-wide/16 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10, v11}, Lnvd;->setRequestTime(J)V

    .line 16
    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v7, :cond_4

    .line 17
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object v10, v3

    :goto_3
    if-eqz v10, :cond_5

    .line 18
    invoke-virtual {v9, v10}, Lnvd;->setInfo(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v9, v10}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->convertLayerInfo(Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    .line 20
    :cond_5
    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 22
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ABDiskCache queryAllFromDiskCache success, onlineLayerMap size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v1, v5}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_7
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-static {v4, v3}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_4
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v4, v0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 27
    :goto_5
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v4

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ABDiskCache queryAllFromDiskCache fail, reason = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    :goto_6
    sget-object v0, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    const-string v0, "map"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 32
    sput-object v2, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 34
    const-string v0, "ABDiskCache queryFromAssets from localABDataJson, localLayerMap size = "

    .line 35
    :try_start_5
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v4, "key_local_ab_data_version_code"

    invoke-virtual {v2, v4}, Lo9;->f(Ljava/lang/String;)I

    move-result v2

    .line 36
    invoke-static {}, Lmd8;->m()I

    move-result v4

    if-eq v2, v4, :cond_9

    .line 37
    invoke-static {}, Lcom/cloud/hisavana/abtestkit/d;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    .line 38
    :cond_9
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v4

    invoke-virtual {v4}, Lo9;->n()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 39
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v4, "key_local_ab_data_json"

    invoke-virtual {v2, v4}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    int-to-long v4, v2

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/abtestkit/d;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_d

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_a

    .line 42
    :cond_b
    new-instance v4, Lcom/cloud/hisavana/abtestkit/c;

    invoke-direct {v4}, Lcom/cloud/hisavana/abtestkit/c;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 43
    invoke-static {v2, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_c
    move-object v0, v3

    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v4, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v2

    goto :goto_a

    .line 47
    :goto_9
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ABDiskCache queryFromAssets fail, reason = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_d
    :goto_a
    sget-object v0, Llhd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    :cond_e
    sput-object v3, Llhd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_f

    .line 51
    invoke-interface {p0}, Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;->onInitComplete()V

    :cond_f
    return-void
.end method

.method public static b(J)V
    .locals 5

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    sget-object v2, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0, v1}, Lnvd;->setRequestTime(J)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v2, p0, p1}, Lnvd;->setLayerId(J)V

    .line 12
    invoke-virtual {v2, v0, v1}, Lnvd;->setRequestTime(J)V

    .line 13
    sget-object v3, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_0
    const-string v2, "ADSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ABMemoryCache upsertRequestTimeToMemoryCache onlineLayerMap = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    const-string v4, "ABTEST"

    invoke-virtual {v2, v4, v3}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v3, Ln1d;

    invoke-direct {v3, p0, p1, v0, v1}, Ln1d;-><init>(JJ)V

    invoke-virtual {v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 2

    .line 1
    sget-object v0, Ll3d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p0

    const-string v0, "ABTEST"

    const-string v1, "ABMemoryCache queryAllData Initialization has been completed"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ll1d;

    invoke-direct {v1, p0}, Ll1d;-><init>(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Ll3d;->a(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    :goto_0
    return-void
.end method

.method public static final c(JJ)V
    .locals 2

    .line 2
    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    .line 3
    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    new-instance v1, Lnvd;

    invoke-direct {v1}, Lnvd;-><init>()V

    .line 5
    invoke-virtual {v1, p0, p1}, Lnvd;->setLayerId(J)V

    .line 6
    invoke-virtual {v1, p2, p3}, Lnvd;->setRequestTime(J)V

    .line 7
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 8
    const-string p1, "abData"

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ABDiskCache upsertRequestTimeToDiskCache fail, reason = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    const-string p2, "ABTEST"

    invoke-virtual {p1, p2, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    :goto_0
    return-void
.end method

.method public static final c(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ll3d;->a(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    return-void
.end method

.method public static d(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V
    .locals 3

    sget-object v0, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lnvd;->getLayerId()J

    move-result-wide v0

    sget-object v2, Llhd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lm1d;

    invoke-direct {v1, p0}, Lm1d;-><init>(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final e()V
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/abtestkit/d;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ABDiskCache deleteTable fail, reason = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ABTEST"

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final f(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V
    .locals 3

    sget-object v0, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnvd;->getLayerId()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lnvd;

    invoke-direct {v2}, Lnvd;-><init>()V

    invoke-virtual {v2, v0, v1}, Lnvd;->setLayerId(J)V

    invoke-virtual {p0}, Lnvd;->getRequestTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lnvd;->setRequestTime(J)V

    invoke-virtual {p0}, Lnvd;->getInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnvd;->setInfo(Ljava/lang/String;)V

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "abData"

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/abtestkit/d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ABDiskCache upsertToDiskCache fail, reason = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ABTEST"

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    :cond_0
    :goto_0
    return-void
.end method
