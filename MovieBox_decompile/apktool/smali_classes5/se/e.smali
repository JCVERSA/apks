.class public Lse/e;
.super Lse/a;
.source "source.java"


# direct methods
.method public constructor <init>(Lse/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lse/a;-><init>(Lse/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/c;->c()Ljava/util/Collection;

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
    check-cast v1, Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 26
    .line 27
    iget-object v2, p0, Lse/a;->c:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->s()Ljava/lang/String;

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
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-wide v2, p0, Lse/a;->e:J

    .line 44
    .line 45
    invoke-virtual {v1, p1, v2, v3}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->j(Ljava/lang/String;J)V

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
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lse/e;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lse/b;->a(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lse/a;->d:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lse/e;->d([Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lse/e;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
