.class public final Lbk8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lpoa;

.field public final b:Lqw7;


# direct methods
.method public constructor <init>(Lpoa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbk8$b;->a:Lpoa;

    .line 4
    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lbk8$b;->b:Lqw7;

    return-void
.end method

.method public synthetic constructor <init>(Lpoa;Lbk8$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbk8$b;-><init>(Lpoa;)V

    return-void
.end method

.method public static c(Lqw7;)V
    .locals 5

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v0

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-void

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->C()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v1

    invoke-virtual {p0}, Lqw7;->e()I

    move-result v3

    invoke-static {v1, v3}, Lbk8;->j([BI)I

    move-result v1

    const/16 v3, 0x1bb

    if-ne v1, v3, :cond_4

    invoke-virtual {p0, v2}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->I()I

    move-result v1

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v3

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lqw7;->P(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lqw7;->a()I

    move-result v1

    if-lt v1, v2, :cond_8

    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v1

    invoke-virtual {p0}, Lqw7;->e()I

    move-result v3

    invoke-static {v1, v3}, Lbk8;->j([BI)I

    move-result v1

    const/16 v3, 0x1ba

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1b9

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    ushr-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_7

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lqw7;->I()I

    move-result v1

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v3

    invoke-virtual {p0}, Lqw7;->e()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lqw7;->O(I)V

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lpk3;J)Lre0$e;
    .locals 6

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lbk8$b;->b:Lqw7;

    invoke-virtual {v1, v0}, Lqw7;->K(I)V

    iget-object v1, p0, Lbk8$b;->b:Lqw7;

    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lpk3;->peekFully([BII)V

    iget-object v1, p0, Lbk8$b;->b:Lqw7;

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lbk8$b;->b(Lqw7;JJ)Lre0$e;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lqw7;JJ)Lre0$e;
    .locals 9

    const/4 v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v0

    move-wide v4, v1

    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_5

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v6

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v8

    invoke-static {v6, v8}, Lbk8;->j([BI)I

    move-result v6

    const/16 v8, 0x1ba

    if-eq v6, v8, :cond_0

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lqw7;->P(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v7}, Lqw7;->P(I)V

    invoke-static {p1}, Lck8;->l(Lqw7;)J

    move-result-wide v6

    cmp-long v0, v6, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbk8$b;->a:Lpoa;

    invoke-virtual {v0, v6, v7}, Lpoa;->b(J)J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-lez v0, :cond_2

    cmp-long p0, v4, v1

    if-nez p0, :cond_1

    invoke-static {v6, v7, p4, p5}, Lre0$e;->d(JJ)Lre0$e;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long p0, v3

    add-long/2addr p4, p0

    invoke-static {p4, p5}, Lre0$e;->e(J)Lre0$e;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v3, 0x186a0

    add-long/2addr v3, v6

    cmp-long v0, v3, p2

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lqw7;->e()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr p4, p0

    invoke-static {p4, p5}, Lre0$e;->e(J)Lre0$e;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    move v3, v0

    move-wide v4, v6

    :cond_4
    invoke-static {p1}, Lbk8$b;->c(Lqw7;)V

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    goto :goto_0

    :cond_5
    cmp-long p0, v4, v1

    if-eqz p0, :cond_6

    int-to-long p0, v0

    add-long/2addr p4, p0

    invoke-static {v4, v5, p4, p5}, Lre0$e;->f(JJ)Lre0$e;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lre0$e;->d:Lre0$e;

    return-object p0
.end method

.method public onSeekFinished()V
    .locals 1

    iget-object p0, p0, Lbk8$b;->b:Lqw7;

    sget-object v0, Lblb;->f:[B

    invoke-virtual {p0, v0}, Lqw7;->L([B)V

    return-void
.end method
