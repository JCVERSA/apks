.class public final Lphe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# instance fields
.field public final a:Lu4h;

.field public final b:Lu4h;

.field public final c:Lohe;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lphe;->a:Lu4h;

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lphe;->b:Lu4h;

    new-instance v0, Lohe;

    invoke-direct {v0}, Lohe;-><init>()V

    iput-object v0, p0, Lphe;->c:Lohe;

    return-void
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 6

    add-int/2addr p3, p2

    iget-object p4, p0, Lphe;->a:Lu4h;

    invoke-virtual {p4, p1, p3}, Lu4h;->j([BI)V

    invoke-virtual {p4, p2}, Lu4h;->l(I)V

    iget-object p1, p0, Lphe;->d:Ljava/util/zip/Inflater;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lphe;->d:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p1, p0, Lphe;->b:Lu4h;

    iget-object p2, p0, Lphe;->d:Ljava/util/zip/Inflater;

    invoke-static {p4, p1, p2}, Lkfh;->o(Lu4h;Lu4h;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p2

    invoke-virtual {p1}, Lu4h;->x()I

    move-result p1

    invoke-virtual {p4, p2, p1}, Lu4h;->j([BI)V

    :cond_1
    iget-object p0, p0, Lphe;->c:Lohe;

    invoke-virtual {p0}, Lohe;->e()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_0
    invoke-virtual {p4}, Lu4h;->u()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_5

    invoke-virtual {p4}, Lu4h;->x()I

    move-result p1

    invoke-virtual {p4}, Lu4h;->G()I

    move-result p2

    invoke-virtual {p4}, Lu4h;->K()I

    move-result p3

    invoke-virtual {p4}, Lu4h;->w()I

    move-result v0

    add-int/2addr v0, p3

    const/4 v2, 0x0

    if-le v0, p1, :cond_3

    invoke-virtual {p4, p1}, Lu4h;->l(I)V

    goto :goto_2

    :cond_3
    const/16 p1, 0x80

    if-eq p2, p1, :cond_4

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p4, p3}, Lohe;->c(Lohe;Lu4h;I)V

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p4, p3}, Lohe;->b(Lohe;Lu4h;I)V

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p4, p3}, Lohe;->d(Lohe;Lu4h;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lohe;->a()Lfyf;

    move-result-object v2

    invoke-virtual {p0}, Lohe;->e()V

    :goto_1
    invoke-virtual {p4, v0}, Lu4h;->l(I)V

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Lqge;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lqge;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, p0}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
