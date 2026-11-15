.class public Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->Q0()V
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

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->A0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "visha_TopicDetailActivity"

    const-string p1, "getLoadStatus onChanged mMediaItemAdapter == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->A0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->A0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_6

    sget p1, Lcom/transsion/onlinevideo/R$string;->no_network:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p0, v1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->E0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Z)V

    invoke-static {}, Lvz5;->b()V

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_3

    sget p1, Lcom/transsion/onlinevideo/R$string;->no_network:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->H0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p0, v1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->E0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Z)V

    invoke-static {}, Lvz5;->b()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    sget p1, Lcom/transsion/onlinevideo/R$string;->loading_error:I

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->G0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->E0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->j0:Z

    invoke-static {p0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->A0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->A0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;)Lcom/transsion/onlinevideo/adapter/TopicDetailTypeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    invoke-static {p1, v0}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->E0(Lcom/transsion/onlinevideo/topic/TopicDetailActivity;Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a:Lcom/transsion/onlinevideo/topic/TopicDetailActivity;

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/topic/TopicDetailActivity;->j0:Z

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/topic/TopicDetailActivity$e;->a(Ljava/lang/Integer;)V

    return-void
.end method
