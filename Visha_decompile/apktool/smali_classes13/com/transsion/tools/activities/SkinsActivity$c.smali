.class public Lcom/transsion/tools/activities/SkinsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsActivity;->I0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/activities/SkinsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tools/activities/SkinsActivity$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsActivity$c;->b()V

    return-void
.end method


# virtual methods
.method public final synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsActivity;->x0(Lcom/transsion/tools/activities/SkinsActivity;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/tools/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$string;->loading_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsActivity;->w0(Lcom/transsion/tools/activities/SkinsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lbo9;

    invoke-direct {v0, p0}, Lbo9;-><init>(Lcom/transsion/tools/activities/SkinsActivity$c;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$c;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsActivity;->y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsActivity$c;->c(Ljava/lang/Integer;)V

    return-void
.end method
