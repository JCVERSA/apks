.class public final Lcom/yandex/mobile/ads/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/as$a;
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

.field private final c:Lcom/yandex/mobile/ads/impl/k3;

.field private final d:Lcom/yandex/mobile/ads/impl/n91;

.field private final e:Lcom/yandex/mobile/ads/impl/f52;

.field private final f:Lcom/yandex/mobile/ads/impl/b30;

.field private final g:Lcom/yandex/mobile/ads/impl/cs;

.field private final h:Lcom/yandex/mobile/ads/impl/ur0;

.field private i:Lcom/yandex/mobile/ads/impl/yc0;

.field private j:Lcom/yandex/mobile/ads/impl/f1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;)V
    .locals 9

    .line 1
    new-instance v7, Lcom/yandex/mobile/ads/impl/cs;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/cs;-><init>()V

    .line 2
    new-instance v8, Lcom/yandex/mobile/ads/impl/ur0;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/yandex/mobile/ads/impl/ur0;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/as;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/cs;Lcom/yandex/mobile/ads/impl/ur0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/cs;Lcom/yandex/mobile/ads/impl/ur0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/e1;",
            "Lcom/yandex/mobile/ads/impl/k3;",
            "Lcom/yandex/mobile/ads/impl/n91;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            "Lcom/yandex/mobile/ads/impl/b30;",
            "Lcom/yandex/mobile/ads/impl/cs;",
            "Lcom/yandex/mobile/ads/impl/ur0;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityEventController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCompleteListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCompleteControllerProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressListener"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/as;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/as;->b:Lcom/yandex/mobile/ads/impl/e1;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/as;->c:Lcom/yandex/mobile/ads/impl/k3;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/as;->d:Lcom/yandex/mobile/ads/impl/n91;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/as;->e:Lcom/yandex/mobile/ads/impl/f52;

    .line 11
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/as;->f:Lcom/yandex/mobile/ads/impl/b30;

    .line 12
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/as;->g:Lcom/yandex/mobile/ads/impl/cs;

    .line 13
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/as;->h:Lcom/yandex/mobile/ads/impl/ur0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/as;)Lcom/yandex/mobile/ads/impl/yc0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as;->i:Lcom/yandex/mobile/ads/impl/yc0;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 2
    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/as$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/as$a;-><init>(Lcom/yandex/mobile/ads/impl/as;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/as;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/e1;->a(Lcom/yandex/mobile/ads/impl/f1;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/as;->j:Lcom/yandex/mobile/ads/impl/f1;

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/as;->h:Lcom/yandex/mobile/ads/impl/ur0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ur0;->a(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/as;->g:Lcom/yandex/mobile/ads/impl/cs;

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/as;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/as;->c:Lcom/yandex/mobile/ads/impl/k3;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/as;->d:Lcom/yandex/mobile/ads/impl/n91;

    .line 7
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/as;->e:Lcom/yandex/mobile/ads/impl/f52;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/as;->f:Lcom/yandex/mobile/ads/impl/b30;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/as;->h:Lcom/yandex/mobile/ads/impl/ur0;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string p1, "adResponse"

    invoke-static {v1, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adCompleteListener"

    invoke-static {v2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeMediaContent"

    invoke-static {v3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeProviderContainer"

    invoke-static {v4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "progressListener"

    invoke-static {v6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/yandex/mobile/ads/impl/bs;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/bs;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/ur0;)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/bs;->a()Lcom/yandex/mobile/ads/impl/yc0;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/yc0;->start()V

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/as;->i:Lcom/yandex/mobile/ads/impl/yc0;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/as;->j:Lcom/yandex/mobile/ads/impl/f1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/as;->b:Lcom/yandex/mobile/ads/impl/e1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/e1;->b(Lcom/yandex/mobile/ads/impl/f1;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/as;->i:Lcom/yandex/mobile/ads/impl/yc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yc0;->invalidate()V

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as;->h:Lcom/yandex/mobile/ads/impl/ur0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ur0;->b()V

    return-void
.end method
