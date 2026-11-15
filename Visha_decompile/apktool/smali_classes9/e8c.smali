.class public final synthetic Le8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Le8c;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->o0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
