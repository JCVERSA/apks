.class Lcom/google/common/reflect/TypeToken$d;
.super Lcom/google/common/reflect/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/ImmutableSet$a;

.field final synthetic c:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$d;->c:Lcom/google/common/reflect/TypeToken;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/reflect/g;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method b(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method c(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/common/reflect/Types;->h(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method d(Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$d;->b:Lcom/google/common/collect/ImmutableSet$a;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method e(Ljava/lang/reflect/TypeVariable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/g;->a([Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method f(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/g;->a([Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
