.class public final Lio/appmetrica/analytics/impl/Gl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final b:Lio/appmetrica/analytics/impl/Tn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    const-class v0, Lio/appmetrica/analytics/impl/Ll;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->B()Lio/appmetrica/analytics/impl/Xn;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Xn;->a()Lio/appmetrica/analytics/impl/Tn;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Gl;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/Tn;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/Tn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gl;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gl;->b:Lio/appmetrica/analytics/impl/Tn;

    return-void
.end method
