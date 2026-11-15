.class Lcom/hunantv/media/widget/MgtvVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(IILjava/lang/String;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->access$1902(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$1900(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/hunantv/media/report/ReportParams;->setEnhanceQualityType(I)Lcom/hunantv/media/report/ReportParams;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p1, p2}, Lcom/hunantv/media/widget/MgtvVideoView;->access$1802(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$1800(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/hunantv/media/report/ReportParams;->setRenderType(I)Lcom/hunantv/media/report/ReportParams;

    :cond_2
    :goto_0
    return-void
.end method
