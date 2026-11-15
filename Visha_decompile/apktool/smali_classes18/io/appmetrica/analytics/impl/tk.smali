.class public final Lio/appmetrica/analytics/impl/tk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/zk;

.field public final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/sk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/sk;->a(Lio/appmetrica/analytics/impl/sk;)Lio/appmetrica/analytics/impl/zk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/zk;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/sk;->b(Lio/appmetrica/analytics/impl/sk;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/tk;->b:Ljava/lang/Integer;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/zk;)Lio/appmetrica/analytics/impl/sk;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/sk;

    .line 2
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/sk;-><init>(Lio/appmetrica/analytics/impl/zk;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/tk;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/zk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/zk;

    return-object p0
.end method
