.class Lcom/transsion/audio/activities/AudioSheetDialogActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioSheetDialogActivity;->y0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$3;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$3;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->r0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$3;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->s0(Lcom/transsion/audio/activities/AudioSheetDialogActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->setAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
