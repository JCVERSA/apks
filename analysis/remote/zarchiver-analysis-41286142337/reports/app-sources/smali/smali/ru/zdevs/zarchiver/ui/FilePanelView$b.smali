.class public final Lru/zdevs/zarchiver/ui/FilePanelView$b;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/FilePanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/FilePanelView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/FilePanelView;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$b;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatMode()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    neg-int v0, p2

    .line 6
    int-to-float v0, v0

    .line 7
    mul-float v0, v0, p1

    .line 8
    .line 9
    float-to-int p1, v0

    .line 10
    add-int/2addr p2, p1

    .line 11
    sget p1, Lru/zdevs/zarchiver/ui/FilePanelView;->D:I

    .line 12
    .line 13
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$b;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->f(IZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
