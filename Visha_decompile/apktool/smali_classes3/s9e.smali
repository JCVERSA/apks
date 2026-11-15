.class public final Ls9e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu4h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Ls9e;->a:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Ld9e;Lzce;)Lhre;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Ls9e;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {p1, v4, v1, v5}, Ld9e;->i([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v1}, Lu4h;->l(I)V

    invoke-virtual {v3}, Lu4h;->I()I

    move-result v4

    const v6, 0x494433

    if-eq v4, v6, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lu4h;->m(I)V

    invoke-virtual {v3}, Lu4h;->F()I

    move-result v4

    add-int/lit8 v6, v4, 0xa

    if-nez v0, :cond_1

    new-array v0, v6, [B

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v3

    invoke-static {v3, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v0, v5, v4}, Ld9e;->i([BII)V

    new-instance v3, Lice;

    invoke-direct {v3}, Lice;-><init>()V

    invoke-static {v0, v6, p2, v3}, Lbde;->a([BILzce;Lice;)Lhre;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v4}, Ld9e;->zzg(I)V

    :goto_1
    add-int/2addr v2, v6

    goto :goto_0

    :catch_0
    :goto_2
    invoke-interface {p1}, Ld9e;->zzj()V

    invoke-interface {p1, v2}, Ld9e;->zzg(I)V

    return-object v0
.end method
