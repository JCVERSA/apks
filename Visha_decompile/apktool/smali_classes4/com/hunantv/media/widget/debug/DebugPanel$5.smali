.class Lcom/hunantv/media/widget/debug/DebugPanel$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->initContent(Landroid/widget/LinearLayout;)V
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

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$5;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    sget-boolean p1, Lcom/hunantv/media/widget/debug/DebugPanel;->sReportLogOpen:Z

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$5;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$500(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const/4 p0, 0x1

    :goto_0
    sput-boolean p0, Lcom/hunantv/media/widget/debug/DebugPanel;->sReportLogOpen:Z

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->access$600(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method
