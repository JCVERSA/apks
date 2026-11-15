.class public final Ltke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8e;


# instance fields
.field public final a:Lfch;

.field public final b:Lu4h;

.field public final c:I


# direct methods
.method public constructor <init>(ILfch;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltke;->c:I

    iput-object p2, p0, Ltke;->a:Lfch;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Ltke;->b:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Ld9e;J)Lg8e;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x1b8a0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v0, Ltke;->b:Lu4h;

    invoke-virtual {v4, v3}, Lu4h;->i(I)V

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v5, v6, v3}, Ld9e;->i([BII)V

    invoke-virtual {v4}, Lu4h;->x()I

    move-result v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, -0x1

    move-wide v11, v5

    move-wide v9, v7

    :goto_0
    invoke-virtual {v4}, Lu4h;->u()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_5

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v13

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v14

    invoke-static {v13, v14, v3}, Lele;->a([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-le v14, v3, :cond_0

    goto :goto_2

    :cond_0
    iget v7, v0, Ltke;->c:I

    invoke-static {v4, v13, v7}, Lele;->b(Lu4h;II)J

    move-result-wide v7

    cmp-long v15, v7, v5

    if-eqz v15, :cond_4

    iget-object v15, v0, Ltke;->a:Lfch;

    invoke-virtual {v15, v7, v8}, Lfch;->b(J)J

    move-result-wide v7

    cmp-long v15, v7, p2

    if-lez v15, :cond_2

    cmp-long v0, v11, v5

    if-nez v0, :cond_1

    invoke-static {v7, v8, v1, v2}, Lg8e;->d(JJ)Lg8e;

    move-result-object v0

    goto :goto_3

    :cond_1
    :goto_1
    add-long/2addr v1, v9

    invoke-static {v1, v2}, Lg8e;->e(J)Lg8e;

    move-result-object v0

    goto :goto_3

    :cond_2
    int-to-long v9, v13

    const-wide/32 v11, 0x186a0

    add-long/2addr v11, v7

    cmp-long v11, v11, p2

    if-lez v11, :cond_3

    goto :goto_1

    :cond_3
    move-wide v11, v7

    :cond_4
    invoke-virtual {v4, v14}, Lu4h;->l(I)V

    int-to-long v7, v14

    goto :goto_0

    :cond_5
    :goto_2
    cmp-long v0, v11, v5

    if-eqz v0, :cond_6

    add-long/2addr v1, v7

    invoke-static {v11, v12, v1, v2}, Lg8e;->f(JJ)Lg8e;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget-object v0, Lg8e;->d:Lg8e;

    :goto_3
    return-object v0
.end method

.method public final zzb()V
    .locals 2

    sget-object v0, Lkfh;->c:[B

    array-length v1, v0

    iget-object p0, p0, Ltke;->b:Lu4h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu4h;->j([BI)V

    return-void
.end method
