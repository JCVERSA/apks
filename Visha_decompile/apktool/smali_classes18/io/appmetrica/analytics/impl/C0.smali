.class public abstract Lio/appmetrica/analytics/impl/C0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/B0;

    new-instance v1, Lio/appmetrica/analytics/impl/D0;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/D0;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/B0;-><init>(Lio/appmetrica/analytics/impl/D0;)V

    sput-object v0, Lio/appmetrica/analytics/impl/C0;->a:Lio/appmetrica/analytics/impl/B0;

    return-void
.end method
