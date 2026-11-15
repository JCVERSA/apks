.class final Landroidx/compose/runtime/SnapshotMutableStateImpl$a;
.super Landroidx/compose/runtime/snapshots/e0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SnapshotMutableStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/e0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;->c:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public d()Landroidx/compose/runtime/snapshots/e0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
