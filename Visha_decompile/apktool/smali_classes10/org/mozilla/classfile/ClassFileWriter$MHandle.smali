.class public final Lorg/mozilla/classfile/ClassFileWriter$MHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MHandle"
.end annotation


# instance fields
.field final desc:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final owner:Ljava/lang/String;

.field final tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    iput-object p2, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    iget-byte v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    iget-byte v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-byte v0, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;->tag:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
