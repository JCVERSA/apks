.class public final synthetic Lx03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/transsion/dbdata/beans/sniff/SearchKey;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx03;->b:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    iput-object p2, p0, Lx03;->c:Landroid/view/View;

    iput-object p3, p0, Lx03;->d:Lcom/transsion/dbdata/beans/sniff/SearchKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx03;->b:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    iget-object v1, p0, Lx03;->c:Landroid/view/View;

    iget-object p0, p0, Lx03;->d:Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-static {v0, v1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->g0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    return-void
.end method
