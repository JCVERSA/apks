.class public Lorg/chromium/net/ConnectionMigrationOptions$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/ConnectionMigrationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAllowServerMigration:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mEnablePathDegradationMigration:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMigrateIdleConnections:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic h(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic i(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic j(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public allowNonDefaultNetworkUsage(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public allowServerMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public build()Lorg/chromium/net/ConnectionMigrationOptions;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/ConnectionMigrationOptions;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/chromium/net/ConnectionMigrationOptions;-><init>(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public enableDefaultNetworkMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public enablePathDegradationMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public migrateIdleConnections(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public retryPreHandshakeErrorsOnNonDefaultNetwork(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setIdleConnectionMigrationPeriodSeconds(J)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMaxPathDegradingNonDefaultNetworkMigrationsCount(I)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMaxTimeOnNonDefaultNetworkSeconds(J)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMaxWriteErrorNonDefaultNetworkMigrationsCount(I)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation build Lorg/chromium/net/ConnectionMigrationOptions$Experimental;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method
