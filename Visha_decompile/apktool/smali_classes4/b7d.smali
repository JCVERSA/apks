.class public Lb7d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc7d$b;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public final b:Ll8d;


# direct methods
.method public constructor <init>(Ll8d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb7d;->b:Ll8d;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lb7d;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lb7d;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lb7d;->b:Ll8d;

    new-instance v7, Lkbd;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lkbd;-><init>(Lc7d$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Ll8d;->c(Lc7d;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb7d;->b:Ll8d;

    new-instance v1, Lv9d;

    invoke-direct {v1, p0}, Lv9d;-><init>(Lc7d$b;)V

    invoke-virtual {v0, v1}, Ll8d;->c(Lc7d;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8

    iget-object v0, p0, Lb7d;->b:Ll8d;

    new-instance v7, Lred;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lred;-><init>(Lc7d$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Ll8d;->c(Lc7d;)V

    return-void
.end method
