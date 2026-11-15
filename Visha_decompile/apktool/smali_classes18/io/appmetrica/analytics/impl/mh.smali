.class public final Lio/appmetrica/analytics/impl/mh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/m5;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Lio/appmetrica/analytics/impl/t7;

.field public d:Lio/appmetrica/analytics/impl/p9;

.field public final e:Lio/appmetrica/analytics/impl/S6;

.field public f:Ljava/util/List;

.field public g:I

.field public h:I

.field public i:I

.field public j:Lio/appmetrica/analytics/impl/lh;

.field public final k:Lio/appmetrica/analytics/impl/t3;

.field public final l:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final m:Lio/appmetrica/analytics/impl/Un;

.field public final n:Lio/appmetrica/analytics/impl/Ya;

.field public final o:Lio/appmetrica/analytics/impl/Rg;

.field public final p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

.field public final q:Lio/appmetrica/analytics/impl/Db;

.field public final r:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

.field public final s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

.field public u:Z

.field public v:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Rg;Lio/appmetrica/analytics/impl/Db;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 13

    .line 5
    new-instance v7, Lio/appmetrica/analytics/impl/t3;

    const v0, 0xfa000

    const-string v1, "event value in ReportTask"

    move-object/from16 v2, p8

    invoke-direct {v7, v0, v1, v2}, Lio/appmetrica/analytics/impl/t3;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/q1;->a()Lio/appmetrica/analytics/impl/Fj;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object/from16 v5, p9

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    .line 7
    invoke-direct/range {v0 .. v12}, Lio/appmetrica/analytics/impl/mh;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Rg;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/Db;Lio/appmetrica/analytics/impl/t3;Lio/appmetrica/analytics/impl/Fj;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Rg;Lio/appmetrica/analytics/impl/Db;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 11
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Rg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/Db;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/m5;",
            "Lio/appmetrica/analytics/impl/Rg;",
            "Lio/appmetrica/analytics/impl/Db;",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "Lio/appmetrica/analytics/impl/ch;",
            ">;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v7

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->o()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v8

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->t()Lio/appmetrica/analytics/impl/Un;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    .line 4
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/mh;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Rg;Lio/appmetrica/analytics/impl/Db;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Rg;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/Db;Lio/appmetrica/analytics/impl/t3;Lio/appmetrica/analytics/impl/Fj;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 8

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->b:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lio/appmetrica/analytics/impl/mh;->g:I

    .line 11
    iput v1, v0, Lio/appmetrica/analytics/impl/mh;->h:I

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lio/appmetrica/analytics/impl/mh;->i:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/mh;->u:Z

    .line 14
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/io/GZIPCompressor;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/io/GZIPCompressor;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/networktasks/internal/DefaultNetworkResponseHandler;

    invoke-direct {v7}, Lio/appmetrica/analytics/networktasks/internal/DefaultNetworkResponseHandler;-><init>()V

    move-object v2, v1

    move-object/from16 v3, p12

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;-><init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;Lio/appmetrica/analytics/coreapi/internal/io/Compressor;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/NetworkResponseHandler;)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->o:Lio/appmetrica/analytics/impl/Rg;

    move-object v1, p1

    .line 16
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    move-object v1, p3

    .line 17
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->e:Lio/appmetrica/analytics/impl/S6;

    move-object v1, p2

    .line 18
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->l:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-object v1, p7

    .line 19
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->k:Lio/appmetrica/analytics/impl/t3;

    move-object v1, p5

    .line 20
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->m:Lio/appmetrica/analytics/impl/Un;

    move-object v1, p6

    .line 21
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->q:Lio/appmetrica/analytics/impl/Db;

    move-object/from16 v1, p8

    .line 22
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->n:Lio/appmetrica/analytics/impl/Ya;

    move-object/from16 v1, p10

    .line 23
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->r:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    move-object/from16 v1, p11

    .line 24
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    move-object/from16 v1, p9

    .line 25
    iput-object v1, v0, Lio/appmetrica/analytics/impl/mh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    return-void
.end method

