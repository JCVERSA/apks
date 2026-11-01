.class public final Lru/zdevs/zarchiver/ui/editor/EditableView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/EditableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/editor/EditableView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$a;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$a;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lc1/d;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
