.class public final synthetic Lgx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/Ib;

.field public final synthetic c:Lio/appmetrica/analytics/impl/S;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Ib;Lio/appmetrica/analytics/impl/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx4;->b:Lio/appmetrica/analytics/impl/Ib;

    iput-object p2, p0, Lgx4;->c:Lio/appmetrica/analytics/impl/S;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgx4;->b:Lio/appmetrica/analytics/impl/Ib;

    iget-object p0, p0, Lgx4;->c:Lio/appmetrica/analytics/impl/S;

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/Ib;->a(Lio/appmetrica/analytics/impl/Ib;Lio/appmetrica/analytics/impl/S;)V

    return-void
.end method
