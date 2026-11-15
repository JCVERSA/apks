.class public Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;->b()V

    return-void
.end method


# virtual methods
.method public final synthetic b()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->B0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    iget v2, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->C0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iget v3, v3, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v4, 0x12

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c1(JIIZ)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->B0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Ltqa;

    invoke-direct {v1, p0}, Ltqa;-><init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity$c;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
