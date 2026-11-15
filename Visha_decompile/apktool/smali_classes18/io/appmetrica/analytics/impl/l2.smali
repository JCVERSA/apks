.class public final Lio/appmetrica/analytics/impl/l2;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Un;

.field public final c:Lio/appmetrica/analytics/impl/Kj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->t()Lio/appmetrica/analytics/impl/Un;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/Kj;->c()Lio/appmetrica/analytics/impl/Kj;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/l2;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/Kj;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/Kj;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/l2;->b:Lio/appmetrica/analytics/impl/Un;

    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/l2;->c:Lio/appmetrica/analytics/impl/Kj;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/l2;->b:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Un;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/l2;->b:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Un;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/ch;

    iget-boolean p1, p1, Lio/appmetrica/analytics/impl/ch;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/appmetrica/analytics/impl/l2;->c:Lio/appmetrica/analytics/impl/Kj;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Kj;->b()V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->l:Lio/appmetrica/analytics/impl/Q8;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Q8;->c:Lio/appmetrica/analytics/impl/S8;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Q8;->a()V

    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Q8;->c:Lio/appmetrica/analytics/impl/S8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lio/appmetrica/analytics/impl/S8;->b:Ljava/util/Set;

    iput v1, p1, Lio/appmetrica/analytics/impl/S8;->d:I

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Q8;->c:Lio/appmetrica/analytics/impl/S8;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/appmetrica/analytics/impl/S8;->a:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q8;->b:Lio/appmetrica/analytics/impl/V8;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/V8;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/V8;->b:Lio/appmetrica/analytics/impl/U8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V8;->a:Lio/appmetrica/analytics/impl/T8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/T8;->a(Lio/appmetrica/analytics/impl/S8;)Lio/appmetrica/analytics/impl/A9;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const-string p1, "event_hashes"

    invoke-interface {v0, p1, p0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    :cond_2
    return v1
.end method
