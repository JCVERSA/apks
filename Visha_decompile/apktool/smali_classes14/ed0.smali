.class public final synthetic Led0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led0;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Led0;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;

    invoke-static {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->u(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
