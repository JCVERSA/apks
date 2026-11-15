.class public Lxt4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lxt4;


# direct methods
.method public constructor <init>(Lxt4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxt4$c;->b:Lxt4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxt4;Lxt4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lxt4$c;-><init>(Lxt4;)V

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
    iget-object p1, p0, Lxt4$c;->b:Lxt4;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lxt4;->m(Lxt4;F)F

    iget-object p0, p0, Lxt4$c;->b:Lxt4;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0, p1}, Lxt4;->p(Lxt4;F)F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lxt4$c;->b:Lxt4;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lxt4;->b(Lxt4;F)F

    iget-object p0, p0, Lxt4$c;->b:Lxt4;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0, p1}, Lxt4;->i(Lxt4;F)F

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
