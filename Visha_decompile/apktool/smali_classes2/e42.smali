.class public Le42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg29;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lfpc;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lb50;

.field public final d:Lge3;

.field public final e:Le8a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lj9b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le42;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lb50;Lfpc;Lge3;Le8a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le42;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Le42;->c:Lb50;

    iput-object p3, p0, Le42;->a:Lfpc;

    iput-object p4, p0, Le42;->d:Lge3;

    iput-object p5, p0, Le42;->e:Le8a;

    return-void
.end method

.method public static synthetic b(Le42;La9b;Lxd3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le42;->d(La9b;Lxd3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Le42;La9b;Lm9b;Lxd3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le42;->e(La9b;Lm9b;Lxd3;)V

    return-void
.end method


# virtual methods
.method public a(La9b;Lxd3;Lm9b;)V
    .locals 2

    iget-object v0, p0, Le42;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lb42;

    invoke-direct {v1, p0, p1, p3, p2}, Lb42;-><init>(Le42;La9b;Lm9b;Lxd3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d(La9b;Lxd3;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le42;->d:Lge3;

    invoke-interface {v0, p1, p2}, Lge3;->s(La9b;Lxd3;)Lv08;

    iget-object p0, p0, Le42;->a:Lfpc;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lfpc;->a(La9b;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic e(La9b;Lm9b;Lxd3;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le42;->c:Lb50;

    invoke-virtual {p1}, La9b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb50;->get(Ljava/lang/String;)Lz8b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Transport backend \'%s\' is not registered"

    invoke-virtual {p1}, La9b;->b()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Le42;->f:Ljava/util/logging/Logger;

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lm9b;->a(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Lz8b;->b(Lxd3;)Lxd3;

    move-result-object p3

    iget-object v0, p0, Le42;->e:Le8a;

    new-instance v1, Lc42;

    invoke-direct {v1, p0, p1, p3}, Lc42;-><init>(Le42;La9b;Lxd3;)V

    invoke-interface {v0, v1}, Le8a;->a(Le8a$a;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lm9b;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Le42;->f:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error scheduling event "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lm9b;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
