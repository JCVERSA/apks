.class public Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;->b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "dl_brower_rp_multi_del_pop_ok"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;->b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object p1

    invoke-virtual {p1}, Lnic;->f()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;->b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "https://www.google.com"

    invoke-virtual {p1, v0, p2}, Lnic;->e(Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;->b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object p1

    invoke-virtual {p1}, Lnic;->v()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;->b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;

    move-result-object p1

    invoke-virtual {p1}, Lnic;->w()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;->b:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->j0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
