.class public Lcom/transsion/playercommon/data/PopLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xc69950f19d519dL


# instance fields
.field public lastPopTime:J

.field public popCycle:I

.field public popTimes:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastPopTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/playercommon/data/PopLogic;->lastPopTime:J

    return-wide v0
.end method

.method public getPopCycle()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/PopLogic;->popCycle:I

    return p0
.end method

.method public getPopTimes()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    return p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/PopLogic;->version:I

    return p0
.end method

.method public setLastPopTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/playercommon/data/PopLogic;->lastPopTime:J

    return-void
.end method

.method public setPopCycle(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/PopLogic;->popCycle:I

    return-void
.end method

.method public setPopTimes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/PopLogic;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopLogic{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/data/PopLogic;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", popCycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/data/PopLogic;->popCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", popTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastPopTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/playercommon/data/PopLogic;->lastPopTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
