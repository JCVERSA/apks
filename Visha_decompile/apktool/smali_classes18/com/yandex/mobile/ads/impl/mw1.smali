.class public final Lcom/yandex/mobile/ads/impl/mw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/mw1$a;,
        Lcom/yandex/mobile/ads/impl/mw1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/mobile/ads/impl/zd0<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/cd0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/d61;

.field private final c:Lcom/yandex/mobile/ads/impl/xt1;

.field private final d:Lcom/yandex/mobile/ads/impl/z91;

.field private final e:Lcom/yandex/mobile/ads/impl/o3;

.field private final f:Lcom/yandex/mobile/ads/impl/t71;

.field private final g:Lcom/yandex/mobile/ads/impl/sd0;

.field private h:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/yandex/mobile/ads/impl/q61;

.field private j:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/d61;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/d61;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/mw1;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/d61;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/d61;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/d61;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "screenLoadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->a:Lcom/yandex/mobile/ads/impl/jd0;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mw1;->b:Lcom/yandex/mobile/ads/impl/d61;

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object p3

    .line 8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/mw1;->e:Lcom/yandex/mobile/ads/impl/o3;

    .line 9
    new-instance v1, Lcom/yandex/mobile/ads/impl/t71;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/t71;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1;->f:Lcom/yandex/mobile/ads/impl/t71;

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1;->c:Lcom/yandex/mobile/ads/impl/xt1;

    .line 12
    new-instance v1, Lcom/yandex/mobile/ads/impl/z91;

    invoke-direct {v1, p3, p2, v0, p1}, Lcom/yandex/mobile/ads/impl/z91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1;->d:Lcom/yandex/mobile/ads/impl/z91;

    .line 13
    new-instance p1, Lcom/yandex/mobile/ads/impl/sd0;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/sd0;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->g:Lcom/yandex/mobile/ads/impl/sd0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->e:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/mw1;Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->i:Lcom/yandex/mobile/ads/impl/q61;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/mw1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->j:Z

    return p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/t71;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->f:Lcom/yandex/mobile/ads/impl/t71;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/jd0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->a:Lcom/yandex/mobile/ads/impl/jd0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/xt1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->c:Lcom/yandex/mobile/ads/impl/xt1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zd0;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    const-string v0, "contentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/r6;->a()Lcom/yandex/mobile/ads/impl/q6;

    move-result-object v0

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1;->h:Lcom/yandex/mobile/ads/impl/o8;

    .line 23
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mw1;->i:Lcom/yandex/mobile/ads/impl/q61;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 24
    new-instance v0, Lcom/yandex/mobile/ads/impl/c1$a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mw1;->e:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/mg0;->i()Lcom/yandex/mobile/ads/impl/t8;

    move-result-object p1

    invoke-direct {v0, v1, v3, p1}, Lcom/yandex/mobile/ads/impl/c1$a;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t8;)V

    .line 25
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->e:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/c1$a;->a(I)Lcom/yandex/mobile/ads/impl/c1$a;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/c1$a;->a(Lcom/yandex/mobile/ads/impl/q61;)Lcom/yandex/mobile/ads/impl/c1$a;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/yandex/mobile/ads/impl/c1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/c1;-><init>(Lcom/yandex/mobile/ads/impl/c1$a;)V

    .line 28
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->g:Lcom/yandex/mobile/ads/impl/sd0;

    invoke-virtual {p1, p2, v0}, Lcom/yandex/mobile/ads/impl/sd0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/c1;)Ljava/lang/Object;

    move-result-object v0

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->h:Lcom/yandex/mobile/ads/impl/o8;

    .line 30
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->i:Lcom/yandex/mobile/ads/impl/q61;

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->j:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->h:Lcom/yandex/mobile/ads/impl/o8;

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1;->i:Lcom/yandex/mobile/ads/impl/q61;

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->d:Lcom/yandex/mobile/ads/impl/z91;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z91;->a()V

    const/4 p0, 0x0

    .line 8
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/mw1;->j:Z

    if-nez v0, :cond_0

    .line 11
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mw1;->h:Lcom/yandex/mobile/ads/impl/o8;

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mw1;->a:Lcom/yandex/mobile/ads/impl/jd0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v2, "adLoadingPhaseType"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 16
    new-instance v0, Lcom/yandex/mobile/ads/impl/mw1$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/mw1$b;-><init>(Lcom/yandex/mobile/ads/impl/mw1;)V

    .line 17
    new-instance v1, Lcom/yandex/mobile/ads/impl/mw1$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mw1$a;-><init>(Lcom/yandex/mobile/ads/impl/mw1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->d:Lcom/yandex/mobile/ads/impl/z91;

    .line 19
    invoke-virtual {p0, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/z91;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/z91$b;Lcom/yandex/mobile/ads/impl/dr1;)V

    :cond_0
    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mw1;->b:Lcom/yandex/mobile/ads/impl/d61;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1;->i:Lcom/yandex/mobile/ads/impl/q61;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/d61;->a(Lcom/yandex/mobile/ads/impl/q61;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
