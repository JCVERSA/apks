.class public final Lcom/transsion/postdetail/util/PostSaveHelper$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic b:Lcom/transsion/moviedetailapi/bean/Image;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/moviedetailapi/bean/Image;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->b:Lcom/transsion/moviedetailapi/bean/Image;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 2

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
    iget-object p2, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 22
    .line 23
    iget p3, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 24
    .line 25
    const/4 p4, 0x1

    .line 26
    add-int/2addr p3, p4

    .line 27
    iput p3, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 28
    .line 29
    sget-object p2, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->b:Lcom/transsion/moviedetailapi/bean/Image;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-object p5, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 38
    .line 39
    iget p5, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/postdetail/util/PostSaveHelper$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-ne p5, v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move p4, v1

    .line 56
    :goto_0
    invoke-static {p2, p1, p3, p4}, Lcom/transsion/postdetail/util/PostSaveHelper;->a(Lcom/transsion/postdetail/util/PostSaveHelper;Ljava/io/File;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    return v1
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
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/postdetail/util/PostSaveHelper$a;->a(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
