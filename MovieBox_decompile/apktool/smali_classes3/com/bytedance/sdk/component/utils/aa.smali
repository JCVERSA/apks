.class public Lcom/bytedance/sdk/component/utils/aa;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Sj:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    move-object p2, v0

    .line 9
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/utils/aa;->sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sput-object p0, Lcom/bytedance/sdk/component/utils/aa;->Sj:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/component/utils/aa;->Sj:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/util/Locale;

    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
