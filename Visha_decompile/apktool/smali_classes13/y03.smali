.class public final synthetic Ly03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly03;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 0

    iget-object p0, p0, Ly03;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    return-void
.end method
