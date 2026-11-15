.class public final Lww0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:S

.field public d:S

.field public e:S

.field public f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lww0;->a:Ljava/lang/String;

    iput-short p2, p0, Lww0;->c:S

    iput-object p3, p0, Lww0;->b:Ljava/lang/String;

    iput-short p4, p0, Lww0;->d:S

    iput-short p5, p0, Lww0;->e:S

    return-void
.end method


# virtual methods
.method public a()S
    .locals 0

    iget-short p0, p0, Lww0;->e:S

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lww0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lww0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lww0;->f:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public e([B)V
    .locals 0

    iput-object p1, p0, Lww0;->f:[B

    return-void
.end method

.method public f([BI)I
    .locals 3

    iget-short v0, p0, Lww0;->e:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lww0;->c:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lww0;->d:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lww0;->f:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lww0;->f:[B

    array-length p0, p0

    add-int/2addr p2, p0

    return p2
.end method
