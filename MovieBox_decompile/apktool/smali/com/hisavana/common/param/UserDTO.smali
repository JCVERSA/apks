.class public Lcom/hisavana/common/param/UserDTO;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private baseStation:Ljava/lang/String;

.field private coordTime:J

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBaseStation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/param/UserDTO;->baseStation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoordTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/common/param/UserDTO;->coordTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/common/param/UserDTO;->latitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/common/param/UserDTO;->longitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public setBaseStation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/param/UserDTO;->baseStation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCoordTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/common/param/UserDTO;->coordTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/common/param/UserDTO;->latitude:D

    .line 2
    .line 3
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/common/param/UserDTO;->longitude:D

    .line 2
    .line 3
    return-void
.end method
