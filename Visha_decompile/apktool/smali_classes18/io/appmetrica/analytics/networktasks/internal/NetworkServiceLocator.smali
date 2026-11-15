.class public final Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;",
        "Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLifecycleObserver;",
        "<init>",
        "()V",
        "Lzfb;",
        "onCreate",
        "onDestroy",
        "Lio/appmetrica/analytics/networktasks/internal/NetworkCore;",
        "a",
        "Lio/appmetrica/analytics/networktasks/internal/NetworkCore;",
        "getNetworkCore",
        "()Lio/appmetrica/analytics/networktasks/internal/NetworkCore;",
        "networkCore",
        "Companion",
        "network-tasks_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

.field private static volatile b:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;


# instance fields
.field private final a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    invoke-direct {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;-><init>()V

    const-string v1, "IAA-NC"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    return-void
.end method

.method public static final getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object v0

    return-object v0
.end method

.method public static final init()V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;->init()V

    return-void
.end method

.method public static final init(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->Companion:Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator$Companion;->init(Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;)V

    return-void
.end method


# virtual methods
.method public final getNetworkCore()Lio/appmetrica/analytics/networktasks/internal/NetworkCore;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;->stopTasks()V

    return-void
.end method
