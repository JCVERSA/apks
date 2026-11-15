.class public final Lcom/transsion/dbdata/source/internal/MediaNameComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;,
        Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/dbdata/source/internal/MediaNameComparator;

.field public static final b:[Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final d:Ljava/text/Collator;

.field public static e:Lkotlinx/coroutines/j;

.field public static final f:Lnk1;

.field public static final g:Lbc7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->a:Lcom/transsion/dbdata/source/internal/MediaNameComparator;

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->b:[Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->d:Ljava/text/Collator;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->f:Lnk1;

    new-instance v0, Lbc7;

    new-instance v1, Lyj6;

    invoke-direct {v1}, Lyj6;-><init>()V

    new-instance v2, Lzj6;

    invoke-direct {v2}, Lzj6;-><init>()V

    const/16 v3, 0x20

    invoke-direct {v0, v3, v1, v2}, Lbc7;-><init>(ILc74;Le74;)V

    sput-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->g:Lbc7;

    sget-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->a:Lcom/transsion/dbdata/source/internal/MediaNameComparator;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->q()V

    const-string v0, "MediaNameComparator"

    const-string v1, "MediaNameComparator initialized with 16 shards"

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->o(Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->d:Ljava/text/Collator;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/dbdata/source/internal/MediaNameComparator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->p()V

    return-void
.end method

.method public static final n()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static final o(Ljava/util/List;)Lzfb;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final f(Ljava/util/concurrent/ConcurrentHashMap;)I
    .locals 5

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p0, v1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "<get-entries>(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/dbdata/source/internal/MediaNameComparator$cleanupShard$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$cleanupShard$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    move v2, v0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final g(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->m(Ljava/lang/String;)Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->m(Ljava/lang/String;)Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->h(Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error comparing items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaNameComparator"

    invoke-static {v1, v0, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->d:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public final h(Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;)I
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Ly45;->l(II)I

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const-string p0, "MediaNameComparator"

    sget-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->g:Lbc7;

    invoke-virtual {v0}, Lbc7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    const-string v4, "substring(...)"

    if-le v3, v2, :cond_1

    :try_start_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;

    invoke-direct {v5, v2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;

    invoke-direct {v6, v4, v5}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$a;-><init>(J)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;

    invoke-direct {v4, v3}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    sget-object p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->g:Lbc7;

    invoke-virtual {p1, v0}, Lbc7;->b(Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error computing sort key segments for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$a$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_5
    return-object p0

    :goto_6
    sget-object p1, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->g:Lbc7;

    invoke-virtual {p1, v0}, Lbc7;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final j(Ljava/lang/String;)J
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-wide v0, 0x811c9dc5L

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide/32 v3, 0x1000193

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->j(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final l(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public final m(Ljava/lang/String;)Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->l(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->b:[Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;

    if-eqz v2, :cond_0

    sget-object p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;->c(J)V

    return-object v2

    :cond_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "ROOT"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toLowerCase(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;

    sget-object v3, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;-><init>(Ljava/util/List;J)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/transsion/dbdata/source/internal/MediaNameComparator$b;)V

    return-object v2
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->b:[Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->f(Ljava/util/concurrent/ConcurrentHashMap;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Background cleanup completed, removed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaNameComparator"

    invoke-static {v0, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final q()V
    .locals 6

    sget-object v0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->f:Lnk1;

    new-instance v3, Lcom/transsion/dbdata/source/internal/MediaNameComparator$startBackgroundCleanup$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/transsion/dbdata/source/internal/MediaNameComparator$startBackgroundCleanup$1;-><init>(Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object p0

    sput-object p0, Lcom/transsion/dbdata/source/internal/MediaNameComparator;->e:Lkotlinx/coroutines/j;

    return-void
.end method
