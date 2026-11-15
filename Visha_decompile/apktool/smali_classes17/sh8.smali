.class public final Lsh8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh8$a;,
        Lsh8$b;
    }
.end annotation


# static fields
.field public static final d:Lsh8$b;


# instance fields
.field public final a:Lsh8$a;

.field public final b:Lsh8$a;

.field public final c:Landroidx/collection/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsh8$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsh8$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsh8;->d:Lsh8$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsh8$a;

    invoke-direct {v0}, Lsh8$a;-><init>()V

    iput-object v0, p0, Lsh8;->a:Lsh8$a;

    new-instance v0, Lsh8$a;

    invoke-direct {v0}, Lsh8$a;-><init>()V

    iput-object v0, p0, Lsh8;->b:Lsh8$a;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lsh8;->c:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lsh8;->a:Lsh8$a;

    invoke-virtual {v0}, Lsh8$a;->f()V

    iget-object v0, p0, Lsh8;->b:Lsh8$a;

    invoke-virtual {v0}, Lsh8$a;->f()V

    iget-object p0, p0, Lsh8;->c:Landroidx/collection/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsh8$a;

    invoke-virtual {v0}, Lsh8$a;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lsh8;->a:Lsh8$a;

    invoke-virtual {v1}, Lsh8$a;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "view obtaining - total count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsh8;->d:Lsh8$b;

    iget-object v2, p0, Lsh8;->a:Lsh8$a;

    invoke-virtual {v2}, Lsh8$a;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lsh8$b;->a(Lsh8$b;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lth8;->b(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "view obtaining - total time (\u00b5s)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsh8;->c:Landroidx/collection/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsh8$a;

    invoke-virtual {v2}, Lsh8$a;->e()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blocking view obtaining for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsh8$a;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - avg time (\u00b5s)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsh8;->d:Lsh8$b;

    invoke-virtual {v2}, Lsh8$a;->d()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lsh8$b;->a(Lsh8$b;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lth8;->b(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsh8;->b:Lsh8$a;

    invoke-virtual {v1}, Lsh8$a;->e()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lsh8;->b:Lsh8$a;

    invoke-virtual {v1}, Lsh8$a;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "long view requests - count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lsh8;->d:Lsh8$b;

    iget-object p0, p0, Lsh8;->b:Lsh8$a;

    invoke-virtual {p0}, Lsh8$a;->d()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lsh8$b;->a(Lsh8$b;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lth8;->b(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "long view requests - avg time (\u00b5s)"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lsh8;->b:Lsh8$a;

    invoke-virtual {v0}, Lsh8$a;->e()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lsh8;->c:Landroidx/collection/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsh8$a;

    invoke-virtual {v0}, Lsh8$a;->e()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "viewName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lsh8;->a:Lsh8$a;

    invoke-virtual {v0, p2, p3}, Lsh8$a;->b(J)V

    iget-object p0, p0, Lsh8;->c:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lsh8$a;

    invoke-direct {v0}, Lsh8$a;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v0, Lsh8$a;

    invoke-virtual {v0, p2, p3}, Lsh8$a;->b(J)V

    return-void
.end method

.method public final e(J)V
    .locals 0

    iget-object p0, p0, Lsh8;->a:Lsh8$a;

    invoke-virtual {p0, p1, p2}, Lsh8$a;->b(J)V

    return-void
.end method

.method public final f(J)V
    .locals 2

    iget-object v0, p0, Lsh8;->a:Lsh8$a;

    invoke-virtual {v0, p1, p2}, Lsh8$a;->a(J)V

    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lsh8;->b:Lsh8$a;

    invoke-virtual {p0, p1, p2}, Lsh8$a;->b(J)V

    :cond_0
    return-void
.end method
