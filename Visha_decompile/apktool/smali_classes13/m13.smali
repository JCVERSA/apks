.class public final synthetic Lm13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm13;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm13;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->q0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    return-void
.end method
