.class public final Lio/appmetrica/analytics/impl/Cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xa;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Cj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ya;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Cj;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;)V

    return-void
.end method
