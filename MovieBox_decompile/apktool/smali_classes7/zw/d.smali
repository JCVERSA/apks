.class public abstract Lzw/d;
.super Lzw/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzw/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V
    .locals 0

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x6

    .line 7
    invoke-virtual {p0, p1, p2}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 2

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x7

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreStatus(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, p1, v1}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;JJ)V
    .locals 0

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p1, p2}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, p1, v0}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x5

    .line 7
    invoke-virtual {p0, p1, p2}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, p1, v0}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lzw/d;->h(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
.end method
