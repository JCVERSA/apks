.class public Lcom/avery/subtitle/widget/TracksSubtitleView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/widget/TracksSubtitleView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/avery/subtitle/widget/TracksSubtitleView;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/widget/TracksSubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    iget-boolean v0, v0, Lcom/avery/subtitle/widget/TracksSubtitleView;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->b(Z)Z

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    invoke-static {v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->c(Lcom/avery/subtitle/widget/TracksSubtitleView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    iget-object v0, v0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    iget-object v0, v0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->d(Lcom/avery/subtitle/widget/TracksSubtitleView;F)F

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView$a;->b:Lcom/avery/subtitle/widget/TracksSubtitleView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->onSubtitleSingleTapUp()V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
