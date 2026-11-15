.class public final Lio/appmetrica/analytics/impl/Yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Oc;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tn;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Tn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yj;->a:Lio/appmetrica/analytics/impl/Tn;

    const-string p1, "startup_state"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yj;->b:Ljava/lang/String;

    new-instance p1, Lio/appmetrica/analytics/impl/a;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a;->b()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a;->a()[B

    move-result-object p1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v2, v1, p1}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;-><init>(Ljava/lang/String;[B[B)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Yj;->c:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/Tn;Lio/appmetrica/analytics/impl/Kl;Lio/appmetrica/analytics/impl/Fb;)V
    .locals 2

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tn;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Fb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Fb;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Tn;->a(Ljava/lang/String;)V

    .line 23
    :cond_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Fb;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Fb;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Tn;->b(Ljava/lang/String;)V

    .line 25
    :cond_1
    iget-object p0, p2, Lio/appmetrica/analytics/impl/Fb;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 26
    iget-object p0, p2, Lio/appmetrica/analytics/impl/Fb;->a:Ljava/lang/String;

    .line 27
    iput-object p0, p1, Lio/appmetrica/analytics/impl/Kl;->a:Ljava/lang/String;

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)Lio/appmetrica/analytics/impl/Fb;
    .locals 10

    const-string v0, "value"

    const/4 v1, 0x0

    .line 29
    :try_start_0
    const-string v3, "binary_data"

    .line 30
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 31
    const-string v5, "data_key = ?"

    .line 32
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Yj;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 33
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 34
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 36
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yj;->c:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;->decrypt([B)[B

    move-result-object p0

    .line 37
    new-instance v0, Lio/appmetrica/analytics/impl/Fb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Fb;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Fb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/io/CloseableUtilsKt;->closeSafely(Landroid/database/Cursor;)V

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 39
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-object p1, v1

    .line 40
    :catchall_1
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/io/CloseableUtilsKt;->closeSafely(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g7;->h()Lio/appmetrica/analytics/impl/f7;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f7;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Yj;->a(Landroid/database/sqlite/SQLiteDatabase;)Lio/appmetrica/analytics/impl/Fb;

    move-result-object v0

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/Kl;

    new-instance v2, Lio/appmetrica/analytics/impl/A4;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/A4;-><init>()V

    .line 4
    new-instance v3, Lio/appmetrica/analytics/impl/C4;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/C4;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    .line 5
    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yj;->a:Lio/appmetrica/analytics/impl/Tn;

    invoke-static {p0, v1, v0}, Lio/appmetrica/analytics/impl/Yj;->a(Lio/appmetrica/analytics/impl/Tn;Lio/appmetrica/analytics/impl/Kl;Lio/appmetrica/analytics/impl/Fb;)V

    .line 7
    iget-boolean p0, v0, Lio/appmetrica/analytics/impl/Fb;->c:Z

    .line 8
    iput-boolean p0, v1, Lio/appmetrica/analytics/impl/Kl;->p:Z

    .line 9
    iget-object p0, v0, Lio/appmetrica/analytics/impl/Fb;->b:Ljava/lang/String;

    .line 10
    iput-object p0, v1, Lio/appmetrica/analytics/impl/Kl;->r:Ljava/lang/String;

    .line 11
    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/Ll;

    .line 12
    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    .line 13
    const-class v0, Lio/appmetrica/analytics/impl/Ll;

    .line 14
    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/tm;->d(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v1

    .line 16
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    .line 17
    invoke-interface {p1, p0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
