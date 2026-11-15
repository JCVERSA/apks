.class public final Llva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# static fields
.field public static final d:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:Lzua;

.field public final c:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    sput-object v0, Llva;->d:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Lzua;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lzua;->b:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Llva;->b:Lzua;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Llva;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Llva;
    .locals 0

    invoke-static {p0}, Llva;->d(Landroid/os/Bundle;)Llva;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/os/Bundle;)Llva;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Llva;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Lzua;->g:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    check-cast v0, Lzua;

    const/4 v1, 0x1

    invoke-static {v1}, Llva;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    new-instance v1, Llva;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->c([I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Llva;-><init>(Lzua;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 0

    iget-object p0, p0, Llva;->b:Lzua;

    iget p0, p0, Lzua;->d:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Llva;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Llva;

    iget-object v2, p0, Llva;->b:Lzua;

    iget-object v3, p1, Llva;->b:Lzua;

    invoke-virtual {v2, v3}, Lzua;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Llva;->c:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Llva;->b:Lzua;

    invoke-virtual {v0}, Lzua;->hashCode()I

    move-result v0

    iget-object p0, p0, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Llva;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llva;->b:Lzua;

    invoke-virtual {v2}, Lzua;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {v1}, Llva;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
