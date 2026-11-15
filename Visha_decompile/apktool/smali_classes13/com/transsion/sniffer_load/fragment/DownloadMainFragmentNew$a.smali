.class public Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$a;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$a;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_bookmark_operate_finish:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/sniffer_load/R$string;->download_bookmark_operate:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;ZZ)V
    .locals 0

    return-void
.end method

.method public d(ZIZ)V
    .locals 0

    return-void
.end method
