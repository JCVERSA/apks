.class public Ltod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dup:Z

.field private messageId:I

.field private mutable:Z

.field private payload:[B

.field private qos:I

.field private retained:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltod;->mutable:Z

    iput v0, p0, Ltod;->qos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltod;->retained:Z

    iput-boolean v0, p0, Ltod;->dup:Z

    invoke-virtual {p0, p1}, Ltod;->setPayload([B)V

    return-void
.end method

.method public static validateQos(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public checkMutable()V
    .locals 0

    iget-boolean p0, p0, Ltod;->mutable:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public clearPayload()V
    .locals 1

    invoke-virtual {p0}, Ltod;->checkMutable()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ltod;->payload:[B

    return-void
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Ltod;->messageId:I

    return p0
.end method

.method public getPayload()[B
    .locals 0

    iget-object p0, p0, Ltod;->payload:[B

    return-object p0
.end method

.method public getQos()I
    .locals 0

    iget p0, p0, Ltod;->qos:I

    return p0
.end method

.method public isDuplicate()Z
    .locals 0

    iget-boolean p0, p0, Ltod;->dup:Z

    return p0
.end method

.method public isRetained()Z
    .locals 0

    iget-boolean p0, p0, Ltod;->retained:Z

    return p0
.end method

.method public setDuplicate(Z)V
    .locals 0

    iput-boolean p1, p0, Ltod;->dup:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Ltod;->messageId:I

    return-void
.end method

.method public setMutable(Z)V
    .locals 0

    iput-boolean p1, p0, Ltod;->mutable:Z

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    invoke-virtual {p0}, Ltod;->checkMutable()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Ltod;->payload:[B

    return-void
.end method

.method public setQos(I)V
    .locals 0

    invoke-virtual {p0}, Ltod;->checkMutable()V

    invoke-static {p1}, Ltod;->validateQos(I)V

    iput p1, p0, Ltod;->qos:I

    return-void
.end method

.method public setRetained(Z)V
    .locals 0

    invoke-virtual {p0}, Ltod;->checkMutable()V

    iput-boolean p1, p0, Ltod;->retained:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Ltod;->payload:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
