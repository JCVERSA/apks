.class public Lm23$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm23$a;->b:I

    iput p2, p0, Lm23$a;->c:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, p0, Lm23$a;->e:F

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lm23$a;->b:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lm23$a;->c:I

    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iput-boolean v1, p0, Lm23$a;->f:Z

    goto :goto_0

    :cond_1
    const-string p1, "dl_brower_rp_c_adl_move"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lm23$a;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lm23$a;->e:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm23$a;->f:Z

    :cond_3
    :goto_0
    iget-boolean p0, p0, Lm23$a;->f:Z

    return p0
.end method
