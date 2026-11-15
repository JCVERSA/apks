.class Lcom/transsion/liblan/LanVideoHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/LanVideoHelper;->attachViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/transsion/liblan/LanVideoHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/LanVideoHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper$1;->this$0:Lcom/transsion/liblan/LanVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/transsion/liblan/LanVideoHelper$1$1;

    invoke-direct {p1, p0}, Lcom/transsion/liblan/LanVideoHelper$1$1;-><init>(Lcom/transsion/liblan/LanVideoHelper$1;)V

    iput-object p1, p0, Lcom/transsion/liblan/LanVideoHelper$1;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper$1;->this$0:Lcom/transsion/liblan/LanVideoHelper;

    invoke-static {p1}, Lcom/transsion/liblan/LanVideoHelper;->a(Lcom/transsion/liblan/LanVideoHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/liblan/LanVideoHelper$1;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/liblan/LanVideoHelper$1;->this$0:Lcom/transsion/liblan/LanVideoHelper;

    invoke-static {p1}, Lcom/transsion/liblan/LanVideoHelper;->a(Lcom/transsion/liblan/LanVideoHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/liblan/LanVideoHelper$1;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
