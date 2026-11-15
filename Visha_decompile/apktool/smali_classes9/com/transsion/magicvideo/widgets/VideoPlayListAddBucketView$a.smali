.class public Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$a;
.super Los8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->s(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$a;->b:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->showAddEditDialog()V

    return-void
.end method
