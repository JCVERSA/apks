.class public final Lfbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzae;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfbe;->a:I

    iput p3, p0, Lfbe;->b:I

    iput p4, p0, Lfbe;->c:I

    iput p5, p0, Lfbe;->d:I

    iput p6, p0, Lfbe;->e:I

    iput p7, p0, Lfbe;->f:I

    return-void
.end method

.method public static c(Lu4h;)Lfbe;
    .locals 8

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v2

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v3

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v5

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v6

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v7

    new-instance p0, Lfbe;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lfbe;-><init>(IIIIIII)V

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget p0, p0, Lfbe;->a:I

    const v0, 0x73646976

    if-eq p0, v0, :cond_2

    const v0, 0x73647561

    if-eq p0, v0, :cond_1

    const v0, 0x73747874

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AviStreamHeaderChunk"

    const-string v1, "Found unsupported streamType fourCC: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public final b()J
    .locals 12

    iget v0, p0, Lfbe;->b:I

    int-to-long v0, v0

    iget v2, p0, Lfbe;->c:I

    const-wide/32 v3, 0xf4240

    mul-long v7, v0, v3

    int-to-long v9, v2

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    iget p0, p0, Lfbe;->d:I

    int-to-long v5, p0

    invoke-static/range {v5 .. v11}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zza()I
    .locals 0

    const p0, 0x68727473

    return p0
.end method
