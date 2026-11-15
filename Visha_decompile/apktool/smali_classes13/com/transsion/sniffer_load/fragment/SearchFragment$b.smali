.class public Lcom/transsion/sniffer_load/fragment/SearchFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/sniffer_load/fragment/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;->c:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    const/4 v0, 0x2

    const-string v1, "private_browsing"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sput-boolean v3, Lcom/transsion/playercommon/core/MainApp;->p:Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;->c:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v3}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget p1, Lcom/transsion/sniffer_load/R$string;->load_privacy_browsing_setting_hint:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {v0, v3}, Ldz5;->f(II)V

    goto :goto_0

    :cond_0
    sput-boolean v2, Lcom/transsion/playercommon/core/MainApp;->p:Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;->c:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_not_save_search_and_view_history:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {v0, v2}, Ldz5;->f(II)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;->c:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->m0(Lcom/transsion/sniffer_load/fragment/SearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {p1, v2}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->o0(Lcom/transsion/sniffer_load/fragment/SearchFragment;Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$b;->b:Landroid/view/View;

    sget p1, Lcom/transsion/magicvideo/R$id;->tv_privacy_browse:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/transsion/magicvideo/R$string;->download_privacy_browsing_turn_off:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/transsion/magicvideo/R$string;->download_privacy_browsing_turn_on:I

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
