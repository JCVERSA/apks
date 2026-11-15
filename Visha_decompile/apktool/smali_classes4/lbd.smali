.class public Llbd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llbd$b;
    }
.end annotation


# static fields
.field public static E:Llbd;


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/mgadplus/Imagework/d;

.field public n:Lcom/mgadplus/Imagework/l;

.field public o:F

.field public p:Ljava/lang/String;

.field public q:Lcom/bumptech/glide/request/target/SimpleTarget;

.field public r:Lcom/bumptech/glide/request/target/NotificationTarget;

.field public s:Lcom/bumptech/glide/request/target/AppWidgetTarget;

.field public t:Ljava/lang/Integer;

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llbd$b;

    invoke-direct {v0}, Llbd$b;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Llbd$b;->z(I)Llbd$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llbd$b;->H(Z)Llbd$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llbd$b;->s(Z)Llbd$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Llbd$b;->A(Z)Llbd$b;

    move-result-object v0

    sget-object v1, Lcom/mgadplus/Imagework/d;->ALL:Lcom/mgadplus/Imagework/d;

    invoke-virtual {v0, v1}, Llbd$b;->p(Lcom/mgadplus/Imagework/d;)Llbd$b;

    move-result-object v0

    sget-object v1, Lcom/mgadplus/Imagework/l;->HIGH:Lcom/mgadplus/Imagework/l;

    invoke-virtual {v0, v1}, Llbd$b;->q(Lcom/mgadplus/Imagework/l;)Llbd$b;

    move-result-object v0

    invoke-virtual {v0}, Llbd$b;->t()Llbd;

    move-result-object v0

    sput-object v0, Llbd;->E:Llbd;

    return-void
.end method

