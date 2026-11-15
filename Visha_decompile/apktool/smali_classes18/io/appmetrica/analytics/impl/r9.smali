.class public final Lio/appmetrica/analytics/impl/r9;
.super Lio/appmetrica/analytics/impl/qf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/eh;

.field public final b:Lio/appmetrica/analytics/impl/gh;

.field public final c:Lio/appmetrica/analytics/impl/Sg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/qf;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/eh;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/eh;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/r9;->a:Lio/appmetrica/analytics/impl/eh;

    new-instance v0, Lio/appmetrica/analytics/impl/gh;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/gh;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/r9;->b:Lio/appmetrica/analytics/impl/gh;

    new-instance v0, Lio/appmetrica/analytics/impl/Sg;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Sg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/r9;->c:Lio/appmetrica/analytics/impl/Sg;

    return-void
.end method


# virtual methods
.method public final a(I)Lio/appmetrica/analytics/impl/c9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/impl/c9;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/r9;->b:Lio/appmetrica/analytics/impl/gh;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r9;->a:Lio/appmetrica/analytics/impl/eh;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r9;->c:Lio/appmetrica/analytics/impl/Sg;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r9;->a:Lio/appmetrica/analytics/impl/eh;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lio/appmetrica/analytics/impl/b9;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/b9;-><init>(Ljava/util/List;)V

    return-object p0
.end method
