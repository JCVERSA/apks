.class public Li53$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li53;->s(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Li53;


# direct methods
.method public constructor <init>(Li53;ZZ)V
    .locals 0

    iput-object p1, p0, Li53$a;->c:Li53;

    iput-boolean p2, p0, Li53$a;->a:Z

    iput-boolean p3, p0, Li53$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqd8;)Lqd8;
    .locals 1

    instance-of v0, p1, Lgnb;

    if-eqz v0, :cond_0

    check-cast p1, Lgnb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lgnb;

    invoke-direct {p1}, Lgnb;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lgnb;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lgnb;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Li53$a;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Li53$a;->c:Li53;

    invoke-virtual {v0}, Li53;->A()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lgnb;->e()V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lgnb;->d()V

    :cond_4
    iget-boolean v0, p0, Li53$a;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lgnb;->c()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Li53$a;->c:Li53;

    invoke-virtual {p0}, Li53;->B()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lgnb;->e()V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lgnb;->f()V

    :cond_6
    return-object p1
.end method
