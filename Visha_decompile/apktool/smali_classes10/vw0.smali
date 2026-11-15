.class public final Lvw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:S

.field public b:S

.field public c:S

.field public d:Z

.field public e:S

.field public f:S

.field public g:S

.field public h:I


# direct methods
.method public constructor <init>(SSS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lvw0;->a:S

    iput-short p2, p0, Lvw0;->b:S

    iput-short p3, p0, Lvw0;->c:S

    const/4 p1, 0x0

    iput-boolean p1, p0, Lvw0;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-boolean p0, p0, Lvw0;->d:Z

    if-nez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public b(SSSI)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvw0;->d:Z

    iput-short p1, p0, Lvw0;->e:S

    iput-short p2, p0, Lvw0;->f:S

    iput-short p3, p0, Lvw0;->g:S

    iput p4, p0, Lvw0;->h:I

    return-void
.end method

.method public c([BI)I
    .locals 1

    iget-short v0, p0, Lvw0;->c:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lvw0;->a:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lvw0;->b:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-boolean v0, p0, Lvw0;->d:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lvw0;->e:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lvw0;->f:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lvw0;->g:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget p0, p0, Lvw0;->h:I

    invoke-static {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p0

    :goto_0
    return p0
.end method
