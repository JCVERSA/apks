.class public abstract Lio/appmetrica/analytics/impl/X2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/in;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field protected final c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/appmetrica/analytics/impl/X2;->a:I

    iput-object p2, p0, Lio/appmetrica/analytics/impl/X2;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/X2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method
