.class public Lxn9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Lxn9;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/transsion/dbdata/beans/ThemeData;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxn9;->d:Ljava/util/List;

    return-void
.end method

.method public static c()Lxn9;
    .locals 2

    sget-object v0, Lxn9;->e:Lxn9;

    if-nez v0, :cond_1

    const-class v0, Lxn9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxn9;->e:Lxn9;

    if-nez v1, :cond_0

    new-instance v1, Lxn9;

    invoke-direct {v1}, Lxn9;-><init>()V

    sput-object v1, Lxn9;->e:Lxn9;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lxn9;->e:Lxn9;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lxn9;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Los0;

    invoke-interface {v1}, Los0;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxn9;->a:Z

    iput-boolean v0, p0, Lxn9;->b:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lxn9;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Los0;

    invoke-interface {v1}, Los0;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxn9;->a:Z

    return-void
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lxn9;->a:Z

    return p0
.end method

.method public e(Los0;)V
    .locals 0

    iget-object p0, p0, Lxn9;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Los0;)V
    .locals 0

    iget-object p0, p0, Lxn9;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lxn9;->b:Z

    return-void
.end method

.method public h(Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 0

    iput-object p1, p0, Lxn9;->c:Lcom/transsion/dbdata/beans/ThemeData;

    return-void
.end method
