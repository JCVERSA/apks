.class public final synthetic Ldn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/adapter/AudioBucketAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaBucket;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldn;->b:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iput-object p2, p0, Ldn;->c:Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldn;->b:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iget-object p0, p0, Ldn;->c:Lcom/transsion/dbdata/beans/media/MediaBucket;

    check-cast p1, Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->b(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
