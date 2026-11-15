.class public Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/ITrackInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranTrackInfo"
.end annotation


# instance fields
.field private mLanguage:Ljava/lang/String;

.field private mTrackType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mTrackType:I

    const-string v0, "und"

    iput-object v0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/transsion/tranplayer/IMediaFormat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mTrackType:I

    const-string v2, ", "

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 p0, 0x4

    if-eq v1, p0, :cond_0

    const-string p0, "UNKNOWN"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "SUBTITLE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "TIMEDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackType()I
    .locals 0

    iget p0, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mTrackType:I

    return p0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mLanguage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tranplayer/TranMediaPlayer$TranTrackInfo;->mTrackType:I

    return-void
.end method
