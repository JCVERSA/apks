.class public final synthetic Lqu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/N1;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/P1;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/P1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu7;->a:Lio/appmetrica/analytics/impl/P1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Lqu7;->a:Lio/appmetrica/analytics/impl/P1;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/P1;->c(Lio/appmetrica/analytics/impl/P1;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
