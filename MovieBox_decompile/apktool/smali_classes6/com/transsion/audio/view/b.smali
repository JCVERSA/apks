.class public final synthetic Lcom/transsion/audio/view/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/view/EnFloatingView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/view/EnFloatingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/audio/view/b;->a:Lcom/transsion/audio/view/EnFloatingView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/view/b;->a:Lcom/transsion/audio/view/EnFloatingView;

    .line 2
    .line 3
    check-cast p1, Lcom/transsnet/downloader/bean/DownloadListBean;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/audio/view/EnFloatingView;->j(Lcom/transsion/audio/view/EnFloatingView;Lcom/transsnet/downloader/bean/DownloadListBean;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
