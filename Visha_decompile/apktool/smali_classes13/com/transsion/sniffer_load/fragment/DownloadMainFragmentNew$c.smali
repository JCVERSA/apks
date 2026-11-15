.class public Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->H0()V
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

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->x0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->v0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;->a:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->y0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
