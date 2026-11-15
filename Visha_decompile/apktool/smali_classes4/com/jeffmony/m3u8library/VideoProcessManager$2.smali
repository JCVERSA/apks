.class Lcom/jeffmony/m3u8library/VideoProcessManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeffmony/m3u8library/VideoProcessManager;->notifyOnTransformProgress(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

.field final synthetic val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

.field final synthetic val$progress:F


# direct methods
.method public constructor <init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$2;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iput-object p2, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$2;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    iput p3, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$2;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$2;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    iget p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$2;->val$progress:F

    invoke-interface {v0, p0}, Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;->onTransformProgress(F)V

    return-void
.end method
