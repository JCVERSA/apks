.class final Landroidx/window/core/f;
.super Landroidx/window/core/SpecificationComputer;
.source "source.java"


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Landroidx/window/core/SpecificationComputer$VerificationMode;

.field private final e:Landroidx/window/core/e;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/window/core/SpecificationComputer$VerificationMode;Landroidx/window/core/e;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tag"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "verificationMode"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "logger"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/window/core/f;->b:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/window/core/f;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/window/core/f;->d:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/window/core/f;->e:Landroidx/window/core/e;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/core/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 6

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "condition"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/window/core/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    move-object p2, p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p2, Landroidx/window/core/d;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/window/core/f;->b:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/window/core/f;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/window/core/f;->e:Landroidx/window/core/e;

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/window/core/f;->d:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 36
    .line 37
    move-object v0, p2

    .line 38
    move-object v3, p1

    .line 39
    invoke-direct/range {v0 .. v5}, Landroidx/window/core/d;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/e;Landroidx/window/core/SpecificationComputer$VerificationMode;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object p2
.end method
