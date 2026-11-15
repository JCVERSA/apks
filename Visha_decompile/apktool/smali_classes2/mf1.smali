.class public final Lmf1;
.super Llf1;
.source "SourceFile"

# interfaces
.implements Lma9;


# direct methods
.method public constructor <init>(JJLur6$a;Z)V
    .locals 8

    iget v5, p5, Lur6$a;->f:I

    iget v6, p5, Lur6$a;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Llf1;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Llf1;->b(J)J

    move-result-wide p0

    return-wide p0
.end method
