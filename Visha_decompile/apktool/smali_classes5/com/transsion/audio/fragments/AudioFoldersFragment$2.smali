.class Lcom/transsion/audio/fragments/AudioFoldersFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioFoldersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;->this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;->this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->N1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;->this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->O1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;->this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->P1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;->this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->M1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/audio/adapter/AudioBucketAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;->this$0:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->M1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/audio/adapter/AudioBucketAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->B(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method
