.class public final Lio/appmetrica/analytics/impl/la;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lio/appmetrica/analytics/impl/la;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/sd;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/la;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/la;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/la;->d:Lio/appmetrica/analytics/impl/la;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/sd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/sd;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/la;->a:Lio/appmetrica/analytics/impl/sd;

    invoke-static {}, Lio/appmetrica/analytics/impl/Mj;->a()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/la;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/la;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ua;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/la;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;->onCreate(Landroid/content/Context;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/la;->a:Lio/appmetrica/analytics/impl/sd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->s:Lio/appmetrica/analytics/impl/Xc;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Xc;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/bk;->a(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/impl/Xj;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->B()Lio/appmetrica/analytics/impl/Xn;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Xn;->b()Lio/appmetrica/analytics/impl/Tn;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Xj;-><init>(Lio/appmetrica/analytics/impl/Tn;)V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Pc;->a(Landroid/content/Context;)V

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->p()Lio/appmetrica/analytics/impl/ud;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ud;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/la;->c:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/la;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/la;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/la;->c:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method
