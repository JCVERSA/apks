.class public final Lio/appmetrica/analytics/impl/Uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/cg;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Vf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Vf;Lio/appmetrica/analytics/impl/cg;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Uf;->b:Lio/appmetrica/analytics/impl/Vf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Uf;->a:Lio/appmetrica/analytics/impl/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Uf;->b:Lio/appmetrica/analytics/impl/Vf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Vf;->a:Lio/appmetrica/analytics/impl/hg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Uf;->a:Lio/appmetrica/analytics/impl/cg;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/hg;->a(Lio/appmetrica/analytics/impl/cg;)V

    return-void
.end method
