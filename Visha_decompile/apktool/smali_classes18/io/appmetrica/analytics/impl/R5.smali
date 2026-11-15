.class public final Lio/appmetrica/analytics/impl/R5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/BroadcastReceiver;

.field public b:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/D2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/R5;->b:Z

    iput-object p1, p0, Lio/appmetrica/analytics/impl/R5;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method
