.class final Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/View$OnTouchListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->b(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final b(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lolb;->l0()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "viewPager"

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lty3;->f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lty3;->f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_6
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lty3;->f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v4

    :cond_8
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p1, p0, v2, v0, v4}, Lty3;->f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setDownX$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;F)V

    :goto_0
    return v1
.end method


# virtual methods
.method public final invoke()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->this$0:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    new-instance v0, Lcom/transsion/widgetslib/flipper/a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/flipper/a;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->invoke()Landroid/view/View$OnTouchListener;

    move-result-object p0

    return-object p0
.end method
