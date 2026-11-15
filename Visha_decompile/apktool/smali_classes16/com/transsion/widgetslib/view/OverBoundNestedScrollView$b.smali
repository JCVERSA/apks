.class public Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->a(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->a(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollEdgeReached(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->a(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollFarEdgeReached(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->a(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollEdgeReached(Z)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    if-lt p2, p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->a(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollFarEdgeReached(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$b;->b:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->a(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollFarEdgeReached(Z)V

    :cond_2
    :goto_0
    return-void
.end method
