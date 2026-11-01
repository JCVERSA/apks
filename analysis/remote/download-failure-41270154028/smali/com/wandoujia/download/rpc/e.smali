.class public Lcom/wandoujia/download/rpc/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/e$a;,
        Lcom/wandoujia/download/rpc/e$b;
    }
.end annotation


# static fields
.field public static final c:Landroid/content/UriMatcher;

.field public static final d:[Ljava/lang/String;

.field public static e:Ljava/util/HashSet;

.field public static f:Lcom/wandoujia/download/rpc/e;


# instance fields
.field public a:Landroid/database/sqlite/SQLiteOpenHelper;

.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/wandoujia/download/rpc/e;->c:Landroid/content/UriMatcher;

    sget-object v1, Lcom/wandoujia/download/rpc/DownloadConstants;->a:Ljava/lang/String;

    const-string v2, "downloads"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloads/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v44, "is_download_with_multi_thread"

    const-string v45, "downloaded_sections"

    const-string v4, "_id"

    const-string v5, "uri"

    const-string v6, "current_bytes"

    const-string v7, "description"

    const-string v8, "destination"

    const-string v9, "filename"

    const-string v10, "visible"

    const-string v11, "lastmod"

    const-string v12, "mimetype"

    const-string v13, "_data"

    const-string v14, "notification_class"

    const-string v15, "notification_extras"

    const-string v16, "resource_type"

    const-string v17, "resource_extras"

    const-string v18, "status"

    const-string v19, "resouce_identity"

    const-string v20, "no_integrity"

    const-string v21, "title"

    const-string v22, "failed_times"

    const-string v23, "total_bytes"

    const-string v24, "use_agent"

    const-string v25, "etag"

    const-string v26, "source"

    const-string v27, "headers"

    const-string v28, "headers_list"

    const-string v29, "check_size"

    const-string v30, "icon_url"

    const-string v31, "duration"

    const-string v32, "allowed_download_without_wifi"

    const-string v33, "retried_urls"

    const-string v34, "segment_config"

    const-string v35, "last_url_retried_times"

    const-string v36, "dservice_urls"

    const-string v37, "md5_checksum"

    const-string v38, "md5_state"

    const-string v39, "last_url_retried_times"

    const-string v40, "speed_limit"

    const-string v41, "speed"

    const-string v42, "verify_type"

    const-string v43, "verify_value"

    filled-new-array/range {v4 .. v45}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/rpc/e;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/wandoujia/download/rpc/e;->e:Ljava/util/HashSet;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/wandoujia/download/rpc/e;->d:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/wandoujia/download/rpc/e;->e:Ljava/util/HashSet;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/e;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/e;->b:Landroid/content/Context;

    new-instance v0, Lcom/wandoujia/download/rpc/e$a;

    invoke-direct {v0, p1}, Lcom/wandoujia/download/rpc/e$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/e;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method public static final a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;
    .locals 2

    const-class v0, Lcom/wandoujia/download/rpc/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wandoujia/download/rpc/e;->f:Lcom/wandoujia/download/rpc/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/wandoujia/download/rpc/e;

    invoke-direct {v1, p0}, Lcom/wandoujia/download/rpc/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/wandoujia/download/rpc/e;->f:Lcom/wandoujia/download/rpc/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/wandoujia/download/rpc/e;->f:Lcom/wandoujia/download/rpc/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public f(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/wandoujia/download/rpc/e;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download/rpc/e;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot delete URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/wandoujia/download/rpc/e;->i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lo/mp7;

    move-result-object p1

    :try_start_0
    const-string p2, "downloads"

    invoke-virtual {p1}, Lo/mp7;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lo/mp7;->b()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final g(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lo/mp7;
    .locals 1

    new-instance v0, Lo/mp7;

    invoke-direct {v0}, Lo/mp7;-><init>()V

    invoke-virtual {v0, p2, p3}, Lo/mp7;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x2

    if-ne p4, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/e;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "_id = ?"

    invoke-virtual {v0, p2, p1}, Lo/mp7;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public j(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    iget-object v0, p0, Lcom/wandoujia/download/rpc/e;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download/rpc/e;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "uri"

    invoke-static {v4, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v4, "filename"

    invoke-static {v4, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v4, "mimetype"

    invoke-static {v4, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v4, "no_integrity"

    invoke-static {v4, p2, v3}, Lcom/wandoujia/download/rpc/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v4, "_data"

    invoke-static {v4, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v5, "allowed_download_without_wifi"

    invoke-static {v5, p2, v3}, Lcom/wandoujia/download/rpc/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/download/utils/StorageUtil;->n(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v2, v5

    invoke-static {}, Lo/sq5;->c()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/wandoujia/download/utils/StorageUtil;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/download/rpc/e;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string v7, "need WRITE_EXTERNAL_STORAGE permission to use DESTINATION_FILE_URI"

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v8, v4, v5, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    const-string v2, "destination"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "status"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "visible"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "resouce_identity"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "notification_class"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "dservice_urls"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "segment_config"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "md5_checksum"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "md5_state"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "notification_extras"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "source"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "headers"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "headers_list"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "check_size"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "duration"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "icon_url"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "use_agent"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "title"

    const-string v4, ""

    invoke-static {v2, p2, v3, v4}, Lcom/wandoujia/download/rpc/e;->e(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "description"

    invoke-static {v2, p2, v3, v4}, Lcom/wandoujia/download/rpc/e;->e(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "retried_urls"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "last_url_retried_times"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "total_bytes"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "current_bytes"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "resource_type"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "resource_extras"

    invoke-static {v2, p2, v3, v4}, Lcom/wandoujia/download/rpc/e;->e(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "speed_limit"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "speed"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->c(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "verify_type"

    invoke-static {v2, p2, v3, v4}, Lcom/wandoujia/download/rpc/e;->e(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "verify_value"

    invoke-static {v2, p2, v3, v4}, Lcom/wandoujia/download/rpc/e;->e(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v2, "is_download_with_multi_thread"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->b(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "downloaded_sections"

    invoke-static {v2, p2, v3}, Lcom/wandoujia/download/rpc/e;->d(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    :try_start_0
    const-string p2, "downloads"

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v2, -0x1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/wandoujia/download/rpc/e;->k(Landroid/net/Uri;I)V

    sget-object p1, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown/Invalid URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(Landroid/net/Uri;I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/e;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/de5;->e(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    sget-object p2, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/wandoujia/download/rpc/e;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lo/c51;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public l(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    iget-object v0, p0, Lcom/wandoujia/download/rpc/e;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v0, Lcom/wandoujia/download/rpc/e;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/wandoujia/download/rpc/e;->i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lo/mp7;

    move-result-object p3

    if-nez p2, :cond_1

    sget-object p2, Lcom/wandoujia/download/rpc/e;->d:[Ljava/lang/String;

    :cond_0
    move-object v3, p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_0

    sget-object v0, Lcom/wandoujia/download/rpc/e;->e:Ljava/util/HashSet;

    aget-object v2, p2, p4

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "column "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, p4

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed in queries"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    invoke-virtual {p3}, Lo/mp7;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lo/mp7;->b()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "downloads"

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p3, Lcom/wandoujia/download/rpc/e$b;

    invoke-direct {p3, p0, p2}, Lcom/wandoujia/download/rpc/e$b;-><init>(Lcom/wandoujia/download/rpc/e;Landroid/database/Cursor;)V

    move-object p2, p3

    :cond_3
    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/wandoujia/download/rpc/e;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_4
    return-object p2

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public m(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/e;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/wandoujia/download/rpc/e;->c:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot update URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p3, p4, v2}, Lcom/wandoujia/download/rpc/e;->i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lo/mp7;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p4

    if-lez p4, :cond_3

    :try_start_1
    const-string p4, "downloads"

    invoke-virtual {p3}, Lo/mp7;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lo/mp7;->b()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v2}, Lcom/wandoujia/download/rpc/e;->k(Landroid/net/Uri;I)V

    return v1
.end method
