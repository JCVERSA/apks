.class public final Lio/appmetrica/analytics/impl/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/appmetrica/analytics/impl/gi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/gi;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ei;->b:Lio/appmetrica/analytics/impl/gi;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ei;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ei;->b:Lio/appmetrica/analytics/impl/gi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/gi;->b:Lio/appmetrica/analytics/impl/q0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ei;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/p0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;

    return-void
.end method
