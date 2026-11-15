.class public final Lcom/yandex/mobile/ads/impl/fq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;
.implements Lcom/yandex/mobile/ads/impl/f1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/fq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;",
        "Lcom/yandex/mobile/ads/impl/f1;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/e1;

.field private final c:Lcom/yandex/mobile/ads/impl/op;

.field private final d:Lcom/yandex/mobile/ads/impl/zr;

.field private final e:Lcom/yandex/mobile/ads/impl/b51;

.field private final f:Lcom/yandex/mobile/ads/impl/dw;

.field private final g:Lcom/yandex/mobile/ads/impl/f52;

.field private h:Lcom/yandex/mobile/ads/impl/rp;

.field private final i:Lcom/yandex/mobile/ads/impl/xl1;

.field private final j:Lcom/yandex/mobile/ads/impl/kp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/b51;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/f52;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/e1;",
            "Lcom/yandex/mobile/ads/impl/op;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            "Lcom/yandex/mobile/ads/impl/b51;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityEventController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeAppearanceController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControlViewProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fq;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fq;->b:Lcom/yandex/mobile/ads/impl/e1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fq;->c:Lcom/yandex/mobile/ads/impl/op;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fq;->d:Lcom/yandex/mobile/ads/impl/zr;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fq;->e:Lcom/yandex/mobile/ads/impl/b51;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/fq;->f:Lcom/yandex/mobile/ads/impl/dw;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/fq;->g:Lcom/yandex/mobile/ads/impl/f52;

    invoke-virtual {p7}, Lcom/yandex/mobile/ads/impl/f52;->e()Lcom/yandex/mobile/ads/impl/xl1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fq;->i:Lcom/yandex/mobile/ads/impl/xl1;

    invoke-virtual {p7}, Lcom/yandex/mobile/ads/impl/f52;->b()Lcom/yandex/mobile/ads/impl/kp;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fq;->j:Lcom/yandex/mobile/ads/impl/kp;

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 12

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fq;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->u()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 17
    new-instance v5, Lcom/yandex/mobile/ads/impl/h50;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/h50;-><init>()V

    .line 18
    new-instance v6, Lcom/yandex/mobile/ads/impl/yp;

    .line 19
    new-instance v2, Lcom/yandex/mobile/ads/impl/yd;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/yd;-><init>()V

    .line 20
    invoke-direct {v6, v2}, Lcom/yandex/mobile/ads/impl/yp;-><init>(Lcom/yandex/mobile/ads/impl/yd;)V

    .line 21
    new-instance v11, Lcom/yandex/mobile/ads/impl/ql1;

    .line 22
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/fq;->f:Lcom/yandex/mobile/ads/impl/dw;

    .line 23
    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/fq;->i:Lcom/yandex/mobile/ads/impl/xl1;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-wide v9, v0

    .line 24
    invoke-direct/range {v2 .. v10}, Lcom/yandex/mobile/ads/impl/ql1;-><init>(Landroid/view/View;Landroid/widget/ProgressBar;Lcom/yandex/mobile/ads/impl/h50;Lcom/yandex/mobile/ads/impl/yp;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/xl1;J)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/fq;->j:Lcom/yandex/mobile/ads/impl/kp;

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/kp;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 26
    new-instance v11, Lcom/yandex/mobile/ads/impl/lz;

    .line 27
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fq;->c:Lcom/yandex/mobile/ads/impl/op;

    .line 28
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/fq;->f:Lcom/yandex/mobile/ads/impl/dw;

    .line 29
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/fq;->g:Lcom/yandex/mobile/ads/impl/f52;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->c()Lcom/yandex/mobile/ads/impl/aq;

    move-result-object v8

    move-object v2, v11

    move-object v3, p1

    move-wide v6, v0

    .line 30
    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/lz;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/dw;JLcom/yandex/mobile/ads/impl/aq;)V

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 31
    :goto_1
    iput-object v11, p0, Lcom/yandex/mobile/ads/impl/fq;->h:Lcom/yandex/mobile/ads/impl/rp;

    if-eqz v11, :cond_3

    .line 32
    invoke-interface {v11}, Lcom/yandex/mobile/ads/impl/rp;->c()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fq;->h:Lcom/yandex/mobile/ads/impl/rp;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->a()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fq;->e:Lcom/yandex/mobile/ads/impl/b51;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/b51;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fq;->e:Lcom/yandex/mobile/ads/impl/b51;

    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/b51;->a(Landroid/view/View;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fq;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/e1;->a(Lcom/yandex/mobile/ads/impl/f1;)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    sget v2, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v2

    .line 7
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->y0()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 9
    :goto_0
    sget-object v4, Lcom/yandex/mobile/ads/impl/g10;->c:Lcom/yandex/mobile/ads/impl/g10;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/g10;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/fq;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/o8;->w()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    .line 10
    new-instance v1, Lcom/yandex/mobile/ads/impl/fq$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fq;->d:Lcom/yandex/mobile/ads/impl/zr;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fq;->f:Lcom/yandex/mobile/ads/impl/dw;

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/fq$a;-><init>(Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/dw;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/fq;->a(Landroid/view/View;Landroid/widget/ProgressBar;)V

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    .line 14
    const-string p0, "close"

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fq;->h:Lcom/yandex/mobile/ads/impl/rp;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fq;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/e1;->b(Lcom/yandex/mobile/ads/impl/f1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fq;->h:Lcom/yandex/mobile/ads/impl/rp;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->invalidate()V

    :cond_0
    return-void
.end method
