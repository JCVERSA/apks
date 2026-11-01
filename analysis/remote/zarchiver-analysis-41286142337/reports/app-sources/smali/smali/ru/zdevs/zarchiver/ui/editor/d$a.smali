.class public final Lru/zdevs/zarchiver/ui/editor/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/editor/d;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/d;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/d$a;->a:Lru/zdevs/zarchiver/ui/editor/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/d$a;->a:Lru/zdevs/zarchiver/ui/editor/d;

    .line 3
    .line 4
    iput v0, v1, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 5
    .line 6
    iget-object v0, v1, Lru/zdevs/zarchiver/ui/editor/d;->o:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
