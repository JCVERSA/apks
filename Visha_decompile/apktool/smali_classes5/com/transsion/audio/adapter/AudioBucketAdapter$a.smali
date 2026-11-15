.class public Lcom/transsion/audio/adapter/AudioBucketAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/adapter/AudioBucketAdapter;->y(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/audio/adapter/AudioBucketAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->c:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iput-object p2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->c:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-static {p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->h(Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->c:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-static {v0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->h(Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$drawable;->ic_album_default:I

    iget-object v2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->c:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-static {v2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->h(Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
