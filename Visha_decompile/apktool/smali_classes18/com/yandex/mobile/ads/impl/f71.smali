.class public Lcom/yandex/mobile/ads/impl/f71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/na1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a81;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/gh1;

.field private d:Lcom/yandex/mobile/ads/impl/g71;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/gh1;->h:Lcom/yandex/mobile/ads/impl/gh1$a;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/gh1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/gh1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/f71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gh1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gh1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdAssetsValidator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phoneStateTracker"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f71;->a:Lcom/yandex/mobile/ads/impl/a81;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/f71;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/f71;->c:Lcom/yandex/mobile/ads/impl/gh1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;
    .locals 3

    .line 31
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f71;->c:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gh1;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/f71;->a(Landroid/content/Context;IZZ)Lkotlin/Pair;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/n92$a;

    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/yandex/mobile/ads/impl/f71;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n92$a;ZI)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p0

    .line 35
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/n92;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n92$a;ZI)Lcom/yandex/mobile/ads/impl/n92;
    .locals 0

    .line 1
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "status"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/yandex/mobile/ads/impl/n92;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/n92;-><init>(Lcom/yandex/mobile/ads/impl/n92$a;)V

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/qq1;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f71;->a:Lcom/yandex/mobile/ads/impl/a81;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/a81;->a()Lcom/yandex/mobile/ads/impl/qq1;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;IZZ)Lkotlin/Pair;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZ)",
            "Lkotlin/Pair<",
            "Lcom/yandex/mobile/ads/impl/n92$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/f71;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->w()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 5
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->d:Lcom/yandex/mobile/ads/impl/n92$a;

    goto/16 :goto_5

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/f71;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->m:Lcom/yandex/mobile/ads/impl/n92$a;

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/f71;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_b

    .line 10
    sget v1, Lcom/yandex/mobile/ads/impl/wh2;->b:I

    .line 11
    const-string v1, "view"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_b

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-ge p3, v2, :cond_3

    goto :goto_4

    .line 13
    :cond_3
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/f71;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz p3, :cond_4

    .line 14
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object p3, v0

    :goto_1
    if-eqz p3, :cond_a

    .line 15
    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/view/View;)I

    move-result p3

    const/4 v1, 0x1

    if-ge p3, v1, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/f71;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz p3, :cond_6

    .line 17
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p3

    goto :goto_2

    :cond_6
    move-object p3, v0

    :goto_2
    if-eqz p3, :cond_7

    .line 18
    invoke-static {p3, p2}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_8

    :cond_7
    if-nez p4, :cond_8

    .line 19
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->j:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_5

    .line 20
    :cond_8
    sget-object p2, Lcom/yandex/mobile/ads/impl/g10;->c:Lcom/yandex/mobile/ads/impl/g10;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/g10;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 21
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f71;->a:Lcom/yandex/mobile/ads/impl/a81;

    invoke-interface {p0, p4}, Lcom/yandex/mobile/ads/impl/a81;->a(Z)Lcom/yandex/mobile/ads/impl/z71;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z71;->a()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z71;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object p0

    goto :goto_5

    .line 24
    :cond_9
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_5

    .line 25
    :cond_a
    :goto_3
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->o:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_5

    .line 26
    :cond_b
    :goto_4
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->n:Lcom/yandex/mobile/ads/impl/n92$a;

    .line 27
    :goto_5
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f71;->a:Lcom/yandex/mobile/ads/impl/a81;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/a81;->a(Lcom/yandex/mobile/ads/impl/g71;)V

    .line 29
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f71;->d:Lcom/yandex/mobile/ads/impl/g71;

    return-void
.end method

.method public final b(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/n92;
    .locals 3

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f71;->c:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gh1;->b()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/f71;->a(Landroid/content/Context;IZZ)Lkotlin/Pair;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/n92$a;

    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/yandex/mobile/ads/impl/f71;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/n92$a;ZI)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/n92;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f71;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->d(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f71;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g71;->e()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/view/View;)I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
