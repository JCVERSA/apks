.class Lcom/hunantv/media/widget/debug/DebugPanel$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initBaseInfoLayout(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$6;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$6;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object p1, p1, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$6;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object p1, p1, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$6;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$6;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->updateBaseInfoText()V

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$6;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
