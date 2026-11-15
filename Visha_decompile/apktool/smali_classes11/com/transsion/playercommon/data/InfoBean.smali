.class public Lcom/transsion/playercommon/data/InfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private duration:J

.field private multiLines:Z

.field private nameId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/playercommon/data/InfoBean;->nameId:I

    iput-object p2, p0, Lcom/transsion/playercommon/data/InfoBean;->content:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/playercommon/data/InfoBean;->duration:J

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/InfoBean;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/playercommon/data/InfoBean;->duration:J

    return-wide v0
.end method

.method public getNameId()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/InfoBean;->nameId:I

    return p0
.end method

.method public isMultiLines()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/InfoBean;->multiLines:Z

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/InfoBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/playercommon/data/InfoBean;->duration:J

    return-void
.end method

.method public setFileName(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/InfoBean;->nameId:I

    return-void
.end method

.method public setMultiLines(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/InfoBean;->multiLines:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InfoBean{nameId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/data/InfoBean;->nameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/data/InfoBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/playercommon/data/InfoBean;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
