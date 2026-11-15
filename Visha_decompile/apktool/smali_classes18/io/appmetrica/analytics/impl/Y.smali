.class public final Lio/appmetrica/analytics/impl/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Zm;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Z;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Z;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y;->a:Lio/appmetrica/analytics/impl/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y;->a:Lio/appmetrica/analytics/impl/Z;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z;->b:Ljava/lang/Thread;

    return-object p0
.end method

.method public final b()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y;->a:Lio/appmetrica/analytics/impl/Z;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Z;->a:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z;->b:Ljava/lang/Thread;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y;->a:Lio/appmetrica/analytics/impl/Z;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z;->a:Ljava/util/Map;

    return-object p0
.end method
