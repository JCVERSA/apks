.class public Lme/f;
.super Lme/a;
.source "source.java"


# direct methods
.method public constructor <init>(Lme/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lme/a;-><init>(Lme/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->c()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    .line 26
    .line 27
    iget-object v2, p0, Lme/a;->c:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->k()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-wide v2, p0, Lme/a;->e:J

    .line 44
    .line 45
    invoke-virtual {v1, p1, v2, v3}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->m(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lme/f;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lme/b;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lme/a;->d:Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Lme/b;->b:Lme/b$b;

    .line 4
    .line 5
    invoke-interface {v0}, Lme/b$b;->a()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lle/c;->v(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object p1, p0, Lme/b;->b:Lme/b$b;

    .line 18
    .line 19
    iget-object v0, p0, Lme/a;->d:Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lme/b$b;->a(Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lme/a;->d:Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lme/f;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lme/f;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
