.class public final synthetic Lepd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/c;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/AnrListener;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/AnrListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepd;->a:Lio/appmetrica/analytics/AnrListener;

    return-void
.end method


# virtual methods
.method public final onAppNotResponding()V
    .locals 0

    iget-object p0, p0, Lepd;->a:Lio/appmetrica/analytics/AnrListener;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/oc;->b(Lio/appmetrica/analytics/AnrListener;)V

    return-void
.end method
