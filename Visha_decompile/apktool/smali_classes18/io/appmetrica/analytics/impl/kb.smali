.class public final Lio/appmetrica/analytics/impl/kb;
.super Lio/appmetrica/analytics/impl/L2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/jb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/jb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/jb;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/kb;->b:Lio/appmetrica/analytics/impl/jb;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Q9;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/kb;->b:Lio/appmetrica/analytics/impl/jb;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/jb;->a(Lio/appmetrica/analytics/impl/jb;Lio/appmetrica/analytics/impl/Q9;Lorg/json/JSONObject;)Lio/appmetrica/analytics/impl/H9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/L2;-><init>(Lio/appmetrica/analytics/impl/H9;)V

    return-void
.end method
