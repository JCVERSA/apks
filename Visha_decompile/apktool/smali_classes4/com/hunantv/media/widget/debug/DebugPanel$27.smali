.class Lcom/hunantv/media/widget/debug/DebugPanel$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initPlaySpeedView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

.field final synthetic val$playSpeedEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$27;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$27;->val$playSpeedEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$27;->val$playSpeedEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->playSpeed:F

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$27;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$27;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    move-result-object p1

    iget p1, p1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->playSpeed:F

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method
