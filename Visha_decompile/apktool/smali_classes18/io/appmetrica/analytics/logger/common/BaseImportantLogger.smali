.class public abstract Lio/appmetrica/analytics/logger/common/BaseImportantLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/logger/common/impl/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/logger/common/impl/c;

    new-instance v1, Lio/appmetrica/analytics/logger/common/impl/d;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/logger/common/impl/d;-><init>(Ljava/lang/String;)V

    new-instance p1, Lio/appmetrica/analytics/logger/common/impl/a;

    invoke-direct {p1}, Lio/appmetrica/analytics/logger/common/impl/a;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/logger/common/impl/b;

    invoke-direct {v2}, Lio/appmetrica/analytics/logger/common/impl/b;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lio/appmetrica/analytics/logger/common/impl/c;-><init>(Lio/appmetrica/analytics/logger/common/impl/d;Lio/appmetrica/analytics/logger/common/impl/a;Lio/appmetrica/analytics/logger/common/impl/b;)V

    iput-object v0, p0, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->a:Lio/appmetrica/analytics/logger/common/impl/c;

    return-void
.end method


# virtual methods
.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->a:Lio/appmetrica/analytics/logger/common/impl/c;

    iget-object v0, p0, Lio/appmetrica/analytics/logger/common/impl/c;->b:Lio/appmetrica/analytics/logger/common/impl/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lio/appmetrica/analytics/logger/common/impl/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lio/appmetrica/analytics/logger/common/impl/c;->c:Lio/appmetrica/analytics/logger/common/impl/b;

    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/logger/common/impl/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lio/appmetrica/analytics/logger/common/impl/c;->a:Lio/appmetrica/analytics/logger/common/impl/d;

    iget-object p3, p3, Lio/appmetrica/analytics/logger/common/impl/d;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, p3, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
