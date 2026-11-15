.class Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$3;->this$0:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$3;->this$0:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    invoke-static {p0}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->e(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;

    return-void
.end method
