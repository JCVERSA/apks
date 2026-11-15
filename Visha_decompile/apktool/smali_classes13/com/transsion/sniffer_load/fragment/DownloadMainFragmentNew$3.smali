.class public Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->F0(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->w0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/widgets/NotificationView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "vd_dl_net_show"

    invoke-static {v0, p0}, Ldz5;->b(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->C0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->D0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3$1;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->A0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->B0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    new-instance v1, Lj03;

    invoke-direct {v1, p0}, Lj03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
