.class public Lo7a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

.field public b:I

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7a;->a:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    const/4 p1, 0x0

    iput p1, p0, Lo7a;->b:I

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo7a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lt7a;)V
    .locals 0

    iget-object p0, p0, Lo7a;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lo7a;->c:Ljava/util/List;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lo7a;->b:I

    return p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lo7a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
