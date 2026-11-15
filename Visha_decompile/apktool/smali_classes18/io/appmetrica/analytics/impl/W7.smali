.class public abstract Lio/appmetrica/analytics/impl/W7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Jc;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Jc;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Jc;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lio/appmetrica/analytics/impl/X7;->b:Lio/appmetrica/analytics/impl/X7;

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lio/appmetrica/analytics/impl/X7;->d:Lio/appmetrica/analytics/impl/X7;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lio/appmetrica/analytics/impl/X7;->e:Lio/appmetrica/analytics/impl/X7;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/W7;->a:Lio/appmetrica/analytics/impl/Jc;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Jc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Jc;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W7;->a:Lio/appmetrica/analytics/impl/Jc;

    return-object p0
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
