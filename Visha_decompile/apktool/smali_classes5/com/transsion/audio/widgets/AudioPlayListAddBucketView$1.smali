.class Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$1;
.super Los8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->showAddEditDialog()V

    return-void
.end method
