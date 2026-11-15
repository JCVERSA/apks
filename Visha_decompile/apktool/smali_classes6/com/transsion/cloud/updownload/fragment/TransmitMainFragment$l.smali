.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->o()V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_start_upload:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Z)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->q()V

    sget p1, Lcom/transsion/sniffer_load/R$string;->visha_start_download:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;->b:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;ZZ)V

    return-void
.end method
