.class final Lcom/transsion/home/view/filter/popup/PopupFilterView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/view/filter/popup/PopupFilterView;->initSelectData(Ljava/util/List;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/home/view/filter/popup/PopupFilterView;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    const-string v1, "com.transsion.home.view.filter.popup.PopupFilterView.initSelectData.<anonymous>.<anonymous> (PopupFilterView.kt:93)"

    .line 25
    .line 26
    const v2, 0x1d0359f2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object p2, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->b:Ljava/util/List;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->FilterLinear(Ljava/util/List;Landroidx/compose/runtime/i;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/i;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->a(Landroidx/compose/runtime/i;I)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method
