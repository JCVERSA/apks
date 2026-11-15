.class public Lcom/transsion/playercommon/data/Speed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private spS:Ljava/lang/String;

.field private spV:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/data/Speed;->spS:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/playercommon/data/Speed;->spV:F

    return-void
.end method


# virtual methods
.method public getSpS()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/Speed;->spS:Ljava/lang/String;

    return-object p0
.end method

.method public getSpV()F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/Speed;->spV:F

    return p0
.end method

.method public setSpS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/Speed;->spS:Ljava/lang/String;

    return-void
.end method

.method public setSpV(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/Speed;->spV:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Speed{spS=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/data/Speed;->spS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", spV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/playercommon/data/Speed;->spV:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
