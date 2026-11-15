.class Lcom/jeffmony/m3u8library/VideoProcessManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeffmony/m3u8library/VideoProcessManager;->notifyOnMergeFailed(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

.field final synthetic val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

.field final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$4;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iput-object p2, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$4;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    iput p3, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$4;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$4;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeVideo failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$4;->val$result:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;->onTransformFailed(Ljava/lang/Exception;)V

    return-void
.end method
