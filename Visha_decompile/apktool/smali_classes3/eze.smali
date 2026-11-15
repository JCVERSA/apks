.class public Leze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leze;->a:Ljava/lang/String;

    iput-object p2, p0, Leze;->b:Ljava/lang/Object;

    iput p3, p0, Leze;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;D)Leze;
    .locals 1

    new-instance v0, Leze;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {v0, p0, p1, p2}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;J)Leze;
    .locals 1

    new-instance v0, Leze;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {v0, p0, p1, p2}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Leze;
    .locals 2

    new-instance p0, Leze;

    const-string p1, ""

    const/4 v0, 0x4

    const-string v1, "gad:dynamite_module:experiment_id"

    invoke-direct {p0, v1, p1, v0}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static d(Ljava/lang/String;Z)Leze;
    .locals 2

    new-instance v0, Leze;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lq0f;->a()Lo0f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lq0f;->b()Lp0f;

    iget-object p0, p0, Leze;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget v1, p0, Leze;->c:I

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Leze;->a:Ljava/lang/String;

    iget-object p0, p0, Leze;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lo0f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Leze;->a:Ljava/lang/String;

    iget-object p0, p0, Leze;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lo0f;->b(Ljava/lang/String;D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Leze;->a:Ljava/lang/String;

    iget-object p0, p0, Leze;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lo0f;->c(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v1, p0, Leze;->a:Ljava/lang/String;

    iget-object p0, p0, Leze;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lo0f;->d(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
