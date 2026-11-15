.class Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;->this$0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;->this$0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->a(Lcom/transsion/magicvideo/widgets/VideoLoadingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le07;->b(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;->this$0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->b(Lcom/transsion/magicvideo/widgets/VideoLoadingView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->getTextSpeed(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoLoadingView$1;->this$0:Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
