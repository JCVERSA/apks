.class public Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->L0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b0:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->a0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    const/4 p1, 0x1

    iput p1, v1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    iget v0, v1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-static {v1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->C0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)J

    move-result-wide v2

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$b;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iget v4, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v5, 0x12

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c1(JIIZ)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    invoke-virtual {v1, p1, p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    :goto_0
    return-void
.end method
