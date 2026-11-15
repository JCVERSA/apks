.class public final Lio/appmetrica/analytics/impl/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebView interface setup failed because javascript is disabled for the WebView."

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bo;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
