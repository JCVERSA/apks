.class public Lbab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbg1;
.implements Lab0$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/List;

.field public final d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public final e:Lab0;

.field public final f:Lab0;

.field public final g:Lab0;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbab;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbab;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->g()Z

    move-result v0

    iput-boolean v0, p0, Lbab;->b:Z

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->f()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lbab;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->e()Ldc;

    move-result-object v0

    invoke-virtual {v0}, Ldc;->a()Lxy3;

    move-result-object v0

    iput-object v0, p0, Lbab;->e:Lab0;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->b()Ldc;

    move-result-object v1

    invoke-virtual {v1}, Ldc;->a()Lxy3;

    move-result-object v1

    iput-object v1, p0, Lbab;->f:Lab0;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->d()Ldc;

    move-result-object p2

    invoke-virtual {p2}, Ldc;->a()Lxy3;

    move-result-object p2

    iput-object p2, p0, Lbab;->g:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {v0, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {v1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    return-void
.end method


# virtual methods
.method public b(Lab0$b;)V
    .locals 0

    iget-object p0, p0, Lbab;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lab0;
    .locals 0

    iget-object p0, p0, Lbab;->f:Lab0;

    return-object p0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbab;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lab0$b;

    invoke-interface {v1}, Lab0$b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public h()Lab0;
    .locals 0

    iget-object p0, p0, Lbab;->g:Lab0;

    return-object p0
.end method

.method public i()Lab0;
    .locals 0

    iget-object p0, p0, Lbab;->e:Lab0;

    return-object p0
.end method

.method public j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 0

    iget-object p0, p0, Lbab;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lbab;->b:Z

    return p0
.end method
