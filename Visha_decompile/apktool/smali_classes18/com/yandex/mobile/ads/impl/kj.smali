.class public final Lcom/yandex/mobile/ads/impl/kj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic d:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private b:Lcom/yandex/mobile/ads/impl/b10;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/b10<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getParentDesignView()Landroid/view/ViewGroup;"

    const/4 v2, 0x0

    const-class v3, Lcom/yandex/mobile/ads/impl/kj;

    const-string v4, "parentDesignView"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lcom/yandex/mobile/ads/impl/kj;->d:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    const-string v0, "preDrawListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kj;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kj;->c:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/kj;->d:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 18
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ah2;->a(Landroid/view/View;)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kj;->b:Lcom/yandex/mobile/ads/impl/b10;

    if-eqz p0, :cond_1

    .line 20
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/b10;->c()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/fr0;Lcom/yandex/mobile/ads/impl/gz1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;",
            "Lcom/yandex/mobile/ads/impl/fr0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/gz1;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDesign"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/kj;->d:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p2}, Lcom/yandex/mobile/ads/impl/go1;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kj;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 7
    sget v3, Lcom/yandex/mobile/ads/impl/zg2;->b:I

    .line 8
    const-string v3, "context"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contentView"

    invoke-static {p2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 10
    invoke-static {v0, p4}, Lcom/yandex/mobile/ads/impl/m8;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p4

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_0

    .line 14
    invoke-static {p2, v1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 15
    :cond_0
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/fr0;->a()Lcom/yandex/mobile/ads/impl/b10;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kj;->b:Lcom/yandex/mobile/ads/impl/b10;

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/b10;->a(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method
