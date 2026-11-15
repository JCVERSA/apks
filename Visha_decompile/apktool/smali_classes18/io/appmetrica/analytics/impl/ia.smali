.class public final Lio/appmetrica/analytics/impl/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ia;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ia;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ia;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ia;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/ia;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ia;->b:Ljava/lang/String;

    invoke-static {v2, p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromAppStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->copyToNullable(Ljava/io/File;Ljava/io/File;)Z

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-static {v1, v0, p0, v0}, Ldv3;->d(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ia;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ia;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Ldv3;->g(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
