.class public Lcom/transsion/sniffer_load/data/M3u8Extra;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bAudioOnly:Z

.field private img:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->img:Ljava/lang/String;

    return-object p0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->size:J

    return-wide v0
.end method

.method public isAudioOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->bAudioOnly:Z

    return p0
.end method

.method public setAudioOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->bAudioOnly:Z

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->img:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/sniffer_load/data/M3u8Extra;->size:J

    return-void
.end method
