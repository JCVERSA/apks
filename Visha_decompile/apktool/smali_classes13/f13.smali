.class public final synthetic Lf13;
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

    iput-object p1, p0, Lf13;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf13;->a:Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->o0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Ljava/lang/Boolean;)V

    return-void
.end method
