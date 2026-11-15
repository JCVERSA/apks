.class public final Lio/appmetrica/analytics/impl/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Z0;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Z0;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Z0;->b:Lio/appmetrica/analytics/impl/m1;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/m1;->h:Lio/appmetrica/analytics/impl/Ak;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z0;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/m1;->d()Lio/appmetrica/analytics/impl/pc;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/pc;->a:Lio/appmetrica/analytics/impl/Pa;

    if-eqz p0, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ak;->f:Lio/appmetrica/analytics/impl/l;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/l;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ak;->e:Lio/appmetrica/analytics/impl/r;

    sget-object v2, Lio/appmetrica/analytics/impl/q;->a:Lio/appmetrica/analytics/impl/q;

    invoke-virtual {v1, p0, v2}, Lio/appmetrica/analytics/impl/r;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Pa;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
