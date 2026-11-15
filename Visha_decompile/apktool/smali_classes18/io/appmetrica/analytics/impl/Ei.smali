.class public final Lio/appmetrica/analytics/impl/Ei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/Revenue;

.field public final b:Lio/appmetrica/analytics/impl/wm;

.field public final c:Lio/appmetrica/analytics/impl/Em;

.field public final d:Lio/appmetrica/analytics/impl/Em;

.field public final e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/Revenue;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ei;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->a:Lio/appmetrica/analytics/Revenue;

    new-instance p1, Lio/appmetrica/analytics/impl/wm;

    const/16 v0, 0x7800

    const-string v1, "revenue payload"

    invoke-direct {p1, v0, v1, p2}, Lio/appmetrica/analytics/impl/wm;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->b:Lio/appmetrica/analytics/impl/wm;

    new-instance p1, Lio/appmetrica/analytics/impl/Em;

    new-instance v0, Lio/appmetrica/analytics/impl/wm;

    const v1, 0x2d000

    const-string v2, "receipt data"

    invoke-direct {v0, v1, v2, p2}, Lio/appmetrica/analytics/impl/wm;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    const-string v1, "<truncated data was not sent, exceeded the limit of 180kb>"

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Em;-><init>(Lio/appmetrica/analytics/impl/in;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Em;

    new-instance p1, Lio/appmetrica/analytics/impl/Em;

    new-instance v0, Lio/appmetrica/analytics/impl/ym;

    const/16 v2, 0x3e8

    const-string v3, "receipt signature"

    invoke-direct {v0, v2, v3, p2}, Lio/appmetrica/analytics/impl/ym;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Em;-><init>(Lio/appmetrica/analytics/impl/in;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/Em;

    return-void
.end method
