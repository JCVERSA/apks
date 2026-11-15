.class final Lcom/transsion/home/view/filter/popup/e$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/view/filter/popup/e$a;->e(Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/Item;

.field final synthetic b:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->a:Lcom/transsion/home/bean/Item;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->b:Landroidx/compose/runtime/snapshots/t;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V
    .locals 2

    .line 1
    const-string v0, "$this$item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    and-int/lit8 p1, p3, 0x11

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p2}, Landroidx/compose/runtime/i;->h()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->G()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    const-string v0, "com.transsion.home.view.filter.popup.MultiFilterPopup.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MultiFilterPopupWindow.kt:137)"

    .line 31
    .line 32
    const v1, 0x301e7345

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->a:Lcom/transsion/home/bean/Item;

    .line 39
    .line 40
    iget-object p3, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->b:Landroidx/compose/runtime/snapshots/t;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {p1, p3, p2, v0}, Lcom/transsion/home/view/filter/popup/e;->A(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/b;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/i;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/view/filter/popup/e$a$a;->a(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
