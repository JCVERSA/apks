.class Lcom/jeffmony/m3u8library/VideoProcessManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeffmony/m3u8library/VideoProcessManager;->notifyOnTransformFinished(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

.field final synthetic val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;


# direct methods
.method public constructor <init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$3;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iput-object p2, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$3;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$3;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    invoke-interface {p0}, Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;->onTransformFinished()V

    return-void
.end method
