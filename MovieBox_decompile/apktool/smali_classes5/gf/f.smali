.class public final Lgf/f;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lgf/o0;

.field private final b:Lgf/e;


# direct methods
.method public constructor <init>(Lgf/o0;Lgf/e;)V
    .locals 1

    .line 1
    const-string v0, "pb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chainTask"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lgf/f;->a:Lgf/o0;

    .line 15
    .line 16
    iput-object p2, p0, Lgf/f;->b:Lgf/e;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgf/f;->a:Lgf/o0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgf/o0;->l(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgf/f;->b:Lgf/e;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lgf/e;->a(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/util/List;Lff/a;)V
    .locals 3

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dialogInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lgf/f;->a:Lgf/o0;

    .line 12
    .line 13
    iget-object v1, p0, Lgf/f;->b:Lgf/e;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, p1, p2}, Lgf/o0;->O(Lgf/e;ZLjava/util/List;Lff/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d(Lcom/permissionx/guolindev/dialog/RationaleDialog;)V
    .locals 3

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgf/f;->a:Lgf/o0;

    .line 7
    .line 8
    iget-object v1, p0, Lgf/f;->b:Lgf/e;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lgf/o0;->N(Lgf/e;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(Ljava/util/List;Lff/a;)V
    .locals 3

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dialogInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lgf/f;->a:Lgf/o0;

    .line 12
    .line 13
    iget-object v1, p0, Lgf/f;->b:Lgf/e;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2, p1, p2}, Lgf/o0;->O(Lgf/e;ZLjava/util/List;Lff/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
