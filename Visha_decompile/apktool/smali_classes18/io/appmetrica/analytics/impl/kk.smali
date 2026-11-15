.class public final Lio/appmetrica/analytics/impl/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/zk;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/jk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->a(Lio/appmetrica/analytics/impl/jk;)Lio/appmetrica/analytics/impl/zk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/zk;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->b(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->d:Ljava/lang/Integer;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->c(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->b:Ljava/lang/Long;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->d(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->c:Ljava/lang/Long;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->e(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->e:Ljava/lang/Long;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->f(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->f:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jk;->g(Lio/appmetrica/analytics/impl/jk;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/kk;->g:Ljava/lang/Long;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/jk;->a:Ljava/lang/Long;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/kk;->h:Ljava/lang/Long;

    return-void
.end method
