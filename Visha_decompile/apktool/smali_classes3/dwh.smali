.class public final Ldwh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public final b:Lhwh;


# direct methods
.method public constructor <init>(Lhwh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwh;->b:Lhwh;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Ldwh;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final b()V
    .locals 1

    new-instance v0, Liwh;

    invoke-direct {v0, p0}, Liwh;-><init>(Ldwh;)V

    iget-object p0, p0, Ldwh;->b:Lhwh;

    invoke-virtual {p0, v0}, Lhwh;->b(Lgwh;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 7

    new-instance v6, Ljwh;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ljwh;-><init>(Ldwh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    iget-object p0, p0, Ldwh;->b:Lhwh;

    invoke-virtual {p0, v6}, Lhwh;->b(Lgwh;)V

    return-void
.end method

.method public final d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 7

    new-instance v6, Lkwh;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lkwh;-><init>(Ldwh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    iget-object p0, p0, Ldwh;->b:Lhwh;

    invoke-virtual {p0, v6}, Lhwh;->b(Lgwh;)V

    return-void
.end method

.method public final e(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Ldwh;->a:Lorg/json/JSONObject;

    return-void
.end method
