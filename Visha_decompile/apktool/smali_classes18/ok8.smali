.class public final synthetic Lok8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/Q;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lok8;->b:Lio/appmetrica/analytics/impl/Q;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lok8;->b:Lio/appmetrica/analytics/impl/Q;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Q;->e(Lio/appmetrica/analytics/impl/Q;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
