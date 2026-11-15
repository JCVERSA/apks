.class public final Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->refreshStorageData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00060\u0001j\u0002`\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "com/transsion/cloud/fragment/CloudFragment$refreshStorageData$2",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Lzfb;",
        "run",
        "()V",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $maxPollCount:I

.field final synthetic $pollCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $pollInterval:J

.field final synthetic this$0:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;Lkotlin/jvm/internal/Ref$IntRef;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    iput-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->$pollCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput p3, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->$maxPollCount:I

    iput-wide p4, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->$pollInterval:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->this$0:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->$pollCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->$maxPollCount:I

    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$refreshStorageData$2;->$pollInterval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
