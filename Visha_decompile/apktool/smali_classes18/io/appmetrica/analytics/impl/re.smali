.class public final Lio/appmetrica/analytics/impl/re;
.super Lio/appmetrica/analytics/impl/Jc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/ue;->n:Lio/appmetrica/analytics/impl/ue;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Jc;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->a:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->b:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->c:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->d:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->e:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x1b

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->f:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/ue;->g:Lio/appmetrica/analytics/impl/ue;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
