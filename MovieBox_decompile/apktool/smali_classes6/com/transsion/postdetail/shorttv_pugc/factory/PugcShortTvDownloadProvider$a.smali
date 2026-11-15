.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;
.super Lui/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Lui/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->g(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)Lvs/j;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    invoke-interface {p2, v0, p1}, Lvs/j;->a(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
