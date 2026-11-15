.class public final synthetic Lm03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm03;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm03;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->a(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
