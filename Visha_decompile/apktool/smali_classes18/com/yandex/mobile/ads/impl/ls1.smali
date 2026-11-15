.class public final Lcom/yandex/mobile/ads/impl/ls1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ls1$a;,
        Lcom/yandex/mobile/ads/impl/ls1$b;,
        Lcom/yandex/mobile/ads/impl/ls1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;"
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

.field private final c:Lcom/yandex/mobile/ads/impl/zr;

.field private final d:Lcom/yandex/mobile/ads/impl/b51;

.field private final e:Lcom/yandex/mobile/ads/impl/n91;

.field private final f:Lcom/yandex/mobile/ads/impl/f52;

.field private final g:Lcom/yandex/mobile/ads/impl/b30;

.field private final h:Lcom/yandex/mobile/ads/impl/wp;

.field private i:Lcom/yandex/mobile/ads/impl/yc0;

.field private j:Lcom/yandex/mobile/ads/impl/ls1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ls1<",
            "TV;>.b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/d51;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/wp;)V
    .locals 1

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityEventController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControlViewProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeControllerProvider"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ls1;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ls1;->b:Lcom/yandex/mobile/ads/impl/e1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ls1;->c:Lcom/yandex/mobile/ads/impl/zr;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ls1;->d:Lcom/yandex/mobile/ads/impl/b51;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ls1;->e:Lcom/yandex/mobile/ads/impl/n91;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ls1;->f:Lcom/yandex/mobile/ads/impl/f52;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ls1;->g:Lcom/yandex/mobile/ads/impl/b30;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ls1;->h:Lcom/yandex/mobile/ads/impl/wp;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ls1;)Lcom/yandex/mobile/ads/impl/yc0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls1;->i:Lcom/yandex/mobile/ads/impl/yc0;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 2
    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ls1;->d:Lcom/yandex/mobile/ads/impl/b51;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/b51;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/ls1$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ls1$b;-><init>(Lcom/yandex/mobile/ads/impl/ls1;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ls1;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/e1;->a(Lcom/yandex/mobile/ads/impl/f1;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ls1;->j:Lcom/yandex/mobile/ads/impl/ls1$b;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    .line 7
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->y0()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 9
    :goto_0
    sget-object v3, Lcom/yandex/mobile/ads/impl/g10;->c:Lcom/yandex/mobile/ads/impl/g10;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/g10;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ls1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/o8;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 10
    new-instance v0, Lcom/yandex/mobile/ads/impl/ls1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ls1;->c:Lcom/yandex/mobile/ads/impl/zr;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ls1$a;-><init>(Lcom/yandex/mobile/ads/impl/zr;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/16 v0, 0x8

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    new-instance v4, Lcom/yandex/mobile/ads/impl/ls1$c;

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-direct {v4, p1, v0}, Lcom/yandex/mobile/ads/impl/ls1$c;-><init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V

    .line 16
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ls1;->h:Lcom/yandex/mobile/ads/impl/wp;

    .line 17
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ls1;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ls1;->e:Lcom/yandex/mobile/ads/impl/n91;

    .line 18
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ls1;->f:Lcom/yandex/mobile/ads/impl/f52;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ls1;->g:Lcom/yandex/mobile/ads/impl/b30;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string p1, "adResponse"

    invoke-static {v2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closeShowListener"

    invoke-static {v4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeMediaContent"

    invoke-static {v0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeProviderContainer"

    invoke-static {v5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/n91;->a()Lcom/yandex/mobile/ads/impl/db1;

    move-result-object v3

    .line 22
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/n91;->b()Lcom/yandex/mobile/ads/impl/ic1;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/b30;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    sget-object v6, Lcom/yandex/mobile/ads/impl/h10;->d:Lcom/yandex/mobile/ads/impl/h10;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/h10;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/f52;->b()Lcom/yandex/mobile/ads/impl/kp;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/kp;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    new-instance p1, Lcom/yandex/mobile/ads/impl/o81;

    invoke-direct {p1, v2, v4, v5}, Lcom/yandex/mobile/ads/impl/o81;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 26
    new-instance p1, Lcom/yandex/mobile/ads/impl/bb1;

    .line 27
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o8;->u()Ljava/lang/Long;

    move-result-object v6

    .line 28
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/f52;->c()Lcom/yandex/mobile/ads/impl/aq;

    move-result-object v7

    .line 29
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/f52;->b()Lcom/yandex/mobile/ads/impl/kp;

    move-result-object v8

    move-object v1, p1

    .line 30
    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/bb1;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/aq;Lcom/yandex/mobile/ads/impl/kp;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 31
    new-instance v1, Lcom/yandex/mobile/ads/impl/gc1;

    invoke-direct {v1, p1, v4}, Lcom/yandex/mobile/ads/impl/gc1;-><init>(Lcom/yandex/mobile/ads/impl/ic1;Lcom/yandex/mobile/ads/impl/zp;)V

    move-object p1, v1

    goto :goto_2

    .line 32
    :cond_6
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/f52;->b()Lcom/yandex/mobile/ads/impl/kp;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/kp;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    new-instance p1, Lcom/yandex/mobile/ads/impl/o81;

    invoke-direct {p1, v2, v4, v5}, Lcom/yandex/mobile/ads/impl/o81;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;)V

    goto :goto_2

    :cond_7
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_8

    .line 34
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/yc0;->start()V

    move-object v0, p1

    .line 35
    :cond_8
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ls1;->i:Lcom/yandex/mobile/ads/impl/yc0;

    :cond_9
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ls1;->j:Lcom/yandex/mobile/ads/impl/ls1$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ls1;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/e1;->b(Lcom/yandex/mobile/ads/impl/f1;)V

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls1;->i:Lcom/yandex/mobile/ads/impl/yc0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->invalidate()V

    :cond_1
    return-void
.end method
