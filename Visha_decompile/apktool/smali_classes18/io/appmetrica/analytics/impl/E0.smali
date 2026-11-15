.class public final Lio/appmetrica/analytics/impl/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/E0;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/E0;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/E0;->b:Lio/appmetrica/analytics/impl/m1;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/m1;->d()Lio/appmetrica/analytics/impl/pc;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/pc;->b:Lio/appmetrica/analytics/impl/G7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/E0;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/G7;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
