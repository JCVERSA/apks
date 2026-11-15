.class Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->checkUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;->this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;->this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->createUpdateDialog()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;->this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->f2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    invoke-static {}, Lbs8;->b()V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;->this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->g2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    return-void
.end method
