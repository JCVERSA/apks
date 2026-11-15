.class Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;->this$0:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;->this$0:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->showSettingView(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;->this$0:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->k(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Lk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$2;->this$0:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->k(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Lk;

    move-result-object p0

    invoke-virtual {p0}, Leb0;->f()V

    :cond_0
    return-void
.end method
