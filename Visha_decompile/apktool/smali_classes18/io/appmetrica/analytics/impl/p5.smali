.class public final Lio/appmetrica/analytics/impl/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p5;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p5;->a:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p0

    return-object p0
.end method
