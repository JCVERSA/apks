.class public final synthetic Lhw/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/videofloat/view/VideoFloatView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videofloat/view/VideoFloatView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhw/c;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhw/c;->a:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/transsion/videofloat/view/VideoFloatView;->n(Lcom/transsion/videofloat/view/VideoFloatView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
