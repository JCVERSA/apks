.class public final Lio/appmetrica/analytics/impl/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->e()Lio/appmetrica/analytics/impl/T3;

    move-result-object p0

    return-object p0
.end method
