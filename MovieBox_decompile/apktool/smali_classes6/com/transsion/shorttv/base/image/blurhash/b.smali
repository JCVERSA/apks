.class public final synthetic Lcom/transsion/shorttv/base/image/blurhash/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/RequestBuilder;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->a:Lcom/bumptech/glide/RequestBuilder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->a:Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/base/image/blurhash/c;->a(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
