.class public final synthetic Lcom/transsion/postdetail/shorttv/factory/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/bean/DownloadItem;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/d;->a:Lcom/transsion/shorttv/bean/DownloadItem;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/postdetail/shorttv/factory/d;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/factory/d;->c:Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/d;->a:Lcom/transsion/shorttv/bean/DownloadItem;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/postdetail/shorttv/factory/d;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/shorttv/factory/d;->c:Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->n(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
