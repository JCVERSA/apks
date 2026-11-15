.class public Lcom/transsion/sniffer_load/WebHistoryActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebHistoryActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$c;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$c;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->v0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/data/ReviewHistory;

    iget-boolean v1, v0, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$c;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->s0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$c;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "url"

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$c;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    const/16 p3, 0x4d9

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$c;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
