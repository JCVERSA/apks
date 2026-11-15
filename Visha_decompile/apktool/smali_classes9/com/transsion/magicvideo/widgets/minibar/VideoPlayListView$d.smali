.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$d;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$d;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$d;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$d;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    return v1
.end method
