.class public Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;
.super Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
.source "SourceFile"


# instance fields
.field private md5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;->md5:Ljava/lang/String;

    return-void
.end method
