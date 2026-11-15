.class public final Lv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lv;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lv$a;->b()Lv;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Lv;
    .locals 0

    invoke-static {}, Lv;->a()Lv;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lv;

    invoke-direct {p0}, Lv;-><init>()V

    invoke-static {p0}, Lv;->b(Lv;)V

    :cond_0
    invoke-static {}, Lv;->a()Lv;

    move-result-object p0

    return-object p0
.end method
