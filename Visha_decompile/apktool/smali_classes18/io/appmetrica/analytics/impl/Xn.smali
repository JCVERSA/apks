.class public final Lio/appmetrica/analytics/impl/Xn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Lio/appmetrica/analytics/impl/Tn;

.field public final d:Lio/appmetrica/analytics/impl/Tn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xn;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xn;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Lio/appmetrica/analytics/impl/ia;

    const-string v1, "appmetrica_vital.dat"

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/ia;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lio/appmetrica/analytics/impl/Tn;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/Tn;-><init>(Lio/appmetrica/analytics/impl/Oe;Lio/appmetrica/analytics/impl/ia;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Xn;->c:Lio/appmetrica/analytics/impl/Tn;

    new-instance v1, Lio/appmetrica/analytics/impl/Tn;

    new-instance v2, Lio/appmetrica/analytics/impl/Oe;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/g7;->d()Lio/appmetrica/analytics/impl/Oa;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Oe;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/impl/Tn;-><init>(Lio/appmetrica/analytics/impl/Oe;Lio/appmetrica/analytics/impl/ia;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Xn;->d:Lio/appmetrica/analytics/impl/Tn;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Tn;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xn;->c:Lio/appmetrica/analytics/impl/Tn;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Tn;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xn;->d:Lio/appmetrica/analytics/impl/Tn;

    return-object p0
.end method
