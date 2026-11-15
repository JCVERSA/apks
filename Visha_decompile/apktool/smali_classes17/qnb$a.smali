.class public Lqnb$a;
.super Lqnb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONArray;

.field public d:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqnb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqnb$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lqnb$a;->c:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lqnb$a;->r()Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lqnb$a;->d:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqnb$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public r()Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lqnb$a;->c:Lorg/json/JSONArray;

    return-object p0
.end method

.method public s()Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lqnb$a;->d:Lorg/json/JSONArray;

    return-object p0
.end method

.method public t(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lqnb$a;->u(Lorg/json/JSONArray;)V

    return-void
.end method

.method public u(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqnb$a;->d:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lqnb$a;->d:Lorg/json/JSONArray;

    invoke-virtual {p0, p0}, Lqnb;->d(Lqnb;)V

    return-void
.end method
