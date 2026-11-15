.class public final Lcom/yandex/mobile/ads/impl/fv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/fv1$a;
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

.field private final b:Lcom/yandex/mobile/ads/impl/xt1;

.field private final c:Lcom/yandex/mobile/ads/impl/jv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/jv1<",
            "Lcom/yandex/mobile/ads/impl/gv1;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yandex/mobile/ads/impl/gv1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/ud0;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/ud0;-><init>()V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/hv1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0, p2, v3}, Lcom/yandex/mobile/ads/impl/hv1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-direct {v6, v3}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/jv1;

    invoke-direct {v7, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/jv1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j9;Lcom/yandex/mobile/ads/impl/iv1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/fv1;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ud0;Lcom/yandex/mobile/ads/impl/hv1;Lcom/yandex/mobile/ads/impl/xt1;Lcom/yandex/mobile/ads/impl/jv1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ud0;Lcom/yandex/mobile/ads/impl/hv1;Lcom/yandex/mobile/ads/impl/xt1;Lcom/yandex/mobile/ads/impl/jv1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/ud0;",
            "Lcom/yandex/mobile/ads/impl/hv1;",
            "Lcom/yandex/mobile/ads/impl/xt1;",
            "Lcom/yandex/mobile/ads/impl/jv1<",
            "Lcom/yandex/mobile/ads/impl/gv1;",
            ">;)V"
        }
    .end annotation

    .line 7
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adConfiguration"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "fullscreenAdSizeValidator"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "fullscreenHtmlAdCreateController"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkAdapterReporter"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "htmlAdCreationHandler"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1;->a:Lcom/yandex/mobile/ads/impl/jd0;

    .line 10
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/fv1;->b:Lcom/yandex/mobile/ads/impl/xt1;

    .line 11
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/fv1;->c:Lcom/yandex/mobile/ads/impl/jv1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fv1;)Lcom/yandex/mobile/ads/impl/jd0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fv1;->a:Lcom/yandex/mobile/ads/impl/jd0;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fv1;Lcom/yandex/mobile/ads/impl/gv1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zd0;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    const-string v0, "contentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/r6;->a()Lcom/yandex/mobile/ads/impl/q6;

    move-result-object v0

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/mg0;->i()Lcom/yandex/mobile/ads/impl/t8;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p2, p1}, Lcom/yandex/mobile/ads/impl/gv1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t8;)Ljava/lang/Object;

    move-result-object v0

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1;->c:Lcom/yandex/mobile/ads/impl/jv1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jv1;->a()V

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gv1;->d()V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fv1;->a:Lcom/yandex/mobile/ads/impl/jd0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    .line 11
    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fv1;->b:Lcom/yandex/mobile/ads/impl/xt1;

    .line 13
    invoke-virtual {v0, p1, p2, v3}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t71;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fv1;->b:Lcom/yandex/mobile/ads/impl/xt1;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 15
    new-instance v0, Lcom/yandex/mobile/ads/impl/fv1$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/fv1$a;-><init>(Lcom/yandex/mobile/ads/impl/fv1;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fv1;->c:Lcom/yandex/mobile/ads/impl/jv1;

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/jv1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/kv1;)V

    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fv1;->d:Lcom/yandex/mobile/ads/impl/gv1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gv1;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
