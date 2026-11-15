.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C4(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/playercommon/widgets/CustomOsSeekbar;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;->c:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;->a:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V
    .locals 0

    invoke-static {p2}, Lpw2;->d(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;->a:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getMax()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;->a:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getMax()F

    move-result p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$g;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    invoke-static {}, Lpw2;->b()Low2;

    move-result-object p0

    invoke-static {p0}, Low2;->b(Low2;)V

    return-void
.end method
