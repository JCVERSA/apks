.class public final Lcom/yandex/div/internal/ComparisonFailure;
.super Ljava/lang/AssertionError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/ComparisonFailure$a;,
        Lcom/yandex/div/internal/ComparisonFailure$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0000\u0018\u0000 \u000e2\u00060\u0001j\u0002`\u0002:\u0002\u000f\u0010B!\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0005\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0006\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\t\u001a\u0004\u0008\u000c\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/yandex/div/internal/ComparisonFailure;",
        "Ljava/lang/AssertionError;",
        "Lkotlin/AssertionError;",
        "",
        "message",
        "expected",
        "actual",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Ljava/lang/String;",
        "getExpected",
        "()Ljava/lang/String;",
        "getActual",
        "getMessage",
        "Companion",
        "a",
        "b",
        "assertion_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/yandex/div/internal/ComparisonFailure$a;

.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final actual:Ljava/lang/String;

.field private final expected:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/ComparisonFailure$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/ComparisonFailure$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/ComparisonFailure;->Companion:Lcom/yandex/div/internal/ComparisonFailure$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "expected"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actual"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yandex/div/internal/ComparisonFailure;->expected:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/div/internal/ComparisonFailure;->actual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActual()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/ComparisonFailure;->actual:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpected()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/ComparisonFailure;->expected:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/yandex/div/internal/ComparisonFailure$b;

    iget-object v1, p0, Lcom/yandex/div/internal/ComparisonFailure;->expected:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/div/internal/ComparisonFailure;->actual:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/internal/ComparisonFailure$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/div/internal/ComparisonFailure$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
