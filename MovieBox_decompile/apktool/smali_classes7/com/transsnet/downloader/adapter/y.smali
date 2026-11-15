.class public final synthetic Lcom/transsnet/downloader/adapter/y;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/y;->a:Landroid/widget/Button;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/y;->a:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->l(Landroid/widget/Button;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
