.class public final Lio/appmetrica/analytics/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lio/appmetrica/analytics/impl/l;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/l;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/j;->b:Lio/appmetrica/analytics/impl/l;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/j;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/j;->b:Lio/appmetrica/analytics/impl/l;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/j;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/l;->a(Landroid/app/Activity;)V

    return-void
.end method
