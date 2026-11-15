.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$t;
.super Los8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showSettingDialogView(ZLandroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$t;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$t;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->isHorizontalShowDialog()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    return-void
.end method
