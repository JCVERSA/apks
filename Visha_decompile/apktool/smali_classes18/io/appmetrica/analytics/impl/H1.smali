.class public final Lio/appmetrica/analytics/impl/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/O1;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/I1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/H1;->a:Lio/appmetrica/analytics/impl/I1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/H1;->a:Lio/appmetrica/analytics/impl/I1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->u()Lio/appmetrica/analytics/impl/Ui;

    move-result-object p0

    const-string v0, "screen_size"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/mb;->e(Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ui;->a(Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;)V

    return-void
.end method
