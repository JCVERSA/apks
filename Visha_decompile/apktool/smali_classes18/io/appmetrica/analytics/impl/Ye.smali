.class public final Lio/appmetrica/analytics/impl/Ye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ki;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ye;->a:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "content://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ye;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/preload_info"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ye;->b:Ljava/lang/String;

    const-string p1, "tracking_id"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ye;->c:Ljava/lang/String;

    const-string p1, "additional_parameters"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ye;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yandex.preinstallsatellite.appmetrica.provider"

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/ff;
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ye;->a:Landroid/content/Context;

    const-string v1, "com.yandex.preinstallsatellite.appmetrica.provider"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->hasContentProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Satellite content provider with preload info was not found."

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/Vi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ye;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ye;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ye;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ye;->d:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_2

    :cond_2
    :goto_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v6, p0

    goto :goto_2

    :catchall_0
    :try_start_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/parsing/ParseUtils;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const-string p0, "Tracking id from Satellite is not a number."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lio/appmetrica/analytics/impl/Vi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    :goto_3
    const-string p0, "Preload info from Satellite: {tracking id = %s, additional parameters = %s}"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lio/appmetrica/analytics/impl/Vi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/impl/ff;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    sget-object v9, Lio/appmetrica/analytics/impl/X7;->d:Lio/appmetrica/analytics/impl/X7;

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/ff;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLio/appmetrica/analytics/impl/X7;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    return-object p0

    :cond_5
    :try_start_4
    const-string p0, "No Preload Info data in Satellite content provider"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lio/appmetrica/analytics/impl/Vi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    const-string p0, "No Satellite content provider found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lio/appmetrica/analytics/impl/Vi;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_1
    move-object v0, v1

    :catchall_2
    :goto_4
    invoke-static {v0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ye;->b()Lio/appmetrica/analytics/impl/ff;

    move-result-object p0

    return-object p0
.end method
