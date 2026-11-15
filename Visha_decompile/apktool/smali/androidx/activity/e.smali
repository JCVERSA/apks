.class public final synthetic Landroidx/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic b:Lgh8;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lgh8;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/e;->b:Lgh8;

    iput-object p2, p0, Landroidx/activity/e;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/e;->b:Lgh8;

    iget-object p0, p0, Landroidx/activity/e;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->h(Lgh8;Landroid/view/View;)V

    return-void
.end method
