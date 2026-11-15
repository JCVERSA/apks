.class public final Lgd8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final b:Landroid/widget/PopupWindow;

.field public final c:Landroid/view/View;

.field public final d:Z

.field public final e:Z

.field public final f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;ZZ)V
    .locals 1

    const-string v0, "popupWindow"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tooltipView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgd8;->b:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lgd8;->c:Landroid/view/View;

    iput-boolean p3, p0, Lgd8;->d:Z

    iput-boolean p4, p0, Lgd8;->e:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lgd8;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgd8;->c:Landroid/view/View;

    iget-object v0, p0, Lgd8;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lgd8;->f:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lgd8;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgd8;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-boolean p0, p0, Lgd8;->d:Z

    :goto_0
    return p0
.end method
