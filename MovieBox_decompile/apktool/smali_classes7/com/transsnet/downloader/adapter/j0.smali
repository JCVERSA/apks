.class public final synthetic Lcom/transsnet/downloader/adapter/j0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/j0;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/j0;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt$loadImageWithBuiltIn$1;->a(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
