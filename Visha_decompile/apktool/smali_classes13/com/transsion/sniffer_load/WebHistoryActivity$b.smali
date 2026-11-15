.class public Lcom/transsion/sniffer_load/WebHistoryActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebHistoryActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->C0(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->y0(Lcom/transsion/sniffer_load/WebHistoryActivity;Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->A0(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->u0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->s0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->v0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const-string p1, "dl_brower_rp_more_history_show"

    const-string v0, "history_num"

    invoke-static {p1, v0, p0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity$b;->a(Ljava/util/List;)V

    return-void
.end method
