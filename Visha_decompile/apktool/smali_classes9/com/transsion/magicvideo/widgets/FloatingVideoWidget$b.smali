.class public Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$b;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapConfirmed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatingVideoWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$b;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->i(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V

    const/4 p0, 0x1

    return p0
.end method
