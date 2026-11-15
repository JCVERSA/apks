.class public Lcom/transsion/sniffer_load/WebHistoryActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebHistoryActivity;->N0(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/sniffer_load/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebHistoryActivity;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->d:Lcom/transsion/sniffer_load/WebHistoryActivity;

    iput-boolean p2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->b:Z

    iput-object p3, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->d:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->x0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->d:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->i(Ljava/util/List;Lcom/transsion/playercommon/activities/BaseActivity;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->d:Lcom/transsion/sniffer_load/WebHistoryActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->d:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->x0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$h;->d:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->h(Lcom/transsion/playercommon/activities/BaseActivity;)V

    :goto_0
    const-string p0, "dl_brower_rp_more_history_cleanup_popup_ok_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    const-string p0, "dl_brower_rp_more_history_multi_del_popup_ok_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method
