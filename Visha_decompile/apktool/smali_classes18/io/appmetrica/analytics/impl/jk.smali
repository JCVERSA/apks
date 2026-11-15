.class public final Lio/appmetrica/analytics/impl/jk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public final b:Lio/appmetrica/analytics/impl/zk;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public final e:Ljava/lang/Integer;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/tk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/tk;->b()Lio/appmetrica/analytics/impl/zk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/jk;->b:Lio/appmetrica/analytics/impl/zk;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/tk;->a()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jk;->e:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/impl/jk;)Lio/appmetrica/analytics/impl/zk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->b:Lio/appmetrica/analytics/impl/zk;

    return-object p0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic c(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic d(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic e(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic f(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic g(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jk;->h:Ljava/lang/Long;

    return-object p0
.end method
