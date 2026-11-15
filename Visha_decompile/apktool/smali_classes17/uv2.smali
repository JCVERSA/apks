.class public Luv2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luv2$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Luv2;-><init>(JLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Luv2;->a:J

    .line 4
    iput-object p3, p0, Luv2;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Luv2$a;
    .locals 0

    iget-object p0, p0, Luv2;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luv2$a;

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Luv2;->b:Ljava/util/Map;

    return-object p0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Luv2;->a:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;Luv2$a;)V
    .locals 0

    iget-object p0, p0, Luv2;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Luv2;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
