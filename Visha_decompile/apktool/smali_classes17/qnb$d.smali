.class public Lqnb$d;
.super Lqnb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqnb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqnb$d;->b:Ljava/lang/String;

    iput-object p2, p0, Lqnb$d;->c:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lqnb$d;->r()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lqnb$d;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqnb$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lqnb$d;->c:Lorg/json/JSONObject;

    return-object p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lqnb$d;->d:Lorg/json/JSONObject;

    return-object p0
.end method

.method public t(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lqnb$d;->u(Lorg/json/JSONObject;)V

    return-void
.end method

.method public u(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqnb$d;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lqnb$d;->d:Lorg/json/JSONObject;

    invoke-virtual {p0, p0}, Lqnb;->d(Lqnb;)V

    return-void
.end method
