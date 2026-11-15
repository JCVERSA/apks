.class public final Lyw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final f:Ljava/util/Map;

.field public static final g:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field public final b:Z

.field public c:I

.field public d:Z

.field public e:Lfreemarker/ext/beans/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyw0;->f:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lyw0;->g:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lyw0;->c:I

    invoke-static {p1}, Lfreemarker/ext/beans/b;->A(Lfreemarker/template/Version;)Z

    move-result p1

    iput-boolean p1, p0, Lyw0;->b:Z

    return-void
.end method

.method public static h()V
    .locals 4

    :goto_0
    sget-object v0, Lyw0;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lyw0;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lfreemarker/ext/beans/c;
    .locals 4

    iget-object v0, p0, Lyw0;->e:Lfreemarker/ext/beans/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/ext/beans/c;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lfreemarker/ext/beans/c;-><init>(Lyw0;Ljava/lang/Object;ZZ)V

    return-object v0

    :cond_0
    sget-object v0, Lyw0;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lyw0;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyw0;

    new-instance v2, Lfreemarker/ext/beans/c;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, p0, v3, v1, v1}, Lfreemarker/ext/beans/c;-><init>(Lyw0;Ljava/lang/Object;ZZ)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v3, Lyw0;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lyw0;->h()V

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lyw0;->d:Z

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to clone ClassIntrospectorBuilder"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lyw0;->c:I

    return p0
.end method

.method public e()Lfreemarker/ext/beans/d;
    .locals 0

    iget-object p0, p0, Lyw0;->e:Lfreemarker/ext/beans/d;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyw0;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lyw0;

    iget-boolean v2, p0, Lyw0;->b:Z

    iget-boolean v3, p1, Lyw0;->b:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lyw0;->d:Z

    iget-boolean v3, p1, Lyw0;->d:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lyw0;->c:I

    iget v3, p1, Lyw0;->c:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lyw0;->e:Lfreemarker/ext/beans/d;

    iget-object p1, p1, Lyw0;->e:Lfreemarker/ext/beans/d;

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public f()Llo6;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lyw0;->b:Z

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget-boolean v0, p0, Lyw0;->b:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    iget-boolean v4, p0, Lyw0;->d:Z

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget v1, p0, Lyw0;->c:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget-object p0, p0, Lyw0;->e:Lfreemarker/ext/beans/d;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    mul-int/2addr v0, v3

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public i(Lfreemarker/ext/beans/d;)V
    .locals 0

    iput-object p1, p0, Lyw0;->e:Lfreemarker/ext/beans/d;

    return-void
.end method
