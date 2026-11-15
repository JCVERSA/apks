.class public abstract Lvg9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/List;

.field public static d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lvg9;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lvg9;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lvg9;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lvg9;->d:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lvg9;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lvg9;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c()Ljava/util/List;
    .locals 1

    sget-object v0, Lvg9;->b:Ljava/util/List;

    return-object v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lvg9;->d:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static e(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lvg9;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    sget-object v0, Lvg9;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static f(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lvg9;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    sget-object v0, Lvg9;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static g(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lvg9;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    sget-object v0, Lvg9;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static h(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lvg9;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    sget-object v0, Lvg9;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
