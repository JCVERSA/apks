.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$onDoubleClick(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
