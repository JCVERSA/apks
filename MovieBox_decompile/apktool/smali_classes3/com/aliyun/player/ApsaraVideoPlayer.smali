.class Lcom/aliyun/player/ApsaraVideoPlayer;
.super Lcom/aliyun/player/UrlVideoPlayer;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/AliPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;
    }
.end annotation


# instance fields
.field private mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

.field private mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/UrlVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 6
    .line 7
    new-instance p1, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;-><init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    .line 11
    .line 12
    return-object p1
.end method

.method private onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    .line 11
    .line 12
    return-object p1
.end method


# virtual methods
.method protected createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    .line 1
    new-instance v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;-><init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mInnerOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public invokeComponent(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->invokeComponent(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveSts;)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/LiveSts;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidAuth;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidMps;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidMps;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->setDataSource(Lcom/aliyun/player/source/VidSts;)V

    :cond_0
    return-void
.end method

.method public setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/ApsaraVideoPlayer;->mOutOnVerifyCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 2
    .line 3
    return-void
.end method

.method public updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
