.class public final Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;->b:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;->b:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 9
    .line 10
    iput v1, v2, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f:I

    .line 11
    .line 12
    iget-object v1, v2, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->n:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;->a(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
