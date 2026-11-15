.class public final synthetic Lppd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/p0;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lppd;->b:Lio/appmetrica/analytics/impl/p0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lppd;->b:Lio/appmetrica/analytics/impl/p0;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->p()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    return-object p0
.end method
