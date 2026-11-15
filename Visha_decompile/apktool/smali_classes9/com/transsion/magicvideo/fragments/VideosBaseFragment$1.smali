.class Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r1(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

.field final synthetic val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

.field final synthetic val$newPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;->this$0:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;->val$newPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;->this$0:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;->val$newPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r1(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Z)V

    return-void
.end method
