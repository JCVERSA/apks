.class public final Lcom/yandex/mobile/ads/impl/gm1;
.super Lcom/yandex/mobile/ads/impl/pk;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/em1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/gm1$a;
    }
.end annotation


# instance fields
.field private final h:Lcom/yandex/mobile/ads/impl/jw0;

.field private final i:Lcom/yandex/mobile/ads/impl/jw0$f;

.field private final j:Lcom/yandex/mobile/ads/impl/tv$a;

.field private final k:Lcom/yandex/mobile/ads/impl/dm1$a;

.field private final l:Lcom/yandex/mobile/ads/impl/i40;

.field private final m:Lcom/yandex/mobile/ads/impl/ds0;

.field private final n:I

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Lcom/yandex/mobile/ads/impl/d72;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/jw0;Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;Lcom/yandex/mobile/ads/impl/i40;Lcom/yandex/mobile/ads/impl/ds0;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/pk;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jw0$f;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gm1;->i:Lcom/yandex/mobile/ads/impl/jw0$f;

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->h:Lcom/yandex/mobile/ads/impl/jw0;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gm1;->j:Lcom/yandex/mobile/ads/impl/tv$a;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gm1;->k:Lcom/yandex/mobile/ads/impl/dm1$a;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gm1;->l:Lcom/yandex/mobile/ads/impl/i40;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/gm1;->m:Lcom/yandex/mobile/ads/impl/ds0;

    .line 9
    iput p6, p0, Lcom/yandex/mobile/ads/impl/gm1;->n:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->p:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/jw0;Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;Lcom/yandex/mobile/ads/impl/i40;Lcom/yandex/mobile/ads/impl/ds0;ILmgd;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/gm1;-><init>(Lcom/yandex/mobile/ads/impl/jw0;Lcom/yandex/mobile/ads/impl/tv$a;Lcom/yandex/mobile/ads/impl/dm1$a;Lcom/yandex/mobile/ads/impl/i40;Lcom/yandex/mobile/ads/impl/ds0;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/cd;J)Lcom/yandex/mobile/ads/impl/pw0;
    .locals 13

    move-object v8, p0

    .line 1
    iget-object v0, v8, Lcom/yandex/mobile/ads/impl/gm1;->j:Lcom/yandex/mobile/ads/impl/tv$a;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/tv$a;->a()Lcom/yandex/mobile/ads/impl/tv;

    move-result-object v2

    .line 2
    iget-object v0, v8, Lcom/yandex/mobile/ads/impl/gm1;->s:Lcom/yandex/mobile/ads/impl/d72;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 4
    :cond_0
    new-instance v12, Lcom/yandex/mobile/ads/impl/em1;

    iget-object v0, v8, Lcom/yandex/mobile/ads/impl/gm1;->i:Lcom/yandex/mobile/ads/impl/jw0$f;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/jw0$f;->a:Landroid/net/Uri;

    iget-object v0, v8, Lcom/yandex/mobile/ads/impl/gm1;->k:Lcom/yandex/mobile/ads/impl/dm1$a;

    .line 5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pk;->c()Lcom/yandex/mobile/ads/impl/mi1;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/yandex/mobile/ads/impl/dm1$a;->a(Lcom/yandex/mobile/ads/impl/mi1;)Lcom/yandex/mobile/ads/impl/dm1;

    move-result-object v3

    iget-object v4, v8, Lcom/yandex/mobile/ads/impl/gm1;->l:Lcom/yandex/mobile/ads/impl/i40;

    .line 6
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pk;->a(Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/h40$a;

    move-result-object v5

    iget-object v6, v8, Lcom/yandex/mobile/ads/impl/gm1;->m:Lcom/yandex/mobile/ads/impl/ds0;

    .line 7
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pk;->b(Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/ww0$a;

    move-result-object v7

    iget-object v0, v8, Lcom/yandex/mobile/ads/impl/gm1;->i:Lcom/yandex/mobile/ads/impl/jw0$f;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/jw0$f;->e:Ljava/lang/String;

    iget v11, v8, Lcom/yandex/mobile/ads/impl/gm1;->n:I

    move-object v0, v12

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/em1;-><init>(Landroid/net/Uri;Lcom/yandex/mobile/ads/impl/tv;Lcom/yandex/mobile/ads/impl/dm1;Lcom/yandex/mobile/ads/impl/i40;Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/ds0;Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/em1$b;Lcom/yandex/mobile/ads/impl/cd;Ljava/lang/String;I)V

    return-object v12
.end method

.method public final a(JZZ)V
    .locals 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 8
    iget-wide p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->p:J

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gm1;->o:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/gm1;->p:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gm1;->q:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gm1;->r:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 10
    :cond_1
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->p:J

    .line 11
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/gm1;->q:Z

    .line 12
    iput-boolean p4, p0, Lcom/yandex/mobile/ads/impl/gm1;->r:Z

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->o:Z

    .line 14
    new-instance p1, Lcom/yandex/mobile/ads/impl/cz1;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/gm1;->p:J

    iget-boolean v5, p0, Lcom/yandex/mobile/ads/impl/gm1;->q:Z

    iget-boolean v6, p0, Lcom/yandex/mobile/ads/impl/gm1;->r:Z

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/gm1;->h:Lcom/yandex/mobile/ads/impl/jw0;

    move-object v0, p1

    move-wide v1, v3

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/cz1;-><init>(JJZZLcom/yandex/mobile/ads/impl/jw0;)V

    .line 16
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/gm1;->o:Z

    if-eqz p2, :cond_2

    .line 17
    new-instance p2, Lcom/yandex/mobile/ads/impl/fm1;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/fm1;-><init>(Lcom/yandex/mobile/ads/impl/cz1;)V

    move-object p1, p2

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pk;->a(Lcom/yandex/mobile/ads/impl/i52;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d72;)V
    .locals 10
    .param p1    # Lcom/yandex/mobile/ads/impl/d72;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->s:Lcom/yandex/mobile/ads/impl/d72;

    .line 20
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->l:Lcom/yandex/mobile/ads/impl/i40;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/i40;->prepare()V

    .line 21
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gm1;->l:Lcom/yandex/mobile/ads/impl/i40;

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pk;->c()Lcom/yandex/mobile/ads/impl/mi1;

    move-result-object v1

    .line 25
    invoke-interface {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/i40;->a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/mi1;)V

    .line 26
    new-instance p1, Lcom/yandex/mobile/ads/impl/cz1;

    iget-wide v5, p0, Lcom/yandex/mobile/ads/impl/gm1;->p:J

    iget-boolean v7, p0, Lcom/yandex/mobile/ads/impl/gm1;->q:Z

    iget-boolean v8, p0, Lcom/yandex/mobile/ads/impl/gm1;->r:Z

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/gm1;->h:Lcom/yandex/mobile/ads/impl/jw0;

    move-object v2, p1

    move-wide v3, v5

    .line 27
    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/cz1;-><init>(JJZZLcom/yandex/mobile/ads/impl/jw0;)V

    .line 28
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gm1;->o:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/yandex/mobile/ads/impl/fm1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/fm1;-><init>(Lcom/yandex/mobile/ads/impl/cz1;)V

    move-object p1, v0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pk;->a(Lcom/yandex/mobile/ads/impl/i52;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pw0;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/yandex/mobile/ads/impl/em1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/em1;->i()V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gm1;->l:Lcom/yandex/mobile/ads/impl/i40;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/i40;->release()V

    return-void
.end method

.method public final getMediaItem()Lcom/yandex/mobile/ads/impl/jw0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gm1;->h:Lcom/yandex/mobile/ads/impl/jw0;

    return-object p0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method
