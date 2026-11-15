.class Lcom/hunantv/media/widget/debug/DebugPanel$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initDisplayFloatRect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

.field final synthetic val$ltx:Landroid/widget/EditText;

.field final synthetic val$lty:Landroid/widget/EditText;

.field final synthetic val$rbx:Landroid/widget/EditText;

.field final synthetic val$rby:Landroid/widget/EditText;

.field final synthetic val$setBtn:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$ltx:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$lty:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$rbx:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$rby:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$setBtn:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    invoke-direct {p1}, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$ltx:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$lty:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;-><init>(FF)V

    iput-object v0, p1, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    new-instance v0, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$rbx:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$rby:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;-><init>(FF)V

    iput-object v0, p1, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-static {v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hunantv/media/widget/IVideoView;->setDisplayFloatRect(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$setBtn:Landroid/view/View;

    check-cast p1, Landroid/widget/Button;

    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$17;->val$setBtn:Landroid/view/View;

    check-cast p0, Landroid/widget/Button;

    const-string p1, "\u8bbe\u7f6e\u5f02\u5e38"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method
