.class public abstract Llj/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(F)I
    .locals 3

    .line 1
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final b(I)I
    .locals 3

    .line 1
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    int-to-float p0, p0

    .line 13
    invoke-virtual {v0, v1, p0}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
