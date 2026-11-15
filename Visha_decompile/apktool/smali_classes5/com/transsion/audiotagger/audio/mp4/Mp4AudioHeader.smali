.class public Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;
.super Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
.source "SourceFile"


# instance fields
.field private brand:Ljava/lang/String;

.field private kind:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field private profile:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public getKind()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->kind:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-object p0
.end method

.method public getProfile()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->profile:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object p0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->brand:Ljava/lang/String;

    return-void
.end method

.method public setKind(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->kind:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-void
.end method

.method public setProfile(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AudioHeader;->profile:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-void
.end method
