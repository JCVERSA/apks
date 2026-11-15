.class public final Lio/appmetrica/analytics/impl/q5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/f5;

.field public final b:Lio/appmetrica/analytics/impl/g7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lio/appmetrica/analytics/impl/q5;-><init>(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/g7;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/g7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/q5;->a:Lio/appmetrica/analytics/impl/f5;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/q5;->b:Lio/appmetrica/analytics/impl/g7;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Le;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Le;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/q5;->b:Lio/appmetrica/analytics/impl/g7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/q5;->a:Lio/appmetrica/analytics/impl/f5;

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/g7;->b(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/impl/Oa;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Le;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    return-object v0
.end method
