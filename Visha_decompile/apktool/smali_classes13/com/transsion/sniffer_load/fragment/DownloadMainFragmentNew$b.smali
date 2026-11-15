.class public Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->z0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Z)V

    return-void
.end method
