.class public Lcom/aliyun/player/nativeclass/JniSaasPlayer;
.super Lcom/aliyun/player/nativeclass/JniUrlPlayer;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JniSaasPlayer"


# instance fields
.field private mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 6
    .line 7
    return-void
.end method

.method public static loadClass()V
    .locals 0

    .line 1
    return-void
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/LiveSts;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/VidAuth;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/VidMps;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/VidSts;)V
.end method

.method private native nUpdateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
.end method

.method private native nUpdateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
.end method


# virtual methods
.method protected onVerifyAuthCallback(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/aliyun/player/source/VidAuth;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method protected onVerifyStsCallback(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/aliyun/player/source/StsInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public setDataSource(Lcom/aliyun/player/source/LiveSts;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/LiveSts;)V

    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/VidAuth;)V

    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidMps;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/VidMps;)V

    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nSetDataSource(Lcom/aliyun/player/source/VidSts;)V

    return-void
.end method

.method public setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 2
    .line 3
    return-void
.end method

.method public updateStsInfo(Lcom/aliyun/player/source/StsInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nUpdateStsInfo(Lcom/aliyun/player/source/StsInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateVidAuth(Lcom/aliyun/player/source/VidAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->nUpdateVidAuth(Lcom/aliyun/player/source/VidAuth;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
