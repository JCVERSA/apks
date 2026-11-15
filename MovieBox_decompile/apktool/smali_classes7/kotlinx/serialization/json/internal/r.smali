.class public final Lkotlinx/serialization/json/internal/r;
.super Lkotlinx/serialization/json/internal/j;
.source "source.java"


# instance fields
.field private final c:Lkotlinx/serialization/json/a;

.field private d:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/h0;Lkotlinx/serialization/json/a;)V
    .locals 1

    .line 1
    const-string v0, "writer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "json"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/j;-><init>(Lkotlinx/serialization/json/internal/h0;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lkotlinx/serialization/json/internal/r;->c:Lkotlinx/serialization/json/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/j;->n(Z)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/r;->d:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iput v1, p0, Lkotlinx/serialization/json/internal/r;->d:I

    .line 9
    .line 10
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/j;->n(Z)V

    .line 3
    .line 4
    .line 5
    const-string v1, "\n"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lkotlinx/serialization/json/internal/r;->d:I

    .line 11
    .line 12
    :goto_0
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lkotlinx/serialization/json/internal/r;->c:Lkotlinx/serialization/json/a;

    .line 15
    .line 16
    invoke-virtual {v2}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->i()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/j;->e(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/r;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lkotlinx/serialization/json/internal/r;->d:I

    .line 6
    .line 7
    return-void
.end method
