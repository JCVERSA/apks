.class public abstract Lcom/transsion/shorttv/base/image/blurhash/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/base/image/blurhash/c;->c(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lcom/bumptech/glide/RequestBuilder;Ljava/lang/String;IILcom/transsion/shorttv/base/image/blurhash/BlurHash;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "blurString"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "blurHash"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "response"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/shorttv/base/image/blurhash/b;

    .line 26
    .line 27
    invoke-direct {v0, p0, p5}, Lcom/transsion/shorttv/base/image/blurhash/b;-><init>(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->f(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private static final c(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "drawable"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method
