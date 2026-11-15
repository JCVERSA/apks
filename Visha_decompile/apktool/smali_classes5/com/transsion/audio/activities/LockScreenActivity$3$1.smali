.class Lcom/transsion/audio/activities/LockScreenActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/LockScreenActivity$3;->searchSuccess(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    iget-object v0, v0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/LockScreenActivity;->I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    iget-object v0, v0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/LockScreenActivity;->I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    iget-object v1, v1, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {v1}, Lcom/transsion/audio/activities/LockScreenActivity;->K0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    iget-object v0, v0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-virtual {v0}, Lcom/transsion/audio/activities/LockScreenActivity;->p1()V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p0, v3}, Lcom/transsion/audio/activities/LockScreenActivity;->M0(Lcom/transsion/audio/activities/LockScreenActivity;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3$1;->this$1:Lcom/transsion/audio/activities/LockScreenActivity$3;

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/audio/activities/LockScreenActivity;->M0(Lcom/transsion/audio/activities/LockScreenActivity;Z)V

    :goto_0
    return-void
.end method
