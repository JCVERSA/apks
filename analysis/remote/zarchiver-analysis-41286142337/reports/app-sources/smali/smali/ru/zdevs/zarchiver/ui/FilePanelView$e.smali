.class public final Lru/zdevs/zarchiver/ui/FilePanelView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$e;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView$e;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-static {v1}, Lz0/f;->a(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget-object v0, v0, v1

    .line 15
    .line 16
    invoke-static {v0}, Lz0/f;->a(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
