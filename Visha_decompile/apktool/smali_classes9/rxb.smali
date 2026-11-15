.class public final synthetic Lrxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lrxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->S0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
