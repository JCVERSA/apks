.class public abstract Lcom/cloud/hisavana/sdk/common/util/h0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p0, v1, :cond_1

    .line 25
    .line 26
    move v0, v1

    .line 27
    :cond_1
    return v0

    .line 28
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "StoreUtil"

    .line 33
    .line 34
    const-string v2, "canShowPsMark ads\u3001context\u3001adx.ext is null"

    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    const-string v0, "com.transsnet.store"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/h0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 2

    .line 1
    const-string v0, "com.transsnet.store"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/h0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x1c

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Lf7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 24
    .line 25
    int-to-long v0, p0

    .line 26
    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-string v0, "com.transsnet.store"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/h0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1c

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-lt v1, v2, :cond_2

    .line 17
    .line 18
    invoke-static {p0}, Lf7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/32 v4, 0x80389c

    .line 23
    .line 24
    .line 25
    cmp-long p0, v1, v4

    .line 26
    .line 27
    if-ltz p0, :cond_1

    .line 28
    .line 29
    move v0, v3

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 32
    .line 33
    const v1, 0x80389c

    .line 34
    .line 35
    .line 36
    if-lt p0, v1, :cond_3

    .line 37
    .line 38
    move v0, v3

    .line 39
    :cond_3
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/h0;->d(Landroid/content/Context;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x8c7da1

    .line 6
    .line 7
    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/h0;->d(Landroid/content/Context;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x80389c

    .line 6
    .line 7
    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method
