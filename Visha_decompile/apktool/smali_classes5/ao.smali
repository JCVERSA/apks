.class public final Lao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lao$a;
    }
.end annotation


# static fields
.field public static final d:Lao$a;

.field public static final e:Lyi5;


# instance fields
.field public final a:Lyi5;

.field public final b:Lyi5;

.field public final c:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lao$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lao$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lao;->d:Lao$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lwn;

    invoke-direct {v1}, Lwn;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lao;->e:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lao;->a:Lyi5;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lyn;

    invoke-direct {v1}, Lyn;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    iput-object v1, p0, Lao;->b:Lyi5;

    new-instance v1, Lzn;

    invoke-direct {v1}, Lzn;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lao;->c:Lyi5;

    return-void
.end method

.method public static final U()Lao;
    .locals 1

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lwj5;
    .locals 1

    invoke-static {}, Lao;->g0()Lwj5;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lao;
    .locals 1

    invoke-static {}, Lao;->i0()Lao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Z
    .locals 1

    invoke-static {}, Lao;->u0()Z

    move-result v0

    return v0
.end method

.method public static synthetic f()Lhq6;
    .locals 1

    invoke-static {}, Lao;->h0()Lhq6;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic g()Lyi5;
    .locals 1

    sget-object v0, Lao;->e:Lyi5;

    return-object v0
.end method

.method public static final g0()Lwj5;
    .locals 1

    sget-object v0, Lwj5;->a:Lwj5;

    return-object v0
.end method

.method public static final h0()Lhq6;
    .locals 1

    sget-object v0, Lhq6;->a:Lhq6;

    return-object v0
.end method

.method public static final i0()Lao;
    .locals 1

    new-instance v0, Lao;

    invoke-direct {v0}, Lao;-><init>()V

    return-object v0
.end method

.method public static final u0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->C()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->E()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public B()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->D()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->F()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public C(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->E(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->G(I)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public D(I)Lcom/transsion/dbdata/database/AudioAlbum;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->F(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->H(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public E(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "displayName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public F(I)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->H(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->J(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->K(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public H(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->J(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->L(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "albumName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "artistName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public K(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;
    .locals 7

    const-string v0, "parentPath"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lwj5;->M(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lhq6;->O(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public L(Ljava/util/List;Z)Ljava/util/List;
    .locals 1

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->N(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->P(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public M(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1

    const-string v0, "parentPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->O(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->R(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public N(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->P(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->S(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public O()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->Q()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->T()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public P()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->R()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->U()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public Q(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->S(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->V(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public R(I)Lcom/transsion/dbdata/beans/LyricData;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->T(I)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->W(I)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public S(JLjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->W(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->Z(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public T()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->X()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->a0()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final V()Lwj5;
    .locals 0

    iget-object p0, p0, Lao;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwj5;

    return-object p0
.end method

.method public final W()Lhq6;
    .locals 0

    iget-object p0, p0, Lao;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhq6;

    return-object p0
.end method

.method public X(ZLjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->Y(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->c0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public Y(JLjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->a0(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->e0(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public Z()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->b0()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->f0()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lwj5;->c0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lhq6;->g0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public b0(ZLjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->d0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->h0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->e0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->j0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public d0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->k0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public e0(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->g0(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->l0(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->h0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->m0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public h(ILjava/lang/String;)I
    .locals 1

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->e(ILjava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->d(ILjava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->f(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->e(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->h()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->j()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public j0()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->l0()Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->p0()Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public k(ILjava/lang/String;)I
    .locals 1

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->i(ILjava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->k(ILjava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public k0()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->m0()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->r0()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public l(Ljava/util/List;)Z
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->j(Ljava/util/List;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->l(Ljava/util/List;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->n0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->s0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_0
    return-void
.end method

.method public m(ILjava/lang/String;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->k(ILjava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->m(ILjava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public m0(Ljava/lang/String;Z)J
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->o0(Ljava/lang/String;Z)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->t0(Ljava/lang/String;Z)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->l(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public n0(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 1

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lwj5;->p0(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lhq6;->u0(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public o(J)I
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->m(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->o(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method public o0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;
    .locals 7

    const-string v0, "playListName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItems"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lwj5;->q0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lhq6;->v0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public p(ILcom/transsion/dbdata/beans/media/AudioItem;Z)I
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->n(ILcom/transsion/dbdata/beans/media/AudioItem;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->p(ILcom/transsion/dbdata/beans/media/AudioItem;Z)I

    move-result p0

    :goto_0
    return p0
.end method

.method public p0(I)V
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->r0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->w0(I)V

    :goto_0
    return-void
.end method

.method public q(ILjava/util/List;Z)I
    .locals 1

    const-string v0, "mediaIds"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->o(ILjava/util/List;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->q(ILjava/util/List;Z)I

    move-result p0

    :goto_0
    return p0
.end method

.method public q0(ILjava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->s0(ILjava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->x0(ILjava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public r(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lwj5;->p(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lhq6;->r(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public r0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->t0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->y0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public s(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delete"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->q(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->s(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V

    :goto_0
    return-void
.end method

.method public s0(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mediaPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customCoverPath"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lwj5;->u0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lhq6;->z0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public t(Ljava/util/List;Le74;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delete"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->r(Ljava/util/List;Le74;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->t(Ljava/util/List;Le74;)V

    :goto_0
    return-void
.end method

.method public t0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->v0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->A0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;
    .locals 7

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lwj5;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lhq6;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->x()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->y()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public v0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lwj5;->w0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lhq6;->B0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public w()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->y()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->z()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public w0(Lcom/transsion/dbdata/database/PlayList;)I
    .locals 1

    const-string v0, "playList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->x0(Lcom/transsion/dbdata/database/PlayList;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->C0(Lcom/transsion/dbdata/database/PlayList;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public x(Ljava/lang/String;)Lkotlin/Pair;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->z(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->B(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public x0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->y0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->D0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public y(Z)Lkotlin/Pair;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwj5;->A(Z)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhq6;->C(Z)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final y0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public z()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lao;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lao;->V()Lwj5;

    move-result-object p0

    invoke-virtual {p0}, Lwj5;->B()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lao;->W()Lhq6;

    move-result-object p0

    invoke-virtual {p0}, Lhq6;->D()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
