.class Lcom/jeffmony/m3u8library/VideoProcessManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jeffmony/m3u8library/listener/IVideoTransformProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeffmony/m3u8library/VideoProcessManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jeffmony/m3u8library/VideoProcessManager$1;


# direct methods
.method public constructor <init>(Lcom/jeffmony/m3u8library/VideoProcessManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1$1;->this$1:Lcom/jeffmony/m3u8library/VideoProcessManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransformProgress(F)V
    .locals 1

    iget-object p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1$1;->this$1:Lcom/jeffmony/m3u8library/VideoProcessManager$1;

    iget-object v0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->this$0:Lcom/jeffmony/m3u8library/VideoProcessManager;

    iget-object p0, p0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;->val$listener:Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;

    invoke-static {v0, p0, p1}, Lcom/jeffmony/m3u8library/VideoProcessManager;->c(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V

    return-void
.end method
