.class Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private transient inverse:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    sget-object v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    move-object v3, v0

    check-cast v3, [Ljava/util/Map$Entry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;-><init>([Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->EMPTY:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    return-void
.end method

.method private constructor <init>([Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;[",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    iput-object p2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    iput-object p3, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    iput p4, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->mask:I

    iput p5, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method public static synthetic access$100(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->mask:I

    return p0
.end method

.method public static synthetic access$300(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return p0
.end method

.method public static synthetic access$400(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)[Ljava/util/Map$Entry;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method private static checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry<",
            "**>;)V"
        }
    .end annotation

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "value"

    invoke-static {v0, v1, p1, p2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {p2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/bumptech/glide/repackaged/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    invoke-static {v2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object v4

    invoke-static {v2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object v5

    array-length v2, v1

    if-ne v0, v2, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;->createEntryArray(I)[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    move-object v6, v2

    :goto_0
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bumptech/glide/repackaged/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v11}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Hashing;->smear(I)I

    move-result v13

    and-int/2addr v13, v7

    invoke-static {v12}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Hashing;->smear(I)I

    move-result v14

    and-int/2addr v14, v7

    aget-object v15, v4, v13

    invoke-static {v9, v3, v15}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;)V

    aget-object v0, v5, v14

    invoke-static {v10, v3, v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;)V

    if-nez v0, :cond_2

    if-nez v15, :cond_2

    instance-of v0, v3, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    if-eqz v0, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    invoke-virtual {v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v3, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    invoke-direct {v3, v9, v10}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;

    invoke-direct {v3, v9, v10, v15, v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;)V

    :goto_2
    aput-object v3, v4, v13

    aput-object v3, v5, v14

    aput-object v3, v6, v2

    xor-int v0, v11, v12

    add-int/2addr v8, v0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;-><init>([Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    return-object v0
.end method


# virtual methods
.method public createEntrySet()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet;->of()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {p1, v0, p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return p0
.end method

.method public inverse()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;->of()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;

    :cond_1
    return-object v0
.end method

.method public isHashCodeFast()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    array-length p0, p0

    return p0
.end method
