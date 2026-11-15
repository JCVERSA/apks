.class public final Lio/appmetrica/analytics/impl/Hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Lg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Lg;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hg;->a:Lio/appmetrica/analytics/impl/Lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lio/appmetrica/analytics/impl/pb;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hg;->a:Lio/appmetrica/analytics/impl/Lg;

    new-instance v6, Lio/appmetrica/analytics/impl/h4;

    iget-object v7, p1, Lio/appmetrica/analytics/impl/pb;->h:Ljava/lang/String;

    iget-object v8, p1, Lio/appmetrica/analytics/impl/pb;->e:Ljava/lang/String;

    iget-object v9, p1, Lio/appmetrica/analytics/impl/pb;->f:Ljava/lang/Integer;

    iget-object v10, p1, Lio/appmetrica/analytics/impl/pb;->g:Ljava/lang/String;

    iget-object v5, p1, Lio/appmetrica/analytics/impl/pb;->i:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/pb;->b:Ljava/lang/String;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/pb;->a:[B

    iget v2, p1, Lio/appmetrica/analytics/impl/pb;->c:I

    iget-object v3, p1, Lio/appmetrica/analytics/impl/pb;->d:Ljava/util/HashMap;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/pb;->j:Ljava/lang/String;

    invoke-static {v7}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v4

    sget-object v5, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    sget-object v5, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    new-instance v5, Lio/appmetrica/analytics/impl/e4;

    const/16 v7, 0x1701

    invoke-direct {v5, v1, v0, v7, v4}, Lio/appmetrica/analytics/impl/e4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object v3, v5, Lio/appmetrica/analytics/impl/e4;->q:Ljava/util/HashMap;

    iput v2, v5, Lio/appmetrica/analytics/impl/a6;->g:I

    iput-object p1, v5, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    new-instance p1, Lio/appmetrica/analytics/impl/G4;

    new-instance v0, Lio/appmetrica/analytics/impl/Bl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Bl;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/F4;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/F4;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lio/appmetrica/analytics/impl/G4;-><init>(Lio/appmetrica/analytics/impl/Bl;Lio/appmetrica/analytics/impl/F4;Landroid/os/ResultReceiver;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v0, v6, p1}, Lio/appmetrica/analytics/impl/s4;->a(Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;

    move-result-object v0

    invoke-interface {v0, v5, p1}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v8, v10}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
