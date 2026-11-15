.class Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioSheetDialogActivity;->K0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

.field final synthetic val$saveTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;->val$saveTv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;->val$saveTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$7;->this$0:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->V:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method
