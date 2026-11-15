.class Lcom/hunantv/media/widget/debug/DebugPanel$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initFileStartTimeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$13;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$13;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$13;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$13;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/hunantv/media/utils/NumericUtil;->parseFloat(Ljava/lang/String;F)F

    move-result p0

    iput p0, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->fileStartTimeFloatS:F

    :cond_0
    return-void
.end method
