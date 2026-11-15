.class public final Lesi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lesi;

.field public static final c:Lesi;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lesi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lesi;-><init>(Z)V

    sput-object v0, Lesi;->c:Lesi;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lesi;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lesi;
    .locals 1

    sget-object v0, Lxti;->c:Lxti;

    sget-object v0, Lesi;->c:Lesi;

    return-object v0
.end method

.method public static b()Lesi;
    .locals 2

    sget-object v0, Lesi;->b:Lesi;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lesi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lesi;->b:Lesi;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    sget-object v1, Lxti;->c:Lxti;

    const-class v1, Lesi;

    invoke-static {v1}, Ljsi;->a(Ljava/lang/Class;)Lesi;

    move-result-object v1

    sput-object v1, Lesi;->b:Lesi;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final c(Lrti;I)Lnsi;
    .locals 1

    new-instance v0, Ldsi;

    invoke-direct {v0, p1, p2}, Ldsi;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lesi;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
