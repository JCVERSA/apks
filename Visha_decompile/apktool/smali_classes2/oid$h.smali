.class public Loid$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic b:Loid;


# direct methods
.method public constructor <init>(Loid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loid$h;->b:Loid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Loid;Loid$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loid$h;-><init>(Loid;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Loid$h;->b:Loid;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Loid;->A(Loid;F)F

    iget-object p0, p0, Loid$h;->b:Loid;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0, p1}, Loid;->E(Loid;F)F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Loid$h;->b:Loid;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Loid;->c(Loid;F)F

    iget-object p0, p0, Loid$h;->b:Loid;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0, p1}, Loid;->t(Loid;F)F

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
