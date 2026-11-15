.class public final Lnie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# instance fields
.field public final a:Lu4h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lnie;->a:Lu4h;

    return-void
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 8

    add-int/2addr p3, p2

    iget-object p0, p0, Lnie;->a:Lu4h;

    invoke-virtual {p0, p1, p3}, Lu4h;->j([BI)V

    invoke-virtual {p0, p2}, Lu4h;->l(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lu4h;->u()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p0}, Lu4h;->u()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 p4, 0x8

    if-lt p1, p4, :cond_0

    move p1, p3

    goto :goto_1

    :cond_0
    move p1, p2

    :goto_1
    const-string v0, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-static {p1, v0}, Ln7g;->e(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v0

    const v2, 0x76747463

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    :goto_2
    if-lez p1, :cond_4

    if-lt p1, p4, :cond_1

    move v4, p3

    goto :goto_3

    :cond_1
    move v4, p2

    :goto_3
    const-string v5, "Incomplete vtt cue box header found."

    invoke-static {v4, v5}, Ln7g;->e(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v4

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v5

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v6

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v7

    invoke-static {v6, v7, v4}, Lkfh;->c([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Lu4h;->m(I)V

    const v7, 0x73747467

    if-ne v5, v7, :cond_2

    invoke-static {v6}, Lwie;->b(Ljava/lang/String;)Lzvf;

    move-result-object v3

    goto :goto_4

    :cond_2
    const v7, 0x7061796c

    if-ne v5, v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lwie;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v2

    :cond_3
    :goto_4
    sub-int/2addr p1, v4

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Lzvf;->l(Ljava/lang/CharSequence;)Lzvf;

    invoke-virtual {v3}, Lzvf;->p()Lfyf;

    move-result-object p1

    goto :goto_5

    :cond_6
    sget-object p1, Lwie;->a:Ljava/util/regex/Pattern;

    new-instance p1, Luie;

    invoke-direct {p1}, Luie;-><init>()V

    iput-object v2, p1, Luie;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Luie;->a()Lzvf;

    move-result-object p1

    invoke-virtual {p1}, Lzvf;->p()Lfyf;

    move-result-object p1

    :goto_5
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lu4h;->m(I)V

    goto/16 :goto_0

    :cond_8
    new-instance p0, Lqge;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lqge;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, p0}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void
.end method
