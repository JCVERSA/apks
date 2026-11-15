.class public Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->g0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const-string v1, "dl_brower_rp_multi_win_close"

    const-string v2, "num"

    invoke-static {v1, v2, v0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v0

    invoke-virtual {v0}, Lnic;->p()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v3}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnic;->B(I)Z

    sput-object v1, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://www.google.com"

    invoke-static {p0, p1, v0, v2}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->j0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->g0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v0

    invoke-virtual {v0}, Lnic;->o()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v1

    invoke-virtual {v1}, Lnic;->m()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->s(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object p1

    invoke-virtual {p1}, Lnic;->v()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object p0

    invoke-virtual {p0}, Lnic;->w()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onItemClick(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->g0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const-string v1, "dl_brower_rp_multi_win_open"

    const-string v2, "num"

    invoke-static {v1, v2, v0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v0

    invoke-virtual {v0}, Lnic;->m()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p0()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnic;->D(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->g0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->r(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnic;->n(I)Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    sput-object v1, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object v0

    invoke-virtual {v0}, Lnic;->l()Lcom/transsion/sniffer_load/liveData/WebViewLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->j0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
