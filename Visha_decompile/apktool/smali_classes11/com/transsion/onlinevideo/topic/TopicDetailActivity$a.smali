.class public Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;
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

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->j0:Z

    iget p1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->k0:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->C0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iget v3, p1, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->c1(JIIZ)V

    goto :goto_0

    :cond_1
    iget p1, v0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->V:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->b1(IIZ)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$a;->b:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->F0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    :goto_1
    return-void
.end method
