.class public final Lcom/transsion/version/update/UpdateManager$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/version/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/version/update/UpdateManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/version/update/UpdateManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/version/update/UpdateManager;->a()Lcom/transsion/version/update/UpdateManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Lcom/transsion/version/update/UpdateManager;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/version/update/UpdateManager;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/version/update/UpdateManager;->b(Lcom/transsion/version/update/UpdateManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0

    .line 21
    :cond_0
    :goto_0
    return-object v0
.end method
