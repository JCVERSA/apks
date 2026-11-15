.class public final Lio/appmetrica/analytics/impl/Jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Function;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/y0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/y0;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jg;->a:Lio/appmetrica/analytics/impl/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jg;->a:Lio/appmetrica/analytics/impl/y0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/y0;->c:Ljava/lang/String;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/y0;->f:Lio/appmetrica/analytics/impl/z0;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/z0;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v7

    sget-object v0, Lio/appmetrica/analytics/impl/C9;->a:Ljava/util/Set;

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "payload_crash_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lio/appmetrica/analytics/impl/e4;

    const-string v3, ""

    const/4 v6, 0x0

    const-string v4, ""

    const/16 v5, 0x170a

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/e4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/e4;->f(Ljava/lang/String;)Lio/appmetrica/analytics/impl/e4;

    :cond_0
    iput-object v0, v1, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jg;->a:Lio/appmetrica/analytics/impl/y0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/y0;->f:Lio/appmetrica/analytics/impl/z0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/z0;->f:Ljava/lang/String;

    iput-object p0, v1, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    return-object v1
.end method
