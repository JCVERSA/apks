.class public final Lio/appmetrica/analytics/impl/Wf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/hg;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/hg;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Wf;->a:Lio/appmetrica/analytics/impl/hg;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Wf;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Wf;->a:Lio/appmetrica/analytics/impl/hg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Wf;->b:Ljava/lang/Throwable;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/hg;->a(Ljava/lang/Throwable;)V

    return-void
.end method
