.class public Lcom/transsion/sniffer_load/WebHistoryActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebHistoryActivity;->B0()V
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

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$d;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$d;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->v0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/ReviewHistory;

    iget-boolean v1, v0, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$d;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->s0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$d;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {p1, v3}, Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$d;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->w0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0, v3, p3}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->x(Lcom/transsion/sniffer_load/data/ReviewHistory;ZI)V

    const-string p0, "dl_brower_rp_more_history_multi_lp"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$d;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/transsion/sniffer_load/WebHistoryActivity;->L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :goto_0
    return v3
.end method
