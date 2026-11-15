.class public final Lcom/yandex/div/internal/ComparisonFailure$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/ComparisonFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/ComparisonFailure$b$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div/internal/ComparisonFailure$b$a;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/ComparisonFailure$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/ComparisonFailure$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/ComparisonFailure$b;->f:Lcom/yandex/div/internal/ComparisonFailure$b$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->a:I

    iput-object p2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    const-string v1, "format(message, expected, actual)"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/ComparisonFailure$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/internal/ComparisonFailure$b;->f()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/ComparisonFailure$b;->g()V

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/ComparisonFailure$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/ComparisonFailure$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lxi;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lxi;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/ComparisonFailure$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->e:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/div/internal/ComparisonFailure$b;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    iget v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->a:I

    if-le v0, v1, :cond_0

    const-string v0, "..."

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    iget v3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->a:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->e:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->a:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v1, "..."

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget p0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->e:I

    sub-int/2addr v4, p0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    iget v3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->d:I

    if-lt v1, v2, :cond_1

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/yandex/div/internal/ComparisonFailure$b;->e:I

    return-void
.end method
