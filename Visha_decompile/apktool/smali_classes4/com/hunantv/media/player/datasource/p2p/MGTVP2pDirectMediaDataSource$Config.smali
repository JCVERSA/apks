.class public Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field private static final MIN_TIMEOUT_US:I = 0x186a0


# instance fields
.field private connectTimeOutUs:I

.field private reciveDataTimeOutUs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xe4e1c0

    iput v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->connectTimeOutUs:I

    iput v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->reciveDataTimeOutUs:I

    return-void
.end method


# virtual methods
.method public getConnectTimeOutUs()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->connectTimeOutUs:I

    return p0
.end method

.method public getReciveDataTimeOutUs()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->reciveDataTimeOutUs:I

    return p0
.end method

.method public setConnectTimeOutUs(I)Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;
    .locals 1

    const v0, 0x186a0

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->connectTimeOutUs:I

    :cond_0
    return-object p0
.end method

.method public setReciveDataTimeOutUs(I)Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;
    .locals 1

    const v0, 0x186a0

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$Config;->reciveDataTimeOutUs:I

    :cond_0
    return-object p0
.end method
