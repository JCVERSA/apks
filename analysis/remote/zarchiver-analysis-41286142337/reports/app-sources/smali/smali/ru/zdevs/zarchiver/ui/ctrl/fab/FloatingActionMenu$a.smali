.class public final Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;
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

.field public final synthetic b:Lb1/a;

.field public final synthetic c:Z

.field public final synthetic d:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;ZLb1/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->d:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->a:Z

    iput-object p3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->b:Lb1/a;

    iput-boolean p4, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->d:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->a:Z

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 13
    .line 14
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->b:Lb1/a;

    .line 15
    .line 16
    if-eq v1, v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;->c:Z

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lb1/a;->f(ZZ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
