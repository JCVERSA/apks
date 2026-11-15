.class public final synthetic Lhz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhz2;->a:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lhz2;->a:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->P(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;Ljava/lang/Boolean;)V

    return-void
.end method
