.class Lcom/transsion/audio/adapter/AudioBucketAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/adapter/AudioBucketAdapter;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/adapter/AudioBucketAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1;->this$0:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1;->this$0:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-static {v1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->i(Lcom/transsion/audio/adapter/AudioBucketAdapter;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AudioBucketAdapter"

    const-string v1, "playMediaItem no longer exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/adapter/AudioBucketAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/adapter/AudioBucketAdapter$1$1;-><init>(Lcom/transsion/audio/adapter/AudioBucketAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
