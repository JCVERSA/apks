.class public Lkbd;
.super Lu1d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc7d$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lu1d;-><init>(Lc7d$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkbd;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lc7d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu1d;->d:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkbd;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li8d;->c()Ljava/util/Collection;

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

    check-cast v1, Le3d;

    iget-object v2, p0, Lu1d;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Le3d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v1

    iget-wide v2, p0, Lu1d;->e:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->h(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkbd;->b(Ljava/lang/String;)V

    return-void
.end method
