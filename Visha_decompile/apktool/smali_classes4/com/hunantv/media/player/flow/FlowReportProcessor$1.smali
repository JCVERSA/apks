.class Lcom/hunantv/media/player/flow/FlowReportProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/utils/ExTicker$onTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/flow/FlowReportProcessor;->start(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/flow/FlowReportProcessor;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/flow/FlowReportProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor$1;->this$0:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/flow/FlowReportProcessor$1;->this$0:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    invoke-static {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->access$000(Lcom/hunantv/media/player/flow/FlowReportProcessor;)V

    return-void
.end method
