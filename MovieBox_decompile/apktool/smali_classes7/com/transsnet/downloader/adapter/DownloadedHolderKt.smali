.class public abstract Lcom/transsnet/downloader/adapter/DownloadedHolderKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "imageView"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "url"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "http"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v7, Lcom/transsnet/downloader/adapter/DownloadedHolderKt$loadImageWithBuiltIn$1;

    .line 36
    .line 37
    invoke-direct {v7, p0, p2, p1, v3}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt$loadImageWithBuiltIn$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/high16 v0, 0x42f00000    # 120.0f

    .line 49
    .line 50
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Lni/f$b;->m(I)Lni/f$b;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-nez p3, :cond_1

    .line 69
    .line 70
    const-string p3, ""

    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0, p3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method
