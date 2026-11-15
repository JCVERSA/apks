.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->B0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->B0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->p()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lw6c;->C(Landroid/content/Context;Z)V

    const-string p0, "vd_cp_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
