.class public final synthetic Lomd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/lg;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/lg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lomd;->b:Lio/appmetrica/analytics/impl/lg;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lomd;->b:Lio/appmetrica/analytics/impl/lg;

    check-cast p1, Lio/appmetrica/analytics/impl/cg;

    check-cast p2, Lio/appmetrica/analytics/impl/cg;

    invoke-static {p0, p1, p2}, Lio/appmetrica/analytics/impl/lg;->a(Lio/appmetrica/analytics/impl/lg;Lio/appmetrica/analytics/impl/cg;Lio/appmetrica/analytics/impl/cg;)I

    move-result p0

    return p0
.end method
