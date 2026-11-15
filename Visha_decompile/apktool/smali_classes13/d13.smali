.class public final synthetic Ld13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld13;->b:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Ld13;->b:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->k0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
