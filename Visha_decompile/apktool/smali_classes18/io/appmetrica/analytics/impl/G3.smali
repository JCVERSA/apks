.class public final Lio/appmetrica/analytics/impl/G3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Le;

.field public final c:Ljava/lang/String;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Le;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G3;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/G3;->b:Lio/appmetrica/analytics/impl/Le;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/G3;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/G3;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/G3;->b:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Le;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1c

    :try_start_0
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/G3;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/G3;->a:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/G3;->c:Ljava/lang/String;

    const/high16 v4, 0x8000000

    invoke-virtual {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/G3;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/G3;->a:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/G3;->c:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->formatSha1([B)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G3;->b:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Le;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Le;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    :cond_4
    return-object v0
.end method
