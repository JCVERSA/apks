.class public Lkotlinx/serialization/json/internal/j;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Lkotlinx/serialization/json/internal/h0;

.field private b:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/h0;)V
    .locals 1

    .line 1
    const-string v0, "writer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public d(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/h0;->writeLong(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/h0;->a(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/h0;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/h0;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/h0;->writeLong(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public i(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/json/internal/h0;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/h0;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k(S)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/h0;->writeLong(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/h0;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/h0;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method

.method public p()V
    .locals 0

    .line 1
    return-void
.end method
