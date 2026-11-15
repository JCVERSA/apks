.class public final Lbk2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public c:Lc74;

.field public d:Lc74;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-boolean p1, p0, Lbk2;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lc74;
    .locals 0

    iget-object p0, p0, Lbk2;->d:Lc74;

    return-object p0
.end method

.method public final b()Lc74;
    .locals 0

    iget-object p0, p0, Lbk2;->c:Lc74;

    return-object p0
.end method

.method public final c(Lc74;)V
    .locals 0

    iput-object p1, p0, Lbk2;->d:Lc74;

    return-void
.end method

.method public final d(Lc74;)V
    .locals 0

    iput-object p1, p0, Lbk2;->c:Lc74;

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbk2;->d:Lc74;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lbk2;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lbk2;->d:Lc74;

    if-nez p1, :cond_0

    iget-object p0, p0, Lbk2;->c:Lc74;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lbk2;->d:Lc74;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lbk2;->c:Lc74;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lbk2;->d:Lc74;

    if-nez p1, :cond_1

    iget-object p0, p0, Lbk2;->c:Lc74;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
