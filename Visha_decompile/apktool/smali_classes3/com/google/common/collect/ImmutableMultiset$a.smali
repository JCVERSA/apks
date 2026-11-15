.class public Lcom/google/common/collect/ImmutableMultiset$a;
.super Ldgb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultiset;->iterator()Ldgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$a;->d:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->e:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Ldgb;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->d:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j$a;

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:I

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:I

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
