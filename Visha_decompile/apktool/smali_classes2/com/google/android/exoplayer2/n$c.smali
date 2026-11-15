.class public final Lcom/google/android/exoplayer2/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/exoplayer2/n$d$a;

.field public e:Lcom/google/android/exoplayer2/n$f$a;

.field public f:Ljava/util/List;

.field public g:Ljava/lang/String;

.field public h:Lcom/google/common/collect/ImmutableList;

.field public i:Ljava/lang/Object;

.field public j:Lcom/google/android/exoplayer2/o;

.field public k:Lcom/google/android/exoplayer2/n$g$a;

.field public l:Lcom/google/android/exoplayer2/n$j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/n$d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$d$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->d:Lcom/google/android/exoplayer2/n$d$a;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/n$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/n$f$a;-><init>(Lcom/google/android/exoplayer2/n$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->e:Lcom/google/android/exoplayer2/n$f$a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->f:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/n$g$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$g$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->k:Lcom/google/android/exoplayer2/n$g$a;

    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/n$j;->e:Lcom/google/android/exoplayer2/n$j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->l:Lcom/google/android/exoplayer2/n$j;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/n;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n$c;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$d;->b()Lcom/google/android/exoplayer2/n$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->d:Lcom/google/android/exoplayer2/n$d$a;

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->a:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->j:Lcom/google/android/exoplayer2/o;

    .line 13
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$g;->b()Lcom/google/android/exoplayer2/n$g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->k:Lcom/google/android/exoplayer2/n$g$a;

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/n$j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->l:Lcom/google/android/exoplayer2/n$j;

    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/n$h;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->g:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/n$h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->c:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/google/android/exoplayer2/n$h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->b:Landroid/net/Uri;

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/n$h;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->f:Ljava/util/List;

    .line 20
    iget-object v0, p1, Lcom/google/android/exoplayer2/n$h;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 21
    iget-object v0, p1, Lcom/google/android/exoplayer2/n$h;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/n$c;->i:Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Lcom/google/android/exoplayer2/n$h;->c:Lcom/google/android/exoplayer2/n$f;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$f;->b()Lcom/google/android/exoplayer2/n$f$a;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/n$f$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/n$f$a;-><init>(Lcom/google/android/exoplayer2/n$a;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->e:Lcom/google/android/exoplayer2/n$f$a;

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n$c;-><init>(Lcom/google/android/exoplayer2/n;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/n;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/n$c;->e:Lcom/google/android/exoplayer2/n$f$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$f$a;->e(Lcom/google/android/exoplayer2/n$f$a;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/n$c;->e:Lcom/google/android/exoplayer2/n$f$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$f$a;->f(Lcom/google/android/exoplayer2/n$f$a;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lzi;->g(Z)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/n$c;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    new-instance v12, Lcom/google/android/exoplayer2/n$i;

    iget-object v4, v0, Lcom/google/android/exoplayer2/n$c;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/exoplayer2/n$c;->e:Lcom/google/android/exoplayer2/n$f$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/n$f$a;->f(Lcom/google/android/exoplayer2/n$f$a;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/n$c;->e:Lcom/google/android/exoplayer2/n$f$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n$f$a;->i()Lcom/google/android/exoplayer2/n$f;

    move-result-object v1

    :cond_2
    move-object v5, v1

    iget-object v7, v0, Lcom/google/android/exoplayer2/n$c;->f:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/n$c;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/n$c;->h:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/n$c;->i:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/n$i;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/n$f;Lcom/google/android/exoplayer2/n$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplayer2/n$a;)V

    move-object/from16 v16, v12

    goto :goto_2

    :cond_3
    move-object/from16 v16, v1

    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/n;

    iget-object v2, v0, Lcom/google/android/exoplayer2/n$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_3
    move-object v14, v2

    goto :goto_4

    :cond_4
    const-string v2, ""

    goto :goto_3

    :goto_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/n$c;->d:Lcom/google/android/exoplayer2/n$d$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$d$a;->g()Lcom/google/android/exoplayer2/n$e;

    move-result-object v15

    iget-object v2, v0, Lcom/google/android/exoplayer2/n$c;->k:Lcom/google/android/exoplayer2/n$g$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$g$a;->f()Lcom/google/android/exoplayer2/n$g;

    move-result-object v17

    iget-object v2, v0, Lcom/google/android/exoplayer2/n$c;->j:Lcom/google/android/exoplayer2/o;

    if-eqz v2, :cond_5

    :goto_5
    move-object/from16 v18, v2

    goto :goto_6

    :cond_5
    sget-object v2, Lcom/google/android/exoplayer2/o;->H:Lcom/google/android/exoplayer2/o;

    goto :goto_5

    :goto_6
    iget-object v0, v0, Lcom/google/android/exoplayer2/n$c;->l:Lcom/google/android/exoplayer2/n$j;

    const/16 v20, 0x0

    move-object v13, v1

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v20}, Lcom/google/android/exoplayer2/n;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$e;Lcom/google/android/exoplayer2/n$i;Lcom/google/android/exoplayer2/n$g;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/n$j;Lcom/google/android/exoplayer2/n$a;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/google/android/exoplayer2/n$g;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$g;->b()Lcom/google/android/exoplayer2/n$g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->k:Lcom/google/android/exoplayer2/n$g$a;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/List;)Lcom/google/android/exoplayer2/n$c;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->f:Ljava/util/List;

    return-object p0
.end method

.method public g(Ljava/util/List;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->h:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$c;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/n$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p0

    return-object p0
.end method
