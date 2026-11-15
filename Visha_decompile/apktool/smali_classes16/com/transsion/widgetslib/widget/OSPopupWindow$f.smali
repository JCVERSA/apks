.class public final Lcom/transsion/widgetslib/widget/OSPopupWindow$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupWindow;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->d(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->c:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$f;->d:Landroid/widget/FrameLayout;

    check-cast p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1, v0, p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->c(Lcom/transsion/widgetslib/widget/OSPopupWindow;Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "v"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
