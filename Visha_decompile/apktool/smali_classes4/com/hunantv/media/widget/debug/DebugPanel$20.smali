.class Lcom/hunantv/media/widget/debug/DebugPanel$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initEnhanceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

.field final synthetic val$debug:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$20;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$20;->val$debug:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$20;->val$debug:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$20;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$20;->val$debug:Landroid/view/View;

    check-cast p0, Landroid/widget/Button;

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$800(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/Button;Z)V

    return-void
.end method
