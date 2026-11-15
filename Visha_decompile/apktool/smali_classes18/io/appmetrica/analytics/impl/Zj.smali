.class public final Lio/appmetrica/analytics/impl/Zj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Oc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-class p0, Lio/appmetrica/analytics/impl/Ll;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/tm;->d(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Ll;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Ll;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Kl;

    move-result-object p1

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/Kl;->o:J

    new-instance v0, Lio/appmetrica/analytics/impl/Ll;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    return-void
.end method
