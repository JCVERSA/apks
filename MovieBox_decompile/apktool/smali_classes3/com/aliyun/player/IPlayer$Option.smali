.class public Lcom/aliyun/player/IPlayer$Option;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static AudioBitrate:Lcom/aliyun/player/IPlayer$Option;

.field public static DownloadBitrate:Lcom/aliyun/player/IPlayer$Option;

.field public static RenderFPS:Lcom/aliyun/player/IPlayer$Option;

.field public static VideoBitrate:Lcom/aliyun/player/IPlayer$Option;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/aliyun/player/IPlayer$Option;

    .line 2
    .line 3
    const-string v1, "renderFps"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/aliyun/player/IPlayer$Option;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/aliyun/player/IPlayer$Option;->RenderFPS:Lcom/aliyun/player/IPlayer$Option;

    .line 9
    .line 10
    new-instance v0, Lcom/aliyun/player/IPlayer$Option;

    .line 11
    .line 12
    const-string v1, "downloadBitrate"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/aliyun/player/IPlayer$Option;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/aliyun/player/IPlayer$Option;->DownloadBitrate:Lcom/aliyun/player/IPlayer$Option;

    .line 18
    .line 19
    new-instance v0, Lcom/aliyun/player/IPlayer$Option;

    .line 20
    .line 21
    const-string v1, "videoBitrate"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/aliyun/player/IPlayer$Option;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/aliyun/player/IPlayer$Option;->VideoBitrate:Lcom/aliyun/player/IPlayer$Option;

    .line 27
    .line 28
    new-instance v0, Lcom/aliyun/player/IPlayer$Option;

    .line 29
    .line 30
    const-string v1, "audioBitrate"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/aliyun/player/IPlayer$Option;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/aliyun/player/IPlayer$Option;->AudioBitrate:Lcom/aliyun/player/IPlayer$Option;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/aliyun/player/IPlayer$Option;->mValue:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/IPlayer$Option;->mValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
