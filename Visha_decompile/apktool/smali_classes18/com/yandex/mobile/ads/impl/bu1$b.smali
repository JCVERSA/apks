.class public final Lcom/yandex/mobile/ads/impl/bu1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dh0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/bu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/o3;

.field private final d:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/bu1;

.field private final f:Lcom/yandex/mobile/ads/impl/xi;

.field private g:Lcom/yandex/mobile/ads/impl/kv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kv1<",
            "Lcom/yandex/mobile/ads/impl/bu1;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yandex/mobile/ads/impl/ug0;

.field private final i:Lcom/yandex/mobile/ads/impl/ju1;

.field private j:Landroid/webkit/WebView;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/bu1;Lcom/yandex/mobile/ads/impl/xi;Lcom/yandex/mobile/ads/impl/kv1;Lcom/yandex/mobile/ads/impl/ug0;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/bu1;",
            "Lcom/yandex/mobile/ads/impl/xi;",
            "Lcom/yandex/mobile/ads/impl/kv1<",
            "Lcom/yandex/mobile/ads/impl/bu1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ug0;",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerHtmlAd"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creationListener"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlClickHandler"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->c:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->d:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->e:Lcom/yandex/mobile/ads/impl/bu1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->f:Lcom/yandex/mobile/ads/impl/xi;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->g:Lcom/yandex/mobile/ads/impl/kv1;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->h:Lcom/yandex/mobile/ads/impl/ug0;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->i:Lcom/yandex/mobile/ads/impl/ju1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->l:Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 2
    const-string v0, "adFetchRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->g:Lcom/yandex/mobile/ads/impl/kv1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V
    .locals 1

    .line 4
    const-string v0, "webView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->j:Landroid/webkit/WebView;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->k:Ljava/util/Map;

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->g:Lcom/yandex/mobile/ads/impl/kv1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->e:Lcom/yandex/mobile/ads/impl/bu1;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 8
    const-string v0, "clickUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->i:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->S()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->l:Z

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/u1;

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->b:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->d:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->c:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->f:Lcom/yandex/mobile/ads/impl/xi;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/mg0;->i()Lcom/yandex/mobile/ads/impl/t8;

    move-result-object v4

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/u1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->h:Lcom/yandex/mobile/ads/impl/ug0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->d:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1, p1, v2, v0}, Lcom/yandex/mobile/ads/impl/ug0;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u1;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->l:Z

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->k:Ljava/util/Map;

    return-object p0
.end method

.method public final c()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bu1$b;->j:Landroid/webkit/WebView;

    return-object p0
.end method
