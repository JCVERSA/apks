.class public final Lcom/yandex/div/core/view2/items/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/items/b$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div/core/view2/items/b$a;


# instance fields
.field public final a:Lcom/yandex/div/core/view2/items/DivViewWithItems;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/items/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/items/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/items/b;->b:Lcom/yandex/div/core/view2/items/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/items/DivViewWithItems;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/items/DivViewWithItems;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/items/b;-><init>(Lcom/yandex/div/core/view2/items/DivViewWithItems;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/items/b;->b(Ljava/lang/String;)Lcom/yandex/div/core/view2/items/c;

    move-result-object p1

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/items/c;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/items/c;->d(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/items/b;->g(IZ)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/yandex/div/core/view2/items/c;
    .locals 7

    sget-object v0, Lcom/yandex/div/core/view2/items/c;->b:Lcom/yandex/div/core/view2/items/c$b;

    iget-object v1, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->b()I

    move-result v2

    iget-object v1, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->c()I

    move-result v3

    iget-object v1, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->f()I

    move-result v4

    iget-object v1, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->e()I

    move-result v5

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->d()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/items/c$b;->a(Ljava/lang/String;IIIILandroid/util/DisplayMetrics;)Lcom/yandex/div/core/view2/items/c;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;IZ)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/items/b;->b(Ljava/lang/String;)Lcom/yandex/div/core/view2/items/c;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/items/c;->c(I)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->h(Lcom/yandex/div/core/view2/items/DivViewWithItems;ILcom/yandex/div2/DivSizeUnit;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    sget-object v0, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->g(ILcom/yandex/div2/DivSizeUnit;Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->i(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/items/b;->g(IZ)V

    return-void
.end method

.method public final g(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->j(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/items/b;->a:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->k(I)V

    :goto_0
    return-void
.end method
