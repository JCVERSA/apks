.class public final Lnke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llje;

.field public final b:Lfch;

.field public final c:Lp3h;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Llje;Lfch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnke;->a:Llje;

    iput-object p2, p0, Lnke;->b:Lfch;

    new-instance p1, Lp3h;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lp3h;-><init>([BI)V

    iput-object p1, p0, Lnke;->c:Lp3h;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lnke;->c:Lp3h;

    iget-object v3, v2, Lp3h;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v4, v5}, Lu4h;->h([BII)V

    invoke-virtual {v2, v4}, Lp3h;->l(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    invoke-virtual {v2}, Lp3h;->p()Z

    move-result v6

    iput-boolean v6, v0, Lnke;->d:Z

    invoke-virtual {v2}, Lp3h;->p()Z

    move-result v6

    iput-boolean v6, v0, Lnke;->e:Z

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lp3h;->n(I)V

    invoke-virtual {v2, v3}, Lp3h;->d(I)I

    move-result v3

    iget-object v6, v2, Lp3h;->a:[B

    invoke-virtual {v1, v6, v4, v3}, Lu4h;->h([BII)V

    invoke-virtual {v2, v4}, Lp3h;->l(I)V

    iget-boolean v3, v0, Lnke;->d:Z

    const/4 v6, 0x4

    if-eqz v3, :cond_1

    invoke-virtual {v2, v6}, Lp3h;->n(I)V

    invoke-virtual {v2, v5}, Lp3h;->d(I)I

    move-result v3

    int-to-long v7, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    const/16 v9, 0xf

    invoke-virtual {v2, v9}, Lp3h;->d(I)I

    move-result v10

    shl-int/2addr v10, v9

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    invoke-virtual {v2, v9}, Lp3h;->d(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    iget-boolean v13, v0, Lnke;->f:Z

    const/16 v14, 0x1e

    if-nez v13, :cond_0

    iget-boolean v13, v0, Lnke;->e:Z

    if-eqz v13, :cond_0

    invoke-virtual {v2, v6}, Lp3h;->n(I)V

    invoke-virtual {v2, v5}, Lp3h;->d(I)I

    move-result v5

    int-to-long v4, v5

    shl-long/2addr v4, v14

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    invoke-virtual {v2, v9}, Lp3h;->d(I)I

    move-result v15

    shl-int/2addr v15, v9

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    invoke-virtual {v2, v9}, Lp3h;->d(I)I

    move-result v9

    move-wide/from16 v16, v7

    int-to-long v6, v9

    invoke-virtual {v2, v3}, Lp3h;->n(I)V

    iget-object v2, v0, Lnke;->b:Lfch;

    int-to-long v8, v15

    or-long/2addr v4, v8

    or-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lfch;->b(J)J

    iput-boolean v3, v0, Lnke;->f:Z

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v7

    :goto_0
    shl-long v2, v16, v14

    int-to-long v4, v10

    or-long/2addr v2, v4

    or-long/2addr v2, v11

    iget-object v4, v0, Lnke;->b:Lfch;

    invoke-virtual {v4, v2, v3}, Lfch;->b(J)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    iget-object v0, v0, Lnke;->a:Llje;

    const/4 v4, 0x4

    invoke-interface {v0, v2, v3, v4}, Llje;->b(JI)V

    invoke-interface {v0, v1}, Llje;->a(Lu4h;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llje;->zzc(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnke;->f:Z

    iget-object p0, p0, Lnke;->a:Llje;

    invoke-interface {p0}, Llje;->zze()V

    return-void
.end method
