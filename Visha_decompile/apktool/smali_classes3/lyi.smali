.class public final Llyi;
.super Lbyi;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljyi;)V
    .locals 0

    invoke-direct {p0, p1}, Lbyi;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static b(I)Lkyi;
    .locals 2

    new-instance v0, Lkyi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkyi;-><init>(ILjyi;)V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 3

    invoke-virtual {p0}, Lbyi;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcyi;->b(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lbyi;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Llyi;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
