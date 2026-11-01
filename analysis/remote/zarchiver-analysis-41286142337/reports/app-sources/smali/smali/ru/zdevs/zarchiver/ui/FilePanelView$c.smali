.class public final Lru/zdevs/zarchiver/ui/FilePanelView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/FilePanelView;->a()V
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

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$c;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$c;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/FilePanelView;->C:Lru/zdevs/zarchiver/ui/FilePanelView$e;

    .line 11
    .line 12
    const-wide/16 v1, 0x258

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
