.class public Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->disappear(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;->a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;->a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->disappear(Z)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;->a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->e(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/e/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;->a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-static {v1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->a(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/model/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/d;

    invoke-virtual {p1, v0}, Lcom/mgmi/e/a/a;->d(Lcom/mgmi/model/d;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;->a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->g(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgadplus/viewgroup/dynamicview/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;->a:Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->g(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgadplus/viewgroup/dynamicview/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
