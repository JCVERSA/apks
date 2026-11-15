.class public final synthetic Lcy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy2;->b:Landroid/content/Context;

    iput-object p2, p0, Lcy2;->c:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcy2;->b:Landroid/content/Context;

    iget-object p0, p0, Lcy2;->c:Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;->c(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
