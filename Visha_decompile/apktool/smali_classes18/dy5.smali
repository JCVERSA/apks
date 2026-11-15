.class public Ldy5;
.super Lyz9;
.source "SourceFile"

# interfaces
.implements Lyfa;


# static fields
.field public static final i:Lfq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcy5;

    invoke-direct {v0}, Lcy5;-><init>()V

    sput-object v0, Ldy5;->i:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lyz9;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lzfa;
    .locals 2

    iget-object p1, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance p2, Ljava/lang/Character;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lrd0;->f:Lzfa;

    return-object p0

    :cond_0
    move-object p2, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p0, Lrd0;->f:Lzfa;

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    invoke-virtual {p0, p1}, Lrd0;->n(Lzfa;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrd0;->o(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lrd0;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lrd0;->l()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Ldy5;->l()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
