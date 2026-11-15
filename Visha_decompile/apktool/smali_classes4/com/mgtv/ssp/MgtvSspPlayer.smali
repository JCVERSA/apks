.class public Lcom/mgtv/ssp/MgtvSspPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static inst:Lcom/mgtv/ssp/MgtvSspPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/mgtv/ssp/MgtvSspPlayer;
    .locals 2

    sget-object v0, Lcom/mgtv/ssp/MgtvSspPlayer;->inst:Lcom/mgtv/ssp/MgtvSspPlayer;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgtv/ssp/MgtvSspPlayer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/MgtvSspPlayer;->inst:Lcom/mgtv/ssp/MgtvSspPlayer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/ssp/MgtvSspPlayer;

    invoke-direct {v1}, Lcom/mgtv/ssp/MgtvSspPlayer;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/MgtvSspPlayer;->inst:Lcom/mgtv/ssp/MgtvSspPlayer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/MgtvSspPlayer;->inst:Lcom/mgtv/ssp/MgtvSspPlayer;

    return-object v0
.end method


# virtual methods
.method public enterFeedChannel(Landroid/content/Context;Lcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Lcom/mgtv/ssp/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/a;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mgtv/ssp/a;->a(Landroid/content/Context;ILcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    return-void
.end method

.method public enterImmersionChannel(Landroid/content/Context;Lcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Lcom/mgtv/ssp/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/a;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mgtv/ssp/a;->a(Landroid/content/Context;ILcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    return-void
.end method

.method public enterPlayDetail(Landroid/app/Activity;Lcom/mgtv/ssp/auth/EntranceInfo;)V
    .locals 0

    new-instance p0, Lcom/mgtv/ssp/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/auth/EntranceInfo;)V

    return-void
.end method

.method public loadFeedView(Landroid/app/Activity;Lcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1

    new-instance p0, Lcom/mgtv/ssp/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/a;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mgtv/ssp/a;->a(Landroid/app/Activity;ILcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    return-void
.end method

.method public loadImmersionView(Landroid/app/Activity;Lcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1

    new-instance p0, Lcom/mgtv/ssp/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/a;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mgtv/ssp/a;->a(Landroid/app/Activity;ILcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    return-void
.end method
