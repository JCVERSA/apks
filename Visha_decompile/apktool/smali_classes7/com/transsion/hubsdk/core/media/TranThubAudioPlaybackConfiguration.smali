.class public Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAudioPlaybackConfiguration"


# instance fields
.field private mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    return-void
.end method


# virtual methods
.method public getClientUid(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;->getClientUid(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPlayerInterfaceId(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;->getPlayerInterfaceId(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPlayerState(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;->getPlayerState(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPlayerType(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;->getPlayerType(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public isActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;->mService:Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;->isActive(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result p0

    return p0
.end method

.method public toLogFriendlyPlayerType(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/media/TranAudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
