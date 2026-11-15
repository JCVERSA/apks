.class public final Lio/appmetrica/analytics/impl/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F0;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/F0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->b:Lio/appmetrica/analytics/impl/m1;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/m1;->d()Lio/appmetrica/analytics/impl/pc;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/pc;->b:Lio/appmetrica/analytics/impl/G7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/G7;->a(Ljava/lang/String;Z)V

    return-void
.end method
