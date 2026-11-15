.class Lcom/jeffmony/m3u8library/VideoProcessManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeffmony/m3u8library/VideoProcessManager;->transformM3U8ToMp4(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

.field final synthetic val$inputFilePath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

.field final synthetic val$outputFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iput-object p2, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    iput-object p3, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$inputFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$outputFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/jeffmony/m3u8library/VideoProcessor;

    invoke-direct {v0}, Lcom/jeffmony/m3u8library/VideoProcessor;-><init>()V

    new-instance v1, Lcom/jeffmony/m3u8library/VideoProcessManager$1$1;

    invoke-direct {v1, p0}, Lcom/jeffmony/m3u8library/VideoProcessManager$1$1;-><init>(Lcom/jeffmony/m3u8library/VideoProcessManager$1;)V

    invoke-virtual {v0, v1}, Lcom/jeffmony/m3u8library/VideoProcessor;->setOnVideoTransformProgressListener(Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;)V

    iget-object v1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$inputFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$outputFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jeffmony/m3u8library/VideoProcessor;->transformVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iget-object p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    invoke-static {v0, p0}, Lcom/jeffmony/m3u8library/VideoProcessManager;->b(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iget-object p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    invoke-static {v1, p0, v0}, Lcom/jeffmony/m3u8library/VideoProcessManager;->a(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V

    :goto_0
    return-void
.end method