.method public static a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/c0;
    .locals 4

    .line 100
    new-instance v0, Lio/appmetrica/analytics/impl/n7;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 101
    invoke-direct {v0, v1, v2, v1}, Lio/appmetrica/analytics/impl/n7;-><init>(Lio/appmetrica/analytics/impl/k7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/n7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/m7;

    move-result-object p0

    .line 103
    new-instance v0, Lio/appmetrica/analytics/impl/c0;

    .line 104
    iget-object v1, p0, Lio/appmetrica/analytics/impl/m7;->g:Lio/appmetrica/analytics/impl/l7;

    .line 105
    iget-object v1, v1, Lio/appmetrica/analytics/impl/l7;->g:Ljava/lang/String;

    .line 106
    const-string v2, ""

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m7;->g:Lio/appmetrica/analytics/impl/l7;

    .line 108
    iget-object p0, p0, Lio/appmetrica/analytics/impl/l7;->h:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 110
    invoke-static {p0, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/c0;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)[Lio/appmetrica/analytics/impl/e9;
    .locals 5

    .line 20
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    new-array v0, v0, [Lio/appmetrica/analytics/impl/e9;

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    :try_start_0
    new-instance v4, Lio/appmetrica/analytics/impl/e9;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/e9;-><init>()V

    .line 26
    iput-object v3, v4, Lio/appmetrica/analytics/impl/e9;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lio/appmetrica/analytics/impl/e9;->b:Ljava/lang/String;

    .line 28
    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 11

    .line 159
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->e:Lio/appmetrica/analytics/impl/S6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->b:Ljava/util/LinkedHashMap;

    .line 160
    iget-object v1, v0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 161
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    const-string v3, "sessions"

    .line 164
    invoke-static {p0}, Lio/appmetrica/analytics/impl/S6;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 165
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/S6;->a([Ljava/lang/String;Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v6

    const-string v9, "id ASC"

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 166
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 167
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0
.end method

.method public final a(JLio/appmetrica/analytics/impl/zk;)Landroid/database/Cursor;
    .locals 10

    .line 168
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->e:Lio/appmetrica/analytics/impl/S6;

    .line 169
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 170
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    const-string v2, "events"

    const-string v4, "session_id = ? AND session_type = ?"

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 174
    iget p2, p3, Lio/appmetrica/analytics/impl/zk;->a:I

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    const-string v8, "number_in_session ASC"

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 176
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 177
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1
.end method

.method public final a(JLio/appmetrica/analytics/impl/l9;Lio/appmetrica/analytics/impl/ch;Ljava/util/ArrayList;I)Lio/appmetrica/analytics/impl/kh;
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v4, p5

    const/4 v5, 0x1

    .line 111
    new-instance v6, Lio/appmetrica/analytics/impl/m9;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/m9;-><init>()V

    .line 112
    iput-wide v2, v6, Lio/appmetrica/analytics/impl/m9;->a:J

    .line 113
    iput-object v0, v6, Lio/appmetrica/analytics/impl/m9;->b:Lio/appmetrica/analytics/impl/l9;

    .line 114
    iget v0, v0, Lio/appmetrica/analytics/impl/l9;->c:I

    .line 115
    sget-object v7, Lio/appmetrica/analytics/impl/Cf;->b:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/zk;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lio/appmetrica/analytics/impl/zk;->b:Lio/appmetrica/analytics/impl/zk;

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2, v3, v0}, Lio/appmetrica/analytics/impl/mh;->a(JLio/appmetrica/analytics/impl/zk;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v2, :cond_e

    .line 118
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 119
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_c

    iget v0, v1, Lio/appmetrica/analytics/impl/mh;->h:I

    const/16 v10, 0x64

    if-ge v0, v10, :cond_c

    .line 120
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 121
    invoke-static {v2, v10}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 122
    :try_start_2
    new-instance v0, Lio/appmetrica/analytics/impl/R8;

    invoke-direct {v0, v10}, Lio/appmetrica/analytics/impl/R8;-><init>(Landroid/content/ContentValues;)V

    .line 123
    iget-object v11, v0, Lio/appmetrica/analytics/impl/R8;->h:Lio/appmetrica/analytics/impl/hb;

    if-eqz v11, :cond_1

    .line 124
    sget-object v12, Lio/appmetrica/analytics/impl/Cf;->d:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/appmetrica/analytics/impl/a9;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_2

    .line 125
    :cond_1
    sget-object v11, Lio/appmetrica/analytics/impl/Cf;->a:Ljava/util/Map;

    const/4 v11, 0x0

    :goto_1
    if-nez v11, :cond_2

    .line 126
    sget-object v11, Lio/appmetrica/analytics/impl/a9;->i:Lio/appmetrica/analytics/impl/a9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object/from16 v12, p4

    .line 127
    :try_start_3
    invoke-virtual {v11, v0, v12}, Lio/appmetrica/analytics/impl/a9;->a(Lio/appmetrica/analytics/impl/R8;Lio/appmetrica/analytics/impl/ch;)Lio/appmetrica/analytics/impl/k9;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 128
    :goto_2
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_d

    .line 129
    invoke-static {v10}, Lio/appmetrica/analytics/impl/mh;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/c0;

    move-result-object v10

    if-nez v8, :cond_6

    .line 130
    iget v8, v1, Lio/appmetrica/analytics/impl/mh;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gez v8, :cond_5

    .line 131
    :try_start_5
    new-instance v8, Lorg/json/JSONObject;

    iget-object v11, v10, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v8}, Lio/appmetrica/analytics/impl/mh;->a(Lorg/json/JSONObject;)[Lio/appmetrica/analytics/impl/e9;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 133
    array-length v11, v8

    move v13, v9

    move v14, v13

    :goto_4
    if-ge v13, v11, :cond_4

    aget-object v15, v8, v13

    const/4 v7, 0x7

    .line 134
    invoke-static {v7, v15}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/2addr v14, v7

    add-int/2addr v13, v5

    goto :goto_4

    :catchall_2
    :cond_3
    move v14, v9

    .line 135
    :cond_4
    :try_start_6
    iput v14, v1, Lio/appmetrica/analytics/impl/mh;->i:I

    .line 136
    iget v7, v1, Lio/appmetrica/analytics/impl/mh;->g:I

    add-int/2addr v7, v14

    iput v7, v1, Lio/appmetrica/analytics/impl/mh;->g:I

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_c

    :cond_5
    :goto_5
    move-object v8, v10

    goto :goto_6

    .line 137
    :cond_6
    invoke-virtual {v8, v10}, Lio/appmetrica/analytics/impl/c0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_a

    .line 138
    :cond_7
    :goto_6
    iget-object v7, v1, Lio/appmetrica/analytics/impl/mh;->k:Lio/appmetrica/analytics/impl/t3;

    iget-object v10, v0, Lio/appmetrica/analytics/impl/k9;->e:[B

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-virtual {v7, v10}, Lio/appmetrica/analytics/impl/t3;->a([B)[B

    move-result-object v7

    .line 140
    iget-object v10, v0, Lio/appmetrica/analytics/impl/k9;->e:[B

    if-eq v10, v7, :cond_a

    .line 141
    iget v11, v0, Lio/appmetrica/analytics/impl/k9;->i:I

    if-nez v10, :cond_8

    move v10, v9

    goto :goto_7

    .line 142
    :cond_8
    array-length v10, v10

    :goto_7
    if-nez v7, :cond_9

    move v13, v9

    goto :goto_8

    :cond_9
    array-length v13, v7

    :goto_8
    sub-int/2addr v10, v13

    add-int/2addr v10, v11

    .line 143
    iput v10, v0, Lio/appmetrica/analytics/impl/k9;->i:I

    .line 144
    iput-object v7, v0, Lio/appmetrica/analytics/impl/k9;->e:[B

    .line 145
    :cond_a
    iget v7, v1, Lio/appmetrica/analytics/impl/mh;->g:I

    const/4 v10, 0x3

    invoke-static {v10, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v10

    add-int/2addr v7, v10

    iput v7, v1, Lio/appmetrica/analytics/impl/mh;->g:I

    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez p6, :cond_b

    .line 147
    iget v7, v1, Lio/appmetrica/analytics/impl/mh;->g:I

    const/high16 v10, 0x100000

    if-lt v7, v10, :cond_d

    goto :goto_9

    .line 148
    :cond_b
    iget v7, v1, Lio/appmetrica/analytics/impl/mh;->g:I

    const v10, 0x3d400

    if-lt v7, v10, :cond_d

    :cond_c
    :goto_9
    move v5, v9

    goto :goto_a

    .line 149
    :cond_d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget v0, v1, Lio/appmetrica/analytics/impl/mh;->h:I

    add-int/2addr v0, v5

    iput v0, v1, Lio/appmetrica/analytics/impl/mh;->h:I

    goto/16 :goto_0

    .line 151
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lio/appmetrica/analytics/impl/k9;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/k9;

    iput-object v0, v6, Lio/appmetrica/analytics/impl/m9;->c:[Lio/appmetrica/analytics/impl/k9;

    .line 153
    new-instance v0, Lio/appmetrica/analytics/impl/kh;

    invoke-direct {v0, v6, v8, v5}, Lio/appmetrica/analytics/impl/kh;-><init>(Lio/appmetrica/analytics/impl/m9;Lio/appmetrica/analytics/impl/c0;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v7, v0

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    .line 154
    :goto_b
    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    const/4 v2, 0x0

    .line 155
    :goto_c
    :try_start_7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 156
    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    :goto_d
    return-object v7

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 157
    invoke-static {v2}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    .line 158
    throw v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/ch;)Lio/appmetrica/analytics/impl/lh;
    .locals 16
    .param p1    # Lio/appmetrica/analytics/impl/ch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v8, p0

    .line 55
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/appmetrica/analytics/impl/mh;->a()Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v13, :cond_9

    move-object v14, v1

    move-object v0, v12

    .line 60
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v8, Lio/appmetrica/analytics/impl/mh;->h:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 62
    invoke-static {v13, v1}, Lio/appmetrica/analytics/coreutils/internal/db/DBUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 63
    new-instance v2, Lio/appmetrica/analytics/impl/B7;

    const/4 v3, 0x1

    .line 64
    invoke-direct {v2, v12, v3, v12}, Lio/appmetrica/analytics/impl/B7;-><init>(Lio/appmetrica/analytics/impl/y7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/B7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/A7;

    move-result-object v1

    .line 66
    iget-object v15, v1, Lio/appmetrica/analytics/impl/A7;->a:Ljava/lang/Long;

    if-nez v15, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, v1, Lio/appmetrica/analytics/impl/A7;->d:Lio/appmetrica/analytics/impl/z7;

    .line 68
    iget-object v4, v2, Lio/appmetrica/analytics/impl/z7;->a:Ljava/lang/Long;

    .line 69
    iget-object v5, v2, Lio/appmetrica/analytics/impl/z7;->b:Ljava/lang/Long;

    .line 70
    iget-object v2, v2, Lio/appmetrica/analytics/impl/z7;->c:Ljava/lang/Boolean;

    .line 71
    invoke-static {v4, v5, v2}, Lio/appmetrica/analytics/impl/Cf;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/o9;

    move-result-object v2

    .line 72
    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 73
    iget-object v1, v1, Lio/appmetrica/analytics/impl/A7;->b:Lio/appmetrica/analytics/impl/zk;

    .line 74
    new-instance v5, Lio/appmetrica/analytics/impl/l9;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/l9;-><init>()V

    .line 75
    iput-object v2, v5, Lio/appmetrica/analytics/impl/l9;->a:Lio/appmetrica/analytics/impl/o9;

    .line 76
    iput-object v4, v5, Lio/appmetrica/analytics/impl/l9;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 77
    sget-object v2, Lio/appmetrica/analytics/impl/Cf;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v13

    move-object v1, v14

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_1
    iput v1, v5, Lio/appmetrica/analytics/impl/l9;->c:I

    .line 80
    :cond_3
    iget v1, v8, Lio/appmetrica/analytics/impl/mh;->g:I

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v3, v6, v7}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v8, Lio/appmetrica/analytics/impl/mh;->g:I

    const/4 v2, 0x2

    .line 81
    invoke-static {v2, v5}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v8, Lio/appmetrica/analytics/impl/mh;->g:I

    const v2, 0x3d400

    if-lt v1, v2, :cond_4

    goto :goto_3

    .line 82
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 83
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v1, p0

    move-object v4, v5

    move-object/from16 v5, p1

    move-object v6, v11

    .line 84
    invoke-virtual/range {v1 .. v7}, Lio/appmetrica/analytics/impl/mh;->a(JLio/appmetrica/analytics/impl/l9;Lio/appmetrica/analytics/impl/ch;Ljava/util/ArrayList;I)Lio/appmetrica/analytics/impl/kh;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_5

    .line 85
    iget-object v0, v1, Lio/appmetrica/analytics/impl/kh;->b:Lio/appmetrica/analytics/impl/c0;

    goto :goto_2

    .line 86
    :cond_5
    iget-object v2, v1, Lio/appmetrica/analytics/impl/kh;->b:Lio/appmetrica/analytics/impl/c0;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/c0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 87
    :cond_6
    :goto_2
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, v1, Lio/appmetrica/analytics/impl/kh;->a:Lio/appmetrica/analytics/impl/m9;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, v1, Lio/appmetrica/analytics/impl/kh;->b:Lio/appmetrica/analytics/impl/c0;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_7

    .line 90
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/kh;->b:Lio/appmetrica/analytics/impl/c0;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v2

    .line 91
    :catchall_1
    :cond_7
    :try_start_3
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/kh;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :cond_8
    :goto_3
    move-object v1, v14

    .line 92
    :cond_9
    invoke-static {v13}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 93
    :goto_4
    :try_start_4
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 94
    invoke-static {v12}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    .line 95
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 96
    iget-object v3, v8, Lio/appmetrica/analytics/impl/mh;->n:Lio/appmetrica/analytics/impl/Ya;

    const-string v4, "protobuf_serialization_error"

    invoke-interface {v3, v4, v2}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 97
    :cond_a
    new-instance v0, Lio/appmetrica/analytics/impl/lh;

    invoke-direct {v0, v9, v10, v1}, Lio/appmetrica/analytics/impl/lh;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 98
    invoke-static {v12}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    .line 99
    throw v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/lh;Ljava/util/List;Lio/appmetrica/analytics/impl/ch;)Lio/appmetrica/analytics/impl/p9;
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/p9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/p9;-><init>()V

    .line 2
    new-instance v1, Lio/appmetrica/analytics/impl/h9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/h9;-><init>()V

    .line 3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/mh;->c:Lio/appmetrica/analytics/impl/t7;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/t7;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/appmetrica/analytics/impl/h9;->a:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/mh;->c:Lio/appmetrica/analytics/impl/t7;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/t7;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lio/appmetrica/analytics/impl/h9;->b:Ljava/lang/String;

    .line 7
    iget p3, p0, Lio/appmetrica/analytics/impl/mh;->g:I

    const/4 v2, 0x4

    .line 8
    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v2, p3

    iput v2, p0, Lio/appmetrica/analytics/impl/mh;->g:I

    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/impl/p9;->b:Lio/appmetrica/analytics/impl/h9;

    .line 10
    sget-object p3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 11
    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/ua;->A()Lio/appmetrica/analytics/impl/Lm;

    move-result-object p3

    .line 12
    new-instance v1, Lio/appmetrica/analytics/impl/jh;

    invoke-direct {v1, p0, v0}, Lio/appmetrica/analytics/impl/jh;-><init>(Lio/appmetrica/analytics/impl/mh;Lio/appmetrica/analytics/impl/p9;)V

    monitor-enter p3

    .line 13
    :try_start_0
    iget-object v2, p3, Lio/appmetrica/analytics/impl/Lm;->a:Lio/appmetrica/analytics/impl/Nm;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/impl/Nm;->a(Lio/appmetrica/analytics/impl/Mm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    .line 14
    iget-object p3, p1, Lio/appmetrica/analytics/impl/lh;->a:Ljava/util/List;

    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/m9;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lio/appmetrica/analytics/impl/m9;

    iput-object p3, v0, Lio/appmetrica/analytics/impl/p9;->a:[Lio/appmetrica/analytics/impl/m9;

    .line 16
    iget-object p1, p1, Lio/appmetrica/analytics/impl/lh;->c:Lorg/json/JSONObject;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/mh;->a(Lorg/json/JSONObject;)[Lio/appmetrica/analytics/impl/e9;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/p9;->c:[Lio/appmetrica/analytics/impl/e9;

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/p9;->e:[Ljava/lang/String;

    .line 18
    iget p1, p0, Lio/appmetrica/analytics/impl/mh;->g:I

    const/16 p2, 0x8

    invoke-static {p2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lio/appmetrica/analytics/impl/mh;->g:I

    return-object v0

    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p3

    throw p0
.end method

.method public final a(Z)V
    .locals 10

    .line 29
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->m:Lio/appmetrica/analytics/impl/Un;

    iget v1, p0, Lio/appmetrica/analytics/impl/mh;->v:I

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "report_request_id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Vn;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->d:Lio/appmetrica/analytics/impl/p9;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p9;->a:[Lio/appmetrica/analytics/impl/m9;

    const/4 v1, 0x0

    .line 32
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 33
    :try_start_1
    aget-object v2, v0, v1

    .line 34
    iget-object v3, p0, Lio/appmetrica/analytics/impl/mh;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 35
    iget-object v3, v2, Lio/appmetrica/analytics/impl/m9;->b:Lio/appmetrica/analytics/impl/l9;

    iget v3, v3, Lio/appmetrica/analytics/impl/l9;->c:I

    .line 36
    sget-object v4, Lio/appmetrica/analytics/impl/Cf;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/zk;

    if-nez v3, :cond_0

    .line 37
    sget-object v3, Lio/appmetrica/analytics/impl/zk;->b:Lio/appmetrica/analytics/impl/zk;

    .line 38
    :cond_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/mh;->e:Lio/appmetrica/analytics/impl/S6;

    .line 39
    iget v7, v3, Lio/appmetrica/analytics/impl/zk;->a:I

    .line 40
    iget-object v3, v2, Lio/appmetrica/analytics/impl/m9;->c:[Lio/appmetrica/analytics/impl/k9;

    array-length v8, v3

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lio/appmetrica/analytics/impl/S6;->a(JIIZ)V

    .line 41
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Cf;->a(Lio/appmetrica/analytics/impl/m9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/mh;->e:Lio/appmetrica/analytics/impl/S6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    .line 43
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->j:Lio/appmetrica/analytics/impl/vk;

    .line 44
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/vk;->a()J

    move-result-wide v0

    .line 45
    iget-object p0, p1, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 46
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 47
    :try_start_2
    sget-object p0, Lio/appmetrica/analytics/impl/J5;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 48
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/S6;->c()V

    .line 49
    :cond_2
    iget-object p0, p1, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 50
    const-string v2, "sessions"

    sget-object v3, Lio/appmetrica/analytics/impl/H5;->c:Ljava/lang/String;

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_1
    :cond_3
    iget-object p0, p1, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2
    move-exception p0

    .line 54
    monitor-exit v0

    throw p0
.end method

.method public final description()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportTask_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f5;->b:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFullUrlFormer()Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    return-object p0
.end method

.method public final getRequestDataHolder()Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->r:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    return-object p0
.end method

.method public final getResponseDataHolder()Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    return-object p0
.end method

.method public final getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->y()Lio/appmetrica/analytics/impl/V2;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/cl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateTask()Z
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lio/appmetrica/analytics/impl/H5;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :cond_1
    invoke-static {v3}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-object v3, v2

    :catchall_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    invoke-static {v3}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/mh;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v1, "report_request_parameters"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_3
    new-instance v1, Lio/appmetrica/analytics/impl/lb;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/lb;-><init>(Ljava/lang/String;)V

    new-instance v0, Lio/appmetrica/analytics/impl/t7;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/t7;-><init>(Lio/appmetrica/analytics/impl/lb;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/mh;->c:Lio/appmetrica/analytics/impl/t7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->o:Lio/appmetrica/analytics/impl/Rg;

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Rg;->c:Lio/appmetrica/analytics/impl/t7;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    new-instance v0, Lio/appmetrica/analytics/impl/t7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/t7;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/mh;->c:Lio/appmetrica/analytics/impl/t7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->o:Lio/appmetrica/analytics/impl/Rg;

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Rg;->c:Lio/appmetrica/analytics/impl/t7;

    goto :goto_3

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/t7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/t7;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/mh;->c:Lio/appmetrica/analytics/impl/t7;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->o:Lio/appmetrica/analytics/impl/Rg;

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Rg;->c:Lio/appmetrica/analytics/impl/t7;

    :goto_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->q:Lio/appmetrica/analytics/impl/Db;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Db;->a()Lio/appmetrica/analytics/impl/ch;

    move-result-object v0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ch;->w:Ljava/util/List;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    iget-object v4, p0, Lio/appmetrica/analytics/impl/mh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/ch;->q:Ljava/util/List;

    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->setHosts(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ch;->t()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lio/appmetrica/analytics/impl/mh;->p:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->getAllHosts()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    iput-object v2, p0, Lio/appmetrica/analytics/impl/mh;->f:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mh;->a(Lio/appmetrica/analytics/impl/ch;)Lio/appmetrica/analytics/impl/lh;

    move-result-object v2

    iput-object v2, p0, Lio/appmetrica/analytics/impl/mh;->j:Lio/appmetrica/analytics/impl/lh;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/lh;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/mh;->m:Lio/appmetrica/analytics/impl/Un;

    monitor-enter v2

    :try_start_4
    iget-object v3, v2, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "report_request_id"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v2

    const/4 v2, 0x1

    add-int/2addr v3, v2

    iput v3, p0, Lio/appmetrica/analytics/impl/mh;->v:I

    iget-object v4, p0, Lio/appmetrica/analytics/impl/mh;->o:Lio/appmetrica/analytics/impl/Rg;

    int-to-long v5, v3

    iput-wide v5, v4, Lio/appmetrica/analytics/impl/Rg;->e:J

    iget-object v3, p0, Lio/appmetrica/analytics/impl/mh;->j:Lio/appmetrica/analytics/impl/lh;

    invoke-virtual {p0, v3, v1, v0}, Lio/appmetrica/analytics/impl/mh;->a(Lio/appmetrica/analytics/impl/lh;Ljava/util/List;Lio/appmetrica/analytics/impl/ch;)Lio/appmetrica/analytics/impl/p9;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/mh;->d:Lio/appmetrica/analytics/impl/p9;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->j:Lio/appmetrica/analytics/impl/lh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/lh;->b:Ljava/util/List;

    iput-object v1, p0, Lio/appmetrica/analytics/impl/mh;->f:Ljava/util/List;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->prepareAndSetPostData([B)Z

    return v2

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_8
    :goto_4
    return v3

    :catchall_4
    move-exception p0

    invoke-static {v3}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/S6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final onPerformRequest()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->onPerformRequest()V

    return-void
.end method

.method public final onPostRequestComplete(Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mh;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->s:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/mh;->a(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    move p1, v0

    :goto_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->j:Lio/appmetrica/analytics/impl/lh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/lh;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mh;->j:Lio/appmetrica/analytics/impl/lh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/lh;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/m9;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m9;->c:[Lio/appmetrica/analytics/impl/k9;

    array-length v2, v1

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    invoke-static {v4}, Lio/appmetrica/analytics/impl/Df;->a(Lio/appmetrica/analytics/impl/k9;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lio/appmetrica/analytics/impl/mh;->l:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onRequestComplete()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->t:Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/SendingDataTaskHelper;->isResponseValid()Z

    move-result p0

    return p0
.end method

.method public final onRequestError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final onShouldNotExecute()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/mh;->u:Z

    return-void
.end method

.method public final onSuccessfulTaskFinished()V
    .locals 0

    return-void
.end method

.method public final onTaskAdded()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast p0, Lio/appmetrica/analytics/impl/x5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onTaskFinished()V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/S6;->h:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ch;

    iget-wide v1, v1, Lio/appmetrica/analytics/impl/ch;->v:J

    iget-object v3, v0, Lio/appmetrica/analytics/impl/S6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/S6;->c:Lio/appmetrica/analytics/impl/f7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/S6;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/S6;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/S6;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/W8;

    invoke-interface {v2}, Lio/appmetrica/analytics/impl/W8;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/S6;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast p0, Lio/appmetrica/analytics/impl/x5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onTaskRemoved()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast v0, Lio/appmetrica/analytics/impl/x5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/mh;->u:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mh;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->p:Lio/appmetrica/analytics/impl/w9;

    check-cast p0, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/x5;->d()V

    :cond_0
    return-void
.end method

.method public final onUnsuccessfulTaskFinished()V
    .locals 0

    return-void
.end method
