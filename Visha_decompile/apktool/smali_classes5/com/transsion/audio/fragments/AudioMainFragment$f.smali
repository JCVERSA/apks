.class public Lcom/transsion/audio/fragments/AudioMainFragment$f;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioMainFragment;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public final synthetic d:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->A0(Lcom/transsion/audio/fragments/AudioMainFragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->z0(Lcom/transsion/audio/fragments/AudioMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->b:F

    sub-float/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->c:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->E0(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, v1}, Lcom/transsion/audio/fragments/AudioMainFragment;->E0(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->c:F

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, v1}, Lcom/transsion/audio/fragments/AudioMainFragment;->E0(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInterceptTouchEvent, mEditMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p2}, Lcom/transsion/audio/fragments/AudioMainFragment;->A0(Lcom/transsion/audio/fragments/AudioMainFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mDragMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$f;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->z0(Lcom/transsion/audio/fragments/AudioMainFragment;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioMainFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v0
.end method
