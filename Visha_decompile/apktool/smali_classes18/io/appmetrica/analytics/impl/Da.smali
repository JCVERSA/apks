.class public final Lio/appmetrica/analytics/impl/Da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/HostRetryInfoProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oe;

.field public final b:Lio/appmetrica/analytics/impl/Ld;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Oe;Lio/appmetrica/analytics/impl/Ld;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Da;->a:Lio/appmetrica/analytics/impl/Oe;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Da;->b:Lio/appmetrica/analytics/impl/Ld;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Ld;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Da;->b:Lio/appmetrica/analytics/impl/Ld;

    return-object p0
.end method

.method public final getLastAttemptTimeSeconds()J
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Da;->a:Lio/appmetrica/analytics/impl/Oe;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Da;->b:Lio/appmetrica/analytics/impl/Ld;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lio/appmetrica/analytics/impl/Oe;->a(Lio/appmetrica/analytics/impl/Ld;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextSendAttemptNumber()I
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Da;->a:Lio/appmetrica/analytics/impl/Oe;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Da;->b:Lio/appmetrica/analytics/impl/Ld;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/Oe;->a(Lio/appmetrica/analytics/impl/Ld;I)I

    move-result p0

    return p0
.end method

.method public final saveLastAttemptTimeSeconds(J)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Da;->a:Lio/appmetrica/analytics/impl/Oe;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Da;->b:Lio/appmetrica/analytics/impl/Ld;

    invoke-virtual {v0, p0, p1, p2}, Lio/appmetrica/analytics/impl/Oe;->b(Lio/appmetrica/analytics/impl/Ld;J)Lio/appmetrica/analytics/impl/Oe;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method

.method public final saveNextSendAttemptNumber(I)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Da;->a:Lio/appmetrica/analytics/impl/Oe;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Da;->b:Lio/appmetrica/analytics/impl/Ld;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/Oe;->b(Lio/appmetrica/analytics/impl/Ld;I)Lio/appmetrica/analytics/impl/Oe;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method
