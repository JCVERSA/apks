.class public final synthetic Ll03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll03;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ll03;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->d(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    return-void
.end method
