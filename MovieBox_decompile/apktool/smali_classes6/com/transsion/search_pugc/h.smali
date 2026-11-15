.class public abstract Lcom/transsion/search_pugc/h;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroid/content/Context;)Landroid/text/style/ImageSpan;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/search/R$drawable;->ic_search_result_split:I

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1d

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, p0, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v1
.end method
