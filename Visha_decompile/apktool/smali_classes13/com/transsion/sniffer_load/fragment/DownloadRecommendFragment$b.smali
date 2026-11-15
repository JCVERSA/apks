.class public Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;
.super Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/transsion/dbdata/beans/sniff/Bookmark;

.field public final synthetic g:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;ZJLcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;->g:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    iput-object p5, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;->f:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-direct {p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;->g:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;->f:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-static {p1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->w0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method
