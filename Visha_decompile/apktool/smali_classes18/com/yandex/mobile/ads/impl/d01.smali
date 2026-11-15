.class public final Lcom/yandex/mobile/ads/impl/d01;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/d01$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rz0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rz0;)V
    .locals 1

    const-string v0, "mediationNetworkValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d01;->a:Lcom/yandex/mobile/ads/impl/rz0;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2c

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    const-string v2, "-"

    invoke-static {v2, v1}, Lg1a;->J(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    .line 3
    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lg1a;->J(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, " "

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lg1a;->J(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/d01$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/d01$a$a;->b:Lcom/yandex/mobile/ads/impl/d01$a$a;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/d01$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/d01$a$a;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 20
    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/yandex/mobile/ads/impl/d01$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/d01$a$a;->b:Lcom/yandex/mobile/ads/impl/d01$a$a;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/d01$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/d01$a$a;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 23
    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ADAPTERS Version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/yandex/mobile/ads/impl/d01$a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/d01$a$a;->b:Lcom/yandex/mobile/ads/impl/d01$a$a;

    invoke-direct {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/d01$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/d01$a$a;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 11

    if-eqz p3, :cond_0

    .line 7
    sget-object p3, Lcom/yandex/mobile/ads/impl/d01$a$a;->b:Lcom/yandex/mobile/ads/impl/d01$a$a;

    .line 8
    const-string v0, "ADAPTERS"

    const-string v1, "INTEGRATED SUCCESSFULLY"

    goto :goto_0

    .line 9
    :cond_0
    sget-object p3, Lcom/yandex/mobile/ads/impl/d01$a$a;->c:Lcom/yandex/mobile/ads/impl/d01$a$a;

    .line 10
    const-string v0, "MISSING ADAPTERS"

    const-string v1, "NOT INTEGRATED"

    .line 11
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Lcom/yandex/mobile/ads/impl/qz0$c;

    .line 14
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qz0$c;->a()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x3d

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/impl/d01$a;

    invoke-direct {v0, p1, p3}, Lcom/yandex/mobile/ads/impl/d01$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/d01$a$a;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p1, Lcom/yandex/mobile/ads/impl/d01$a;

    invoke-direct {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/d01$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/d01$a$a;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 26
    const-string v0, "networks"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/qz0;

    .line 29
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qz0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/d01;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qz0;->e()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/qz0$c;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qz0$c;->b()Ljava/lang/String;

    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/d01;->a:Lcom/yandex/mobile/ads/impl/rz0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/rz0;->a(Lcom/yandex/mobile/ads/impl/qz0;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/d01;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qz0;->d()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v2, v1, v4}, Lcom/yandex/mobile/ads/impl/d01;->a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
