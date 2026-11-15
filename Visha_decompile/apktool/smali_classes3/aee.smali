.class public final Laee;
.super Ll8e;
.source "SourceFile"

# interfaces
.implements Leee;


# instance fields
.field public final g:J

.field public final h:I

.field public final i:I

.field public final j:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ll8e;-><init>(JJIIZ)V

    iput-wide p3, p0, Laee;->g:J

    iput p5, p0, Laee;->h:I

    iput p6, p0, Laee;->i:I

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p3

    :goto_0
    iput-wide p1, p0, Laee;->j:J

    return-void
.end method


# virtual methods
.method public final c(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Ll8e;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(J)Laee;
    .locals 8

    iget-wide v3, p0, Laee;->g:J

    iget v5, p0, Laee;->h:I

    iget v6, p0, Laee;->i:I

    new-instance p0, Laee;

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Laee;-><init>(JJIIZ)V

    return-object p0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Laee;->h:I

    return p0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Laee;->j:J

    return-wide v0
.end method
