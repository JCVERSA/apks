.class public final Lcom/yandex/div/storage/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/storage/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div/storage/e$a;

.field public static final d:Lcom/yandex/div/storage/e;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div/storage/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/storage/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/storage/e;->c:Lcom/yandex/div/storage/e$a;

    new-instance v0, Lcom/yandex/div/storage/e;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/div/storage/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/yandex/div/storage/e;->d:Lcom/yandex/div/storage/e;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "resultData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errors"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/div/storage/e;
    .locals 1

    sget-object v0, Lcom/yandex/div/storage/e;->d:Lcom/yandex/div/storage/e;

    return-object v0
.end method

.method public static synthetic d(Lcom/yandex/div/storage/e;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/yandex/div/storage/e;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/storage/e;->c(Ljava/util/List;Ljava/util/List;)Lcom/yandex/div/storage/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/Collection;)Lcom/yandex/div/storage/e;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/yandex/div/storage/e;->d(Lcom/yandex/div/storage/e;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/yandex/div/storage/e;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)Lcom/yandex/div/storage/e;
    .locals 0

    const-string p0, "resultData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "errors"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/storage/e;

    invoke-direct {p0, p1, p2}, Lcom/yandex/div/storage/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/storage/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/storage/e;

    iget-object v1, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawJsonRepositoryResult(resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/storage/e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/storage/e;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
