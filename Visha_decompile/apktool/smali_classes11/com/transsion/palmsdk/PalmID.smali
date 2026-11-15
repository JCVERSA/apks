.class public abstract Lcom/transsion/palmsdk/PalmID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/palmsdk/PalmID$b;,
        Lcom/transsion/palmsdk/PalmID$c;,
        Lcom/transsion/palmsdk/PalmID$d;,
        Lcom/transsion/palmsdk/PalmID$a;,
        Lcom/transsion/palmsdk/PalmID$e;,
        Lcom/transsion/palmsdk/PalmID$LoginRecord;,
        Lcom/transsion/palmsdk/PalmID$Profile;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/transsion/palmsdk/PalmID;

.field public static d:Landroid/content/Context;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmID;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmID;->b:Ljava/util/List;

    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)Lcom/transsion/palmsdk/PalmID;
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/transsion/palmsdk/PalmID;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/transsion/palmsdk/PalmID;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_2

    const-class v0, Lcom/transsion/palmsdk/PalmID;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-direct {v1, p0, p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;-><init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V

    sput-object v1, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/PalmID;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/palmsdk/a;

    invoke-direct {p0}, Lcom/transsion/palmsdk/a;-><init>()V

    return-object p0

    :cond_0
    sget-object p0, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    if-nez p0, :cond_2

    const-class p0, Lcom/transsion/palmsdk/PalmID;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/palmsdk/a;

    invoke-direct {v0}, Lcom/transsion/palmsdk/a;-><init>()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/palmsdk/PalmID;->c:Lcom/transsion/palmsdk/PalmID;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/transsion/palmsdk/PalmID$c;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmID;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmID;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/transsion/palmsdk/PalmID$d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmID;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmID;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract c(Landroid/content/Context;Lcom/transsion/palmsdk/PalmID$b;)V
.end method

.method public abstract d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V
.end method

.method public g()Lcom/transsion/palmsdk/PalmAuthParam;
    .locals 1

    instance-of v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->x()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract i()Lcom/transsion/palmsdk/PalmID$Profile;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()J
.end method

.method public abstract m()Z
.end method

.method public abstract n()Z
.end method

.method public abstract o(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract p(Lcom/transsion/palmsdk/PalmID$a;)V
.end method

.method public q(Lcom/transsion/palmsdk/PalmID$c;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmID;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public r(Lcom/transsion/palmsdk/PalmID$d;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmID;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
