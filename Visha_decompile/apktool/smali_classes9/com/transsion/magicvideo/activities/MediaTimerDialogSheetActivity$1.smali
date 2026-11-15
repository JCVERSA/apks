.class Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity$1;->this$0:Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity$1;->this$0:Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;

    invoke-static {v1}, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;->m0(Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity$1;->this$0:Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;->n0(Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;)V

    return-void
.end method
