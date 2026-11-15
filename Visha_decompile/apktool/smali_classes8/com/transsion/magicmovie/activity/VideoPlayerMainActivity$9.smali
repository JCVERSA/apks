.class Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showNewFeatureDialog()V
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

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$9;->this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$9;->this$0:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lti5;->b(ILandroid/content/Context;)V

    return-void
.end method
