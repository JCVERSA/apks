.class public final Llli;
.super Lg4i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lg4i;-><init>()V

    iput-object p1, p0, Llli;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llli;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lg4i;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lg4i;->f(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Llli;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object p0, p0, Llli;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Liji;

    invoke-direct {v0}, Liji;-><init>()V

    invoke-static {p0, v0}, Ls5i;->c(Ljava/util/Set;Lw2i;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lg4i;->g(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Llli;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Lg4i;->e()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 3

    iget-object v0, p0, Llli;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-super {p0}, Lg4i;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lg4i;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object p0, p0, Llli;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljki;

    invoke-direct {v0}, Ljki;-><init>()V

    invoke-static {p0, v0}, Ls5i;->c(Ljava/util/Set;Lw2i;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 2

    invoke-super {p0}, Lg4i;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lg4i;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
