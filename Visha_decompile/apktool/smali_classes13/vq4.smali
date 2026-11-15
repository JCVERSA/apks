.class public final synthetic Lvq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/sniffer_load/data/ReviewHistory;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvq4;->a:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    iput-object p2, p0, Lvq4;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lvq4;->c:Lcom/transsion/sniffer_load/data/ReviewHistory;

    iput-object p4, p0, Lvq4;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    iget-object v0, p0, Lvq4;->a:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    iget-object v1, p0, Lvq4;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lvq4;->c:Lcom/transsion/sniffer_load/data/ReviewHistory;

    iget-object p0, p0, Lvq4;->d:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->c(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;Landroid/widget/ImageView;Lcom/transsion/sniffer_load/data/ReviewHistory;Landroid/widget/TextView;[B)V

    return-void
.end method
