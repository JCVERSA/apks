.class Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;->this$0:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;->this$0:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->z0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;->this$0:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->z0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$5;->this$0:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->B0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
