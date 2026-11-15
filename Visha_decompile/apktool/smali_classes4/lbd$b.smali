.class public Llbd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Z

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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Llbd$b;->f:I

    iput v0, p0, Llbd$b;->g:I

    iput v0, p0, Llbd$b;->h:I

    sget-object v0, Lcom/mgadplus/Imagework/d;->ALL:Lcom/mgadplus/Imagework/d;

    iput-object v0, p0, Llbd$b;->m:Lcom/mgadplus/Imagework/d;

    sget-object v0, Lcom/mgadplus/Imagework/l;->HIGH:Lcom/mgadplus/Imagework/l;

    iput-object v0, p0, Llbd$b;->n:Lcom/mgadplus/Imagework/l;

    const/16 v0, 0xa

    iput v0, p0, Llbd$b;->w:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Llbd$b;->E:Z

    return-void
.end method

.method public static synthetic B(Llbd$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Llbd$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic C(Llbd$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Llbd$b;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic D(Llbd$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Llbd$b;->p:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic E(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->i:Z

    return p1
.end method

.method public static synthetic F(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->g:I

    return p1
.end method

.method public static synthetic I(Llbd$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Llbd$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic J(Llbd$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Llbd$b;->t:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic K(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->j:Z

    return p1
.end method

.method public static synthetic L(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->h:I

    return p1
.end method

.method public static synthetic N(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->d:Z

    return p0
.end method

.method public static synthetic O(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->k:Z

    return p1
.end method

.method public static synthetic P(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->e:I

    return p0
.end method

.method public static synthetic Q(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->w:I

    return p1
.end method

.method public static synthetic S(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->l:Z

    return p1
.end method

.method public static synthetic T(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->z:I

    return p1
.end method

.method public static synthetic U(Llbd$b;)Lm8d;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic V(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->u:Z

    return p1
.end method

.method public static synthetic W(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->f:I

    return p0
.end method

.method public static synthetic X(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->B:I

    return p1
.end method

.method public static synthetic Y(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->v:Z

    return p1
.end method

.method public static synthetic Z(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->g:I

    return p0
.end method

.method public static synthetic a(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->x:Z

    return p0
.end method

.method public static synthetic a0(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->x:Z

    return p1
.end method

.method public static synthetic b(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->A:Z

    return p0
.end method

.method public static synthetic b0(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->h:I

    return p0
.end method

.method public static synthetic c(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->B:I

    return p0
.end method

.method public static synthetic c0(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->y:Z

    return p1
.end method

.method public static synthetic d(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->C:Z

    return p0
.end method

.method public static synthetic d0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->i:Z

    return p0
.end method

.method public static synthetic e(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->D:Z

    return p0
.end method

.method public static synthetic e0(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->A:Z

    return p1
.end method

.method public static synthetic f(Llbd$b;F)F
    .locals 0

    iput p1, p0, Llbd$b;->o:F

    return p1
.end method

.method public static synthetic f0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->j:Z

    return p0
.end method

.method public static synthetic g(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->e:I

    return p1
.end method

.method public static synthetic g0(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->C:Z

    return p1
.end method

.method public static synthetic h(Llbd$b;Lm8d;)Lm8d;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public static synthetic h0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->k:Z

    return p0
.end method

.method public static synthetic i(Llbd$b;Lcom/bumptech/glide/request/target/AppWidgetTarget;)Lcom/bumptech/glide/request/target/AppWidgetTarget;
    .locals 0

    iput-object p1, p0, Llbd$b;->s:Lcom/bumptech/glide/request/target/AppWidgetTarget;

    return-object p1
.end method

.method public static synthetic i0(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->D:Z

    return p1
.end method

.method public static synthetic j(Llbd$b;Lcom/bumptech/glide/request/target/NotificationTarget;)Lcom/bumptech/glide/request/target/NotificationTarget;
    .locals 0

    iput-object p1, p0, Llbd$b;->r:Lcom/bumptech/glide/request/target/NotificationTarget;

    return-object p1
.end method

.method public static synthetic j0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->l:Z

    return p0
.end method

.method public static synthetic k(Llbd$b;Lcom/bumptech/glide/request/target/SimpleTarget;)Lcom/bumptech/glide/request/target/SimpleTarget;
    .locals 0

    iput-object p1, p0, Llbd$b;->q:Lcom/bumptech/glide/request/target/SimpleTarget;

    return-object p1
.end method

.method public static synthetic k0(Llbd$b;)Lcom/mgadplus/Imagework/d;
    .locals 0

    iget-object p0, p0, Llbd$b;->m:Lcom/mgadplus/Imagework/d;

    return-object p0
.end method

.method public static synthetic l(Llbd$b;Lcom/mgadplus/Imagework/d;)Lcom/mgadplus/Imagework/d;
    .locals 0

    iput-object p1, p0, Llbd$b;->m:Lcom/mgadplus/Imagework/d;

    return-object p1
.end method

.method public static synthetic l0(Llbd$b;)F
    .locals 0

    iget p0, p0, Llbd$b;->o:F

    return p0
.end method

.method public static synthetic m(Llbd$b;Lcom/mgadplus/Imagework/l;)Lcom/mgadplus/Imagework/l;
    .locals 0

    iput-object p1, p0, Llbd$b;->n:Lcom/mgadplus/Imagework/l;

    return-object p1
.end method

.method public static synthetic m0(Llbd$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llbd$b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n0(Llbd$b;)Lcom/bumptech/glide/request/target/SimpleTarget;
    .locals 0

    iget-object p0, p0, Llbd$b;->q:Lcom/bumptech/glide/request/target/SimpleTarget;

    return-object p0
.end method

.method public static synthetic o0(Llbd$b;)Lcom/bumptech/glide/request/target/NotificationTarget;
    .locals 0

    iget-object p0, p0, Llbd$b;->r:Lcom/bumptech/glide/request/target/NotificationTarget;

    return-object p0
.end method

.method public static synthetic p0(Llbd$b;)Lcom/bumptech/glide/request/target/AppWidgetTarget;
    .locals 0

    iget-object p0, p0, Llbd$b;->s:Lcom/bumptech/glide/request/target/AppWidgetTarget;

    return-object p0
.end method

.method public static synthetic q0(Llbd$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Llbd$b;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic r0(Llbd$b;)Lcom/mgadplus/Imagework/l;
    .locals 0

    iget-object p0, p0, Llbd$b;->n:Lcom/mgadplus/Imagework/l;

    return-object p0
.end method

.method public static synthetic s0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->y:Z

    return p0
.end method

.method public static synthetic t0(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->z:I

    return p0
.end method

.method public static synthetic u(Llbd$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Llbd$b;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic u0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->u:Z

    return p0
.end method

.method public static synthetic v(Llbd$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llbd$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic v0(Llbd$b;)Z
    .locals 0

    iget-boolean p0, p0, Llbd$b;->v:Z

    return p0
.end method

.method public static synthetic w(Llbd$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Llbd$b;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic w0(Llbd$b;)I
    .locals 0

    iget p0, p0, Llbd$b;->w:I

    return p0
.end method

.method public static synthetic x(Llbd$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Llbd$b;->d:Z

    return p1
.end method

.method public static synthetic y(Llbd$b;I)I
    .locals 0

    iput p1, p0, Llbd$b;->f:I

    return p1
.end method


# virtual methods
.method public A(Z)Llbd$b;
    .locals 0

    iput-boolean p1, p0, Llbd$b;->j:Z

    return-object p0
.end method

.method public G(I)Llbd$b;
    .locals 0

    iput p1, p0, Llbd$b;->w:I

    return-object p0
.end method

.method public H(Z)Llbd$b;
    .locals 0

    iput-boolean p1, p0, Llbd$b;->k:Z

    return-object p0
.end method

.method public M(Z)Llbd$b;
    .locals 0

    iput-boolean p1, p0, Llbd$b;->u:Z

    return-object p0
.end method

.method public R(Z)Llbd$b;
    .locals 0

    iput-boolean p1, p0, Llbd$b;->v:Z

    return-object p0
.end method

.method public n(I)Llbd$b;
    .locals 0

    invoke-virtual {p0, p1}, Llbd$b;->z(I)Llbd$b;

    move-result-object p0

    return-object p0
.end method

.method public o(Lcom/bumptech/glide/request/target/SimpleTarget;)Llbd$b;
    .locals 0

    iput-object p1, p0, Llbd$b;->q:Lcom/bumptech/glide/request/target/SimpleTarget;

    return-object p0
.end method

.method public p(Lcom/mgadplus/Imagework/d;)Llbd$b;
    .locals 0

    iput-object p1, p0, Llbd$b;->m:Lcom/mgadplus/Imagework/d;

    return-object p0
.end method

.method public q(Lcom/mgadplus/Imagework/l;)Llbd$b;
    .locals 0

    iput-object p1, p0, Llbd$b;->n:Lcom/mgadplus/Imagework/l;

    return-object p0
.end method

.method public r(Ljava/lang/Integer;)Llbd$b;
    .locals 0

    iput-object p1, p0, Llbd$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public s(Z)Llbd$b;
    .locals 0

    iput-boolean p1, p0, Llbd$b;->i:Z

    return-object p0
.end method

.method public t()Llbd;
    .locals 2

    new-instance v0, Llbd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llbd;-><init>(Llbd$b;Llbd$a;)V

    return-object v0
.end method

.method public z(I)Llbd$b;
    .locals 0

    iput p1, p0, Llbd$b;->f:I

    return-object p0
.end method
