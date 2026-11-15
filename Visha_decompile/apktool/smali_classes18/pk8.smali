.class public final synthetic Lpk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lio/appmetrica/analytics/impl/D;

.field public final synthetic d:Lio/appmetrica/analytics/impl/Q;

.field public final synthetic e:Lio/appmetrica/analytics/impl/wi;


# direct methods
.method public synthetic constructor <init>(ZLio/appmetrica/analytics/impl/D;Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/wi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lpk8;->b:Z

    iput-object p2, p0, Lpk8;->c:Lio/appmetrica/analytics/impl/D;

    iput-object p3, p0, Lpk8;->d:Lio/appmetrica/analytics/impl/Q;

    iput-object p4, p0, Lpk8;->e:Lio/appmetrica/analytics/impl/wi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lpk8;->b:Z

    iget-object v1, p0, Lpk8;->c:Lio/appmetrica/analytics/impl/D;

    iget-object v2, p0, Lpk8;->d:Lio/appmetrica/analytics/impl/Q;

    iget-object p0, p0, Lpk8;->e:Lio/appmetrica/analytics/impl/wi;

    invoke-static {v0, v1, v2, p0}, Lio/appmetrica/analytics/impl/Q;->a(ZLio/appmetrica/analytics/impl/D;Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/wi;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
