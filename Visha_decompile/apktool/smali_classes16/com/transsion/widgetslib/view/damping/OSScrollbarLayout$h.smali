.class public Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ListView;

.field public final synthetic b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->a:Landroid/widget/ListView;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/widget/ListView;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result p4

    if-le p2, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p3, p4}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Z)V

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p3, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object p4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->a:Landroid/widget/ListView;

    invoke-static {p3, p4, p1, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->F(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;->b:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->D(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
