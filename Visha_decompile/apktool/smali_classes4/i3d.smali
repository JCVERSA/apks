.class public Li3d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr9d$a;


# static fields
.field public static f:Li3d;


# instance fields
.field public a:Lqed;

.field public b:Ljava/util/Date;

.field public c:Z

.field public d:Lr9d;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li3d;

    new-instance v1, Lr9d;

    invoke-direct {v1}, Lr9d;-><init>()V

    invoke-direct {v0, v1}, Li3d;-><init>(Lr9d;)V

    sput-object v0, Li3d;->f:Li3d;

    return-void
.end method

.method public constructor <init>(Lr9d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqed;

    invoke-direct {v0}, Lqed;-><init>()V

    iput-object v0, p0, Li3d;->a:Lqed;

    iput-object p1, p0, Li3d;->d:Lr9d;

    return-void
.end method

.method public static a()Li3d;
    .locals 1

    .line 1
    sget-object v0, Li3d;->f:Li3d;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Li3d;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li3d;->e()V

    :cond_0
    iput-boolean p1, p0, Li3d;->e:Z

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Li3d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li3d;->d:Lr9d;

    invoke-virtual {v0, p1}, Lr9d;->a(Landroid/content/Context;)V

    iget-object p1, p0, Li3d;->d:Lr9d;

    invoke-virtual {p1, p0}, Lr9d;->b(Lr9d$a;)V

    iget-object p1, p0, Li3d;->d:Lr9d;

    invoke-virtual {p1}, Lr9d;->i()V

    iget-object p1, p0, Li3d;->d:Lr9d;

    invoke-virtual {p1}, Lr9d;->g()Z

    move-result p1

    iput-boolean p1, p0, Li3d;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Li3d;->c:Z

    :cond_0
    return-void
.end method

.method public c()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Li3d;->b:Ljava/util/Date;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Li3d;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li3d;->b:Ljava/util/Date;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Li8d;->e()Li8d;

    move-result-object v0

    invoke-virtual {v0}, Li8d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3d;

    invoke-virtual {v1}, Le3d;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {p0}, Li3d;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->i(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Li3d;->a:Lqed;

    invoke-virtual {v0}, Lqed;->a()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Li3d;->b:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Li3d;->b:Ljava/util/Date;

    invoke-virtual {p0}, Li3d;->d()V

    :cond_1
    return-void
.end method
