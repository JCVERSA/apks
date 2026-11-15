.class public final Loye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lqye;


# direct methods
.method public constructor <init>(Lqye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loye;->b:Lqye;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Loye;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lqye;
    .locals 0

    iget-object p0, p0, Loye;->b:Lqye;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lnye;)V
    .locals 0

    iget-object p0, p0, Loye;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Loye;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnye;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object p0, p0, Loye;->b:Lqye;

    invoke-virtual {p0, p2, p3, p4, v1}, Lqye;->e(Lnye;J[Ljava/lang/String;)Z

    :cond_0
    new-instance p0, Lnye;

    const/4 p2, 0x0

    invoke-direct {p0, p3, p4, p2, p2}, Lnye;-><init>(JLjava/lang/String;Lnye;)V

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
