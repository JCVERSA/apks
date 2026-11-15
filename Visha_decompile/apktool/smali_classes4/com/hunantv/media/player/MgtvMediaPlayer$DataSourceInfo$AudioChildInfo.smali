.class public Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioChildInfo"
.end annotation


# instance fields
.field private bitdepth:I

.field private bitrateMode:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private codecname:Ljava/lang/String;

.field private drmFlag:I

.field private fileEx:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private licenseUrl:Ljava/lang/String;

.field private samplingrate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->licenseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitdepth()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->bitdepth:I

    return p0
.end method

.method public getBitrateMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->bitrateMode:Ljava/lang/String;

    return-object p0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->channels:Ljava/lang/String;

    return-object p0
.end method

.method public getCodecname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->codecname:Ljava/lang/String;

    return-object p0
.end method

.method public getDrmFlag()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->drmFlag:I

    return p0
.end method

.method public getFileEx()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->fileEx:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->fileSize:Ljava/lang/String;

    return-object p0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->licenseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSamplingrate()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->samplingrate:I

    return p0
.end method

.method public setBitdepth(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->bitdepth:I

    return-object p0
.end method

.method public setBitrateMode(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->bitrateMode:Ljava/lang/String;

    return-object p0
.end method

.method public setChannels(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->channels:Ljava/lang/String;

    return-object p0
.end method

.method public setCodecname(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->codecname:Ljava/lang/String;

    return-object p0
.end method

.method public setDrmFlag(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->drmFlag:I

    return-object p0
.end method

.method public setFileEx(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->fileEx:Ljava/lang/String;

    return-object p0
.end method

.method public setFileSize(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->fileSize:Ljava/lang/String;

    return-object p0
.end method

.method public setLicenseUrl(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->licenseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSamplingrate(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->samplingrate:I

    return-object p0
.end method
