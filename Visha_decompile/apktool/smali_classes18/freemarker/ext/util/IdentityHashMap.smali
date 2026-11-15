.class public Lfreemarker/ext/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/util/IdentityHashMap$c;,
        Lfreemarker/ext/util/IdentityHashMap$a;,
        Lfreemarker/ext/util/IdentityHashMap$b;
    }
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2

.field private static final KEYS:I = 0x0

.field private static final VALUES:I = 0x1

.field private static emptyHashIterator:Lfreemarker/ext/util/IdentityHashMap$a; = null

.field public static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient count:I

.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private loadFactor:F

.field private transient modCount:I

.field private transient table:[Lfreemarker/ext/util/IdentityHashMap$b;

.field private threshold:I

.field private transient values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$a;

    invoke-direct {v0}, Lfreemarker/ext/util/IdentityHashMap$a;-><init>()V

    sput-object v0, Lfreemarker/ext/util/IdentityHashMap;->emptyHashIterator:Lfreemarker/ext/util/IdentityHashMap$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    .line 13
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/util/IdentityHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 12
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/util/IdentityHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 4
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 6
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    :cond_0
    iput p2, p0, Lfreemarker/ext/util/IdentityHashMap;->loadFactor:F

    .line 8
    new-array v0, p1, [Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 9
    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->threshold:I

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Illegal Load factor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Illegal Initial Capacity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/util/IdentityHashMap;-><init>(IF)V

    .line 15
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$000(Lfreemarker/ext/util/IdentityHashMap;I)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/ext/util/IdentityHashMap;->getHashIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lfreemarker/ext/util/IdentityHashMap;)I
    .locals 0

    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return p0
.end method

.method public static synthetic access$110(Lfreemarker/ext/util/IdentityHashMap;)I
    .locals 2

    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return v0
.end method

.method public static synthetic access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$b;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    return-object p0
.end method

.method public static synthetic access$300(Lfreemarker/ext/util/IdentityHashMap;)I
    .locals 0

    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    return p0
.end method

.method public static synthetic access$308(Lfreemarker/ext/util/IdentityHashMap;)I
    .locals 2

    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    return v0
.end method

.method private getHashIterator(I)Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    if-nez v0, :cond_0

    sget-object p0, Lfreemarker/ext/util/IdentityHashMap;->emptyHashIterator:Lfreemarker/ext/util/IdentityHashMap$a;

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$c;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/util/IdentityHashMap$c;-><init>(Lfreemarker/ext/util/IdentityHashMap;I)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lfreemarker/ext/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 7

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lfreemarker/ext/util/IdentityHashMap$b;

    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    int-to-float v4, v2

    iget v5, p0, Lfreemarker/ext/util/IdentityHashMap;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->threshold:I

    iput-object v3, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    :goto_0
    add-int/lit8 p0, v1, -0x1

    if-lez v1, :cond_1

    aget-object v1, v0, p0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, v1, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iget v5, v1, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    rem-int/2addr v5, v2

    aget-object v6, v3, v5

    iput-object v6, v1, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    aput-object v1, v3, v5

    move-object v1, v4

    goto :goto_1

    :cond_0
    move v1, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, v1, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, v1, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length p0, p0

    return p0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/util/IdentityHashMap;

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length v1, v1

    new-array v1, v1, [Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object v1, v0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length v1, v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v1, v0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    iget-object v4, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lfreemarker/ext/util/IdentityHashMap$b;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/util/IdentityHashMap$b;

    :cond_0
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_0

    :cond_1
    iput-object v3, v0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    iput-object v3, v0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    iput-object v3, v0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    const/4 p0, 0x0

    iput p0, v0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v3, v2

    array-length v4, p0

    rem-int/2addr v3, v4

    aget-object p0, p0, v3

    :goto_0
    if-eqz p0, :cond_3

    iget v3, p0, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_0

    :cond_1
    aget-object p0, p0, v0

    :goto_1
    if-eqz p0, :cond_3

    iget-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_3
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    array-length p1, p0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_5

    aget-object p1, p0, v1

    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p1, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    array-length v1, p0

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5

    aget-object v1, p0, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-object v3, v1, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    iget-object v1, v1, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/ext/util/a;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/a;-><init>(Lfreemarker/ext/util/IdentityHashMap;)V

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    array-length v2, p0

    rem-int/2addr v1, v2

    aget-object p0, p0, v1

    :goto_0
    if-eqz p0, :cond_3

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1

    :goto_1
    if-eqz p0, :cond_3

    iget-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0

    :cond_2
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lox4;

    invoke-direct {v0, p0}, Lox4;-><init>(Lfreemarker/ext/util/IdentityHashMap;)V

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    return-object p0
.end method

.method public loadFactor()F
    .locals 0

    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->loadFactor:F

    return p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    const v1, 0x7fffffff

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    and-int v3, v2, v1

    array-length v4, v0

    rem-int/2addr v3, v4

    aget-object v4, v0, v3

    :goto_0
    if-eqz v4, :cond_4

    iget v5, v4, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    if-ne v5, v2, :cond_0

    iget-object v5, v4, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-ne p1, v5, :cond_0

    iget-object p0, v4, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iput-object p2, v4, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v4, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v3, v0, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, v3, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_2

    iget-object p0, v3, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iput-object p2, v3, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0

    :cond_2
    iget-object v3, v3, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_3
    move v3, v2

    :cond_4
    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    iget v5, p0, Lfreemarker/ext/util/IdentityHashMap;->threshold:I

    if-lt v4, v5, :cond_5

    invoke-direct {p0}, Lfreemarker/ext/util/IdentityHashMap;->rehash()V

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    and-int/2addr v1, v2

    array-length v3, v0

    rem-int v3, v1, v3

    :cond_5
    new-instance v1, Lfreemarker/ext/util/IdentityHashMap$b;

    aget-object v4, v0, v3

    invoke-direct {v1, v2, p1, p2, v4}, Lfreemarker/ext/util/IdentityHashMap$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/IdentityHashMap$b;)V

    aput-object v1, v0, v3

    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lfreemarker/ext/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$b;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v3, v2

    array-length v4, v0

    rem-int/2addr v3, v4

    aget-object v4, v0, v3

    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_5

    iget v6, v4, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    if-ne v6, v2, :cond_1

    iget-object v6, v4, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-ne p1, v6, :cond_1

    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    if-eqz v5, :cond_0

    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object p1, v5, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_1

    :cond_0
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    aput-object p1, v0, v3

    :goto_1
    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    iget-object p0, v4, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iput-object v1, v4, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v5, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    aget-object v2, v0, p1

    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_5

    iget-object v4, v2, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_4

    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    if-eqz v3, :cond_3

    iget-object p1, v2, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object p1, v3, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    goto :goto_3

    :cond_3
    iget-object v3, v2, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    aput-object v3, v0, p1

    :goto_3
    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    iget-object p0, v2, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iput-object v1, v2, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0

    :cond_4
    iget-object v3, v2, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lpx4;

    invoke-direct {v0, p0}, Lpx4;-><init>(Lfreemarker/ext/util/IdentityHashMap;)V

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    return-object p0
.end method
