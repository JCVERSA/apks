.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

.field final synthetic b:Lcom/transsion/moviedetailapi/bean/Image;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Lcom/transsion/moviedetailapi/bean/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->b:Lcom/transsion/moviedetailapi/bean/Image;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    const-string p5, "resource"

    .line 2
    .line 3
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p5, "model"

    .line 7
    .line 8
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "target"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "dataSource"

    .line 17
    .line 18
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->a:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    .line 22
    .line 23
    iget-object p3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->b:Lcom/transsion/moviedetailapi/bean/Image;

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p3, 0x0

    .line 33
    :goto_0
    invoke-static {p2, p1, p3}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->access$saveToAlbum(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 1
    const-string p1, "target"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 7
    .line 8
    sget p2, Lcom/transsion/ninegridview/R$string;->download_failed:I

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;->a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
