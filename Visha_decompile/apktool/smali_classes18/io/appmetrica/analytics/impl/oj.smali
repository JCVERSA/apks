.class public final Lio/appmetrica/analytics/impl/oj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xa;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/oj;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ya;)V
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/oj;->a:Z

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/IReporter;->setDataSendingEnabled(Z)V

    return-void
.end method
