.class public final Lio/appmetrica/analytics/impl/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/V2;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/cl;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/cl;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
