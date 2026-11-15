.class public final Lag$a;
.super Lqq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lar8;


# direct methods
.method public constructor <init>(Lar8;)V
    .locals 0

    invoke-direct {p0}, Lqq0;-><init>()V

    iput-object p1, p0, Lag$a;->a:Lar8;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0}, Lar8;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0}, Lar8;->b()[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public c(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lag$a;->g(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)V

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0, p1, p2}, Lar8;->c(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lfreemarker/ext/beans/b;Ljava/lang/Object;[Ljava/lang/Object;)Lzfa;
    .locals 0

    invoke-virtual {p0, p1, p3}, Lag$a;->g(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)V

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0, p1, p2, p3}, Lar8;->d(Lfreemarker/ext/beans/b;Ljava/lang/Object;[Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0}, Lar8;->e()Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0}, Lar8;->f()Z

    move-result p0

    return p0
.end method

.method public final g(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Lag$a;->a:Lar8;

    invoke-virtual {p0}, Lar8;->b()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    aget-object v2, p0, v1

    aget-object v3, p2, v1

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v5}, Lfreemarker/ext/beans/b;->E(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lag;->f:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "java.util.List"

    invoke-static {v4}, Lag;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lag;->f:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Lfreemarker/ext/beans/b;->g(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, p2, v1

    :cond_3
    instance-of v4, v3, Lmv0;

    if-eqz v4, :cond_9

    sget-object v4, Lag;->h:Ljava/lang/Class;

    const-string v5, "java.lang.Character"

    if-nez v4, :cond_4

    invoke-static {v5}, Lag;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lag;->h:Ljava/lang/Class;

    :cond_4
    if-eq v2, v4, :cond_8

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_8

    sget-object v4, Lag;->i:Ljava/lang/Class;

    if-nez v4, :cond_5

    const-string v4, "java.lang.String"

    invoke-static {v4}, Lag;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lag;->i:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lag;->h:Ljava/lang/Class;

    if-nez v4, :cond_6

    invoke-static {v5}, Lag;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lag;->h:Ljava/lang/Class;

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    check-cast v3, Lmv0;

    invoke-virtual {v3}, Lmv0;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_2

    :cond_8
    :goto_1
    new-instance v2, Ljava/lang/Character;

    check-cast v3, Lmv0;

    invoke-virtual {v3}, Lmv0;->a()C

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, p2, v1

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
