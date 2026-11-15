.class public Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object p1

    const-string v0, "last_web"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DownLoadMainFragmentNew_ismPopUpWebShow"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
