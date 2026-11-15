.class public Lcom/transsion/sniffer_load/WebHistoryActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


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

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$e;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$e;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->s0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$e;->a:Lcom/transsion/sniffer_load/WebHistoryActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
