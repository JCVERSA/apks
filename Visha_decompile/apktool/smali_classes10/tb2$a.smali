.class public Ltb2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lsb2;

.field public final b:I


# direct methods
.method public constructor <init>(Lsb2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb2$a;->a:Lsb2;

    iput p2, p0, Ltb2$a;->b:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    iget-object v0, p0, Ltb2$a;->a:Lsb2;

    invoke-interface {v0}, Lsb2;->g()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Ltb2$a;->a:Lsb2;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lsb2;->a([BI)I

    iget v1, p0, Ltb2$a;->b:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Ltb2$a;->b:I

    return p0
.end method

.method public b(B)V
    .locals 0

    iget-object p0, p0, Ltb2$a;->a:Lsb2;

    invoke-interface {p0, p1}, Lsb2;->b(B)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltb2$a;->a:Lsb2;

    invoke-interface {v1}, Lsb2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ltb2$a;->b:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Ltb2$a;->b:I

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Ltb2$a;->a:Lsb2;

    invoke-interface {p0}, Lsb2;->reset()V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Ltb2$a;->a:Lsb2;

    invoke-interface {p0, p1, p2, p3}, Lsb2;->update([BII)V

    return-void
.end method
