.class Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioSheetDialogActivity;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

.field final synthetic val$isMusicVideoFlag:Z


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-boolean p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;->val$isMusicVideoFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->t0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Z)V

    iget-boolean p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$1;->val$isMusicVideoFlag:Z

    if-eqz p0, :cond_1

    const-string p0, "mv"

    goto :goto_0

    :cond_1
    const-string p0, "audio"

    :goto_0
    const-string v0, "vd_vmore_edit_pop"

    const-string v1, "from"

    const-string v2, "list"

    const-string v3, "file_type"

    invoke-static {v0, v1, v2, v3, p0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
