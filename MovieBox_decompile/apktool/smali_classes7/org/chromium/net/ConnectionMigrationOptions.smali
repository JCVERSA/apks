.class public Lorg/chromium/net/ConnectionMigrationOptions;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/ConnectionMigrationOptions$Builder;,
        Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    }
.end annotation


# instance fields
.field private final mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mAllowServerMigration:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mEnableDefaultNetworkMigration:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mEnablePathDegradationMigration:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mIdleMigrationPeriodSeconds:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMigrateIdleConnections:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->c(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mEnableDefaultNetworkMigration:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->d(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->b(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->i(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->e(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mIdleMigrationPeriodSeconds:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->j(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->a(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->g(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    .line 51
    .line 52
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->h(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-static {p1}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->f(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    .line 63
    .line 64
    return-void
.end method

.method public static builder()Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAllowNonDefaultNetworkUsage()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowServerMigration()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableDefaultNetworkMigration()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mEnableDefaultNetworkMigration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnablePathDegradationMigration()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdleMigrationPeriodSeconds()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mIdleMigrationPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxPathDegradingEagerMigrationsCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxTimeOnNonDefaultNetworkSeconds()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxWriteErrorEagerMigrationsCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMigrateIdleConnections()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryPreHandshakeErrorsOnAlternateNetwork()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ConnectionMigrationOptions;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method