.method public constructor <init>(Llbd$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Llbd;->f:I

    .line 4
    iput v0, p0, Llbd;->g:I

    .line 5
    iput v0, p0, Llbd;->h:I

    .line 6
    invoke-static {p1}, Llbd$b;->v(Llbd$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbd;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Llbd$b;->B(Llbd$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llbd;->b:Ljava/lang/Integer;

    .line 8
    invoke-static {p1}, Llbd$b;->I(Llbd$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llbd;->c:Ljava/lang/Integer;

    .line 9
    invoke-static {p1}, Llbd$b;->N(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->d:Z

    .line 10
    invoke-static {p1}, Llbd$b;->P(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->e:I

    .line 11
    invoke-static {p1}, Llbd$b;->U(Llbd$b;)Lm8d;

    .line 12
    invoke-static {p1}, Llbd$b;->W(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->f:I

    .line 13
    invoke-static {p1}, Llbd$b;->Z(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->g:I

    .line 14
    invoke-static {p1}, Llbd$b;->b0(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->h:I

    .line 15
    invoke-static {p1}, Llbd$b;->d0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->i:Z

    .line 16
    invoke-static {p1}, Llbd$b;->f0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->j:Z

    .line 17
    invoke-static {p1}, Llbd$b;->h0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->k:Z

    .line 18
    invoke-static {p1}, Llbd$b;->j0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->l:Z

    .line 19
    invoke-static {p1}, Llbd$b;->k0(Llbd$b;)Lcom/mgadplus/Imagework/d;

    move-result-object v0

    iput-object v0, p0, Llbd;->m:Lcom/mgadplus/Imagework/d;

    .line 20
    invoke-static {p1}, Llbd$b;->l0(Llbd$b;)F

    move-result v0

    iput v0, p0, Llbd;->o:F

    .line 21
    invoke-static {p1}, Llbd$b;->m0(Llbd$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbd;->p:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Llbd$b;->n0(Llbd$b;)Lcom/bumptech/glide/request/target/SimpleTarget;

    move-result-object v0

    iput-object v0, p0, Llbd;->q:Lcom/bumptech/glide/request/target/SimpleTarget;

    .line 23
    invoke-static {p1}, Llbd$b;->o0(Llbd$b;)Lcom/bumptech/glide/request/target/NotificationTarget;

    move-result-object v0

    iput-object v0, p0, Llbd;->r:Lcom/bumptech/glide/request/target/NotificationTarget;

    .line 24
    invoke-static {p1}, Llbd$b;->p0(Llbd$b;)Lcom/bumptech/glide/request/target/AppWidgetTarget;

    move-result-object v0

    iput-object v0, p0, Llbd;->s:Lcom/bumptech/glide/request/target/AppWidgetTarget;

    .line 25
    invoke-static {p1}, Llbd$b;->q0(Llbd$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llbd;->t:Ljava/lang/Integer;

    .line 26
    invoke-static {p1}, Llbd$b;->r0(Llbd$b;)Lcom/mgadplus/Imagework/l;

    move-result-object v0

    iput-object v0, p0, Llbd;->n:Lcom/mgadplus/Imagework/l;

    .line 27
    invoke-static {p1}, Llbd$b;->s0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->y:Z

    .line 28
    invoke-static {p1}, Llbd$b;->t0(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->z:I

    .line 29
    invoke-static {p1}, Llbd$b;->u0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->u:Z

    .line 30
    invoke-static {p1}, Llbd$b;->v0(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->v:Z

    .line 31
    invoke-static {p1}, Llbd$b;->w0(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->w:I

    .line 32
    invoke-static {p1}, Llbd$b;->a(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->x:Z

    .line 33
    invoke-static {p1}, Llbd$b;->b(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->A:Z

    .line 34
    invoke-static {p1}, Llbd$b;->c(Llbd$b;)I

    move-result v0

    iput v0, p0, Llbd;->B:I

    .line 35
    invoke-static {p1}, Llbd$b;->d(Llbd$b;)Z

    move-result v0

    iput-boolean v0, p0, Llbd;->C:Z

    .line 36
    invoke-static {p1}, Llbd$b;->e(Llbd$b;)Z

    move-result p1

    iput-boolean p1, p0, Llbd;->D:Z

    return-void
.end method

.method public synthetic constructor <init>(Llbd$b;Llbd$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llbd;-><init>(Llbd$b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Llbd;)Llbd;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p1, Llbd;->i:Z

    iput-boolean v0, p1, Llbd;->j:Z

    invoke-static {p0}, Llbd;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p1, Llbd;->i:Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Llbd;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput-boolean v1, p1, Llbd;->j:Z

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;Llbd;)Llbd$b;
    .locals 1

    new-instance v0, Llbd$b;

    invoke-direct {v0}, Llbd$b;-><init>()V

    invoke-static {p0, p1}, Llbd;->a(Ljava/lang/String;Llbd;)Llbd;

    move-result-object p0

    iget-object p1, p0, Llbd;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Llbd$b;->w(Llbd$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Llbd;->b:Ljava/lang/Integer;

    invoke-static {v0, p1}, Llbd$b;->u(Llbd$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Llbd;->c:Ljava/lang/Integer;

    invoke-static {v0, p1}, Llbd$b;->C(Llbd$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-boolean p1, p0, Llbd;->d:Z

    invoke-static {v0, p1}, Llbd$b;->x(Llbd$b;Z)Z

    iget p1, p0, Llbd;->e:I

    invoke-static {v0, p1}, Llbd$b;->g(Llbd$b;I)I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Llbd$b;->h(Llbd$b;Lm8d;)Lm8d;

    iget p1, p0, Llbd;->f:I

    invoke-static {v0, p1}, Llbd$b;->y(Llbd$b;I)I

    iget p1, p0, Llbd;->g:I

    invoke-static {v0, p1}, Llbd$b;->F(Llbd$b;I)I

    iget p1, p0, Llbd;->h:I

    invoke-static {v0, p1}, Llbd$b;->L(Llbd$b;I)I

    iget-boolean p1, p0, Llbd;->i:Z

    invoke-static {v0, p1}, Llbd$b;->E(Llbd$b;Z)Z

    iget-boolean p1, p0, Llbd;->j:Z

    invoke-static {v0, p1}, Llbd$b;->K(Llbd$b;Z)Z

    iget-boolean p1, p0, Llbd;->k:Z

    invoke-static {v0, p1}, Llbd$b;->O(Llbd$b;Z)Z

    iget-boolean p1, p0, Llbd;->l:Z

    invoke-static {v0, p1}, Llbd$b;->S(Llbd$b;Z)Z

    iget-object p1, p0, Llbd;->m:Lcom/mgadplus/Imagework/d;

    invoke-static {v0, p1}, Llbd$b;->l(Llbd$b;Lcom/mgadplus/Imagework/d;)Lcom/mgadplus/Imagework/d;

    iget p1, p0, Llbd;->o:F

    invoke-static {v0, p1}, Llbd$b;->f(Llbd$b;F)F

    iget-object p1, p0, Llbd;->p:Ljava/lang/String;

    invoke-static {v0, p1}, Llbd$b;->D(Llbd$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Llbd;->q:Lcom/bumptech/glide/request/target/SimpleTarget;

    invoke-static {v0, p1}, Llbd$b;->k(Llbd$b;Lcom/bumptech/glide/request/target/SimpleTarget;)Lcom/bumptech/glide/request/target/SimpleTarget;

    iget-object p1, p0, Llbd;->r:Lcom/bumptech/glide/request/target/NotificationTarget;

    invoke-static {v0, p1}, Llbd$b;->j(Llbd$b;Lcom/bumptech/glide/request/target/NotificationTarget;)Lcom/bumptech/glide/request/target/NotificationTarget;

    iget-object p1, p0, Llbd;->s:Lcom/bumptech/glide/request/target/AppWidgetTarget;

    invoke-static {v0, p1}, Llbd$b;->i(Llbd$b;Lcom/bumptech/glide/request/target/AppWidgetTarget;)Lcom/bumptech/glide/request/target/AppWidgetTarget;

    iget-object p1, p0, Llbd;->t:Ljava/lang/Integer;

    invoke-static {v0, p1}, Llbd$b;->J(Llbd$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Llbd;->n:Lcom/mgadplus/Imagework/l;

    invoke-static {v0, p1}, Llbd$b;->m(Llbd$b;Lcom/mgadplus/Imagework/l;)Lcom/mgadplus/Imagework/l;

    iget-boolean p1, p0, Llbd;->u:Z

    invoke-static {v0, p1}, Llbd$b;->V(Llbd$b;Z)Z

    iget-boolean p1, p0, Llbd;->v:Z

    invoke-static {v0, p1}, Llbd$b;->Y(Llbd$b;Z)Z

    iget p1, p0, Llbd;->w:I

    invoke-static {v0, p1}, Llbd$b;->Q(Llbd$b;I)I

    iget-boolean p1, p0, Llbd;->x:Z

    invoke-static {v0, p1}, Llbd$b;->a0(Llbd$b;Z)Z

    iget-boolean p1, p0, Llbd;->y:Z

    invoke-static {v0, p1}, Llbd$b;->c0(Llbd$b;Z)Z

    iget p1, p0, Llbd;->z:I

    invoke-static {v0, p1}, Llbd$b;->T(Llbd$b;I)I

    iget-boolean p1, p0, Llbd;->A:Z

    invoke-static {v0, p1}, Llbd$b;->e0(Llbd$b;Z)Z

    iget p1, p0, Llbd;->B:I

    invoke-static {v0, p1}, Llbd$b;->X(Llbd$b;I)I

    iget-boolean p1, p0, Llbd;->C:Z

    invoke-static {v0, p1}, Llbd$b;->g0(Llbd$b;Z)Z

    iget-boolean p0, p0, Llbd;->D:Z

    invoke-static {v0, p0}, Llbd$b;->i0(Llbd$b;Z)Z

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WEBP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
