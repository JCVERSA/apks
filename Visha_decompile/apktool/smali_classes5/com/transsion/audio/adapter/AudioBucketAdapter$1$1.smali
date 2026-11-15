.class Lcom/transsion/audio/adapter/AudioBucketAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/adapter/AudioBucketAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/audio/adapter/AudioBucketAdapter$1;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/adapter/AudioBucketAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1$1;->this$1:Lcom/transsion/audio/adapter/AudioBucketAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1$1;->this$1:Lcom/transsion/audio/adapter/AudioBucketAdapter$1;

    iget-object v0, v0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1;->this$0:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->j(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1$1;->this$1:Lcom/transsion/audio/adapter/AudioBucketAdapter$1;

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter$1;->this$0:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
