.class public Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->o(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getDownloadMain()Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-static {v1, v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->e(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object v1, v1, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getSearchKey()Lcom/transsion/dbdata/beans/sniff/SearchKey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;->getSearchKey()Lcom/transsion/dbdata/beans/sniff/SearchKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;->a(Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;)V

    return-void
.end method
