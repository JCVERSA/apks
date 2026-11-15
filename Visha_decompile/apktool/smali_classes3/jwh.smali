.class public final Ljwh;
.super Lfwh;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ldwh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lfwh;-><init>(Ldwh;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljwh;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lgwh;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcvh;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsuh;

    iget-object v2, p0, Lfwh;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Lsuh;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsuh;->g()Lrvh;

    move-result-object v1

    iget-wide v2, p0, Lfwh;->e:J

    invoke-virtual {v1, p1, v2, v3}, Lrvh;->d(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfwh;->d:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljwh;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lgwh;->a(Ljava/lang/String;)V

    return-void
.end method
