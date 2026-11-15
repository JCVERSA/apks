.class public final Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->access$getSInstance$cp()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->access$getSInstance$cp()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->access$setSInstance$cp(Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit p0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_2
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->access$getSInstance$cp()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
