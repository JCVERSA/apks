.class public Lcom/mgmi/ads/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/ads/api/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "Adx"

    const-string v0, "Adx create"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/b;
    .locals 2

    .line 3
    sget-object v0, Lcom/mgmi/ads/api/b;->a:Lcom/mgmi/ads/api/b;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/mgmi/ads/api/b;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/b;->a:Lcom/mgmi/ads/api/b;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/mgmi/ads/api/b;

    invoke-direct {v1}, Lcom/mgmi/ads/api/b;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/b;->a:Lcom/mgmi/ads/api/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/ads/api/b;->a:Lcom/mgmi/ads/api/b;

    return-object v0
.end method

.method private b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_NOFITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 10
    new-instance p0, Lcom/mgmi/ads/api/a/l;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 11
    :cond_0
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_BANNER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12
    new-instance p0, Lcom/mgmi/ads/api/a/l;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 13
    :cond_1
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_ONLINE_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_OFFVIDEO_ONLINE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ADS_BOOT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 15
    invoke-static {p1}, Lh2d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 16
    new-instance p1, Lcom/mgmi/ads/api/a/f;

    invoke-direct {p1, p0}, Lcom/mgmi/ads/api/a/f;-><init>(Landroid/app/Activity;)V

    return-object p1

    :cond_3
    return-object v0

    .line 17
    :cond_4
    const-string p0, "ADS_TYPE_INSIDE_BANNER"

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 18
    new-instance p0, Lcom/mgmi/ads/api/a/l;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_5
    return-object v0

    .line 19
    :cond_6
    :goto_0
    new-instance p0, Lcom/mgmi/ads/api/a/m;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/m;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/ads/api/b;->b:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lcom/mgmi/ads/api/b;->b()V

    return-void
.end method
