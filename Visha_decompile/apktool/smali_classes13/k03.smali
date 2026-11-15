.class public final synthetic Lk03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk03;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iput-object p2, p0, Lk03;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk03;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object p0, p0, Lk03;->c:Landroid/content/Context;

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->b(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Landroid/content/Context;Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object p0

    return-object p0
.end method
