.class public final Lcom/yandex/mobile/ads/impl/m21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/af1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/m21$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yf1;

.field private final b:Lcom/yandex/mobile/ads/impl/g21;

.field private final c:Lcom/yandex/mobile/ads/impl/t21;

.field private final d:Lcom/yandex/mobile/ads/impl/yh2;

.field private final e:Lcom/yandex/mobile/ads/impl/w82;

.field private final f:Lcom/yandex/mobile/ads/impl/q70;

.field private final g:Lcom/yandex/mobile/ads/impl/ju1;

.field private final h:Lcom/yandex/mobile/ads/impl/z21;

.field private i:Z

.field private final j:Lcom/yandex/mobile/ads/impl/s70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/s70<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;

.field private l:Lcom/yandex/mobile/ads/impl/u21;

.field private m:Lcom/yandex/mobile/ads/impl/s11;

.field private n:Lcom/yandex/mobile/ads/impl/r11;

.field private o:Lcom/yandex/mobile/ads/impl/ze1;

.field private p:Lcom/yandex/mobile/ads/impl/ve2;

.field private q:Lcom/yandex/mobile/ads/impl/th2;

.field private r:Lcom/yandex/mobile/ads/impl/p70;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/yf1;)V
    .locals 8

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/g21;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/g21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/t21;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/t21;-><init>()V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/yh2;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/yh2;-><init>()V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/w82;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/w82;-><init>()V

    .line 5
    new-instance v6, Lcom/yandex/mobile/ads/impl/q70;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/q70;-><init>()V

    .line 6
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yf1;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/m21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;Lcom/yandex/mobile/ads/impl/g21;Lcom/yandex/mobile/ads/impl/t21;Lcom/yandex/mobile/ads/impl/yh2;Lcom/yandex/mobile/ads/impl/w82;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/ju1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yf1;Lcom/yandex/mobile/ads/impl/g21;Lcom/yandex/mobile/ads/impl/t21;Lcom/yandex/mobile/ads/impl/yh2;Lcom/yandex/mobile/ads/impl/w82;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1

    .line 8
    const-string v0, "mraidWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidBridge"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidJsControllerLoader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewableChecker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlUtils"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exposureProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    .line 11
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    .line 12
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m21;->c:Lcom/yandex/mobile/ads/impl/t21;

    .line 13
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m21;->d:Lcom/yandex/mobile/ads/impl/yh2;

    .line 14
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/m21;->e:Lcom/yandex/mobile/ads/impl/w82;

    .line 15
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/m21;->f:Lcom/yandex/mobile/ads/impl/q70;

    .line 16
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/m21;->g:Lcom/yandex/mobile/ads/impl/ju1;

    .line 17
    new-instance p2, Lcom/yandex/mobile/ads/impl/z21;

    new-instance p3, Lcom/yandex/mobile/ads/impl/m21$a;

    invoke-direct {p3, p0}, Lcom/yandex/mobile/ads/impl/m21$a;-><init>(Lcom/yandex/mobile/ads/impl/m21;)V

    invoke-direct {p2, p3}, Lcom/yandex/mobile/ads/impl/z21;-><init>(Lcom/yandex/mobile/ads/impl/bh0;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m21;->h:Lcom/yandex/mobile/ads/impl/z21;

    .line 18
    sget-object p3, Lcom/yandex/mobile/ads/impl/th2;->d:Lcom/yandex/mobile/ads/impl/th2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m21;->q:Lcom/yandex/mobile/ads/impl/th2;

    .line 19
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 20
    new-instance p2, Lcom/yandex/mobile/ads/impl/s70;

    invoke-direct {p2, p1, p6, p0}, Lcom/yandex/mobile/ads/impl/s70;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/af1;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m21;->j:Lcom/yandex/mobile/ads/impl/s70;

    .line 21
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/oa;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/m21;)Lcom/yandex/mobile/ads/impl/yf1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    return-object p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/m21;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$htmlResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidJavascript"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->h:Lcom/yandex/mobile/ads/impl/z21;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/z21;->a(Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g21;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/s21;Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/k21;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 4
    :pswitch_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/k21;

    const-string p1, "Unspecified MRAID Javascript command"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/k21;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->g:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->N()Z

    move-result p1

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->a()V

    goto :goto_0

    .line 7
    :pswitch_2
    const-string p1, "shouldUseCustomClose"

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->o:Lcom/yandex/mobile/ads/impl/ze1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ze1;->a(Z)V

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->m:Lcom/yandex/mobile/ads/impl/s11;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/s11;->a()V

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/m21;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 11
    :pswitch_5
    sget-object p1, Lcom/yandex/mobile/ads/impl/th2;->c:Lcom/yandex/mobile/ads/impl/th2;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/m21;->q:Lcom/yandex/mobile/ads/impl/th2;

    if-ne p1, p2, :cond_0

    .line 12
    sget-object p1, Lcom/yandex/mobile/ads/impl/th2;->e:Lcom/yandex/mobile/ads/impl/th2;

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->q:Lcom/yandex/mobile/ads/impl/th2;

    .line 14
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/tq0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/g21;->a([Lcom/yandex/mobile/ads/impl/tq0;)V

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->o:Lcom/yandex/mobile/ads/impl/ze1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ze1;->c()V

    goto :goto_0

    .line 16
    :pswitch_6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->n:Lcom/yandex/mobile/ads/impl/r11;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/r11;->b()V

    goto :goto_0

    .line 17
    :pswitch_7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->n:Lcom/yandex/mobile/ads/impl/r11;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/r11;->e()V

    goto :goto_0

    .line 18
    :pswitch_8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->p:Lcom/yandex/mobile/ads/impl/ve2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ve2;->onVideoComplete()V

    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/k21;

    const-string p1, "Invalid state to execute this command"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/k21;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/k21;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->g:Lcom/yandex/mobile/ads/impl/ju1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->S()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/m21;->i:Z

    if-eqz v0, :cond_3

    .line 22
    :cond_0
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/u21;->a(Ljava/lang/String;)V

    .line 25
    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    sget p1, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    .line 26
    const-string p1, "args"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/k21;

    sget-object v0, Lhz9;->a:Lhz9;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 28
    const-string v0, "Mraid open command sent an invalid URL: %s"

    const-string v2, "format(...)"

    invoke-static {p1, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/k21;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/m21;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/m21;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->j:Lcom/yandex/mobile/ads/impl/s70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s70;->b()V

    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->c:Lcom/yandex/mobile/ads/impl/t21;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m21;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string v0, "context"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTag"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v0, Lcom/yandex/mobile/ads/impl/gq1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq1$a;->a()Lcom/yandex/mobile/ads/impl/gq1;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/gq1;->a(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    .line 35
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->m:Lcom/yandex/mobile/ads/impl/s11;

    .line 36
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->n:Lcom/yandex/mobile/ads/impl/r11;

    .line 37
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->o:Lcom/yandex/mobile/ads/impl/ze1;

    .line 38
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->p:Lcom/yandex/mobile/ads/impl/ve2;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/p70;)V
    .locals 2

    .line 57
    const-string v0, "exposure"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->r:Lcom/yandex/mobile/ads/impl/p70;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->r:Lcom/yandex/mobile/ads/impl/p70;

    .line 60
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p70;->a()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p70;->b()Landroid/graphics/RectF;

    move-result-object p1

    .line 62
    new-instance v1, Lcom/yandex/mobile/ads/impl/r70;

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/r70;-><init>(ILandroid/graphics/RectF;)V

    .line 63
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/yandex/mobile/ads/impl/tq0;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g21;->a([Lcom/yandex/mobile/ads/impl/tq0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/r11;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->n:Lcom/yandex/mobile/ads/impl/r11;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/s11;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->m:Lcom/yandex/mobile/ads/impl/s11;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/u21;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ve2;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->p:Lcom/yandex/mobile/ads/impl/ve2;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V
    .locals 7

    .line 45
    const-string v0, "webView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/yandex/mobile/ads/impl/u32;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/u32;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    .line 47
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->d:Lcom/yandex/mobile/ads/impl/yh2;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result v1

    .line 48
    new-instance v2, Lcom/yandex/mobile/ads/impl/ci2;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/ci2;-><init>(Z)V

    .line 49
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->f:Lcom/yandex/mobile/ads/impl/q70;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/q70;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/p70;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p70;->a()I

    move-result v3

    .line 51
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p70;->b()Landroid/graphics/RectF;

    move-result-object v1

    .line 52
    new-instance v4, Lcom/yandex/mobile/ads/impl/r70;

    invoke-direct {v4, v3, v1}, Lcom/yandex/mobile/ads/impl/r70;-><init>(ILandroid/graphics/RectF;)V

    .line 53
    sget-object v1, Lcom/yandex/mobile/ads/impl/th2;->c:Lcom/yandex/mobile/ads/impl/th2;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->q:Lcom/yandex/mobile/ads/impl/th2;

    .line 54
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/yandex/mobile/ads/impl/tq0;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-virtual {v3, v5}, Lcom/yandex/mobile/ads/impl/g21;->a([Lcom/yandex/mobile/ads/impl/tq0;)V

    .line 55
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g21;->a()V

    .line 56
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/u21;->a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ze1;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->o:Lcom/yandex/mobile/ads/impl/ze1;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 39
    const-string v0, "htmlResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->c:Lcom/yandex/mobile/ads/impl/t21;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m21;->k:Ljava/lang/String;

    new-instance v3, Lcnd;

    invoke-direct {v3, p0, p1}, Lcnd;-><init>(Lcom/yandex/mobile/ads/impl/m21;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/t21;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t21$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 64
    new-instance v0, Lcom/yandex/mobile/ads/impl/ci2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ci2;-><init>(Z)V

    .line 65
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/yandex/mobile/ads/impl/tq0;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/g21;->a([Lcom/yandex/mobile/ads/impl/tq0;)V

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->j:Lcom/yandex/mobile/ads/impl/s70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/s70;->a()V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->j:Lcom/yandex/mobile/ads/impl/s70;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s70;->b()V

    .line 68
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->f:Lcom/yandex/mobile/ads/impl/q70;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/q70;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/p70;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->r:Lcom/yandex/mobile/ads/impl/p70;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m21;->r:Lcom/yandex/mobile/ads/impl/p70;

    .line 71
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p70;->a()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p70;->b()Landroid/graphics/RectF;

    move-result-object p1

    .line 73
    new-instance v1, Lcom/yandex/mobile/ads/impl/r70;

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/r70;-><init>(ILandroid/graphics/RectF;)V

    .line 74
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    new-array p1, v2, [Lcom/yandex/mobile/ads/impl/tq0;

    aput-object v1, p1, v4

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g21;->a([Lcom/yandex/mobile/ads/impl/tq0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 20
    sget-object v0, Lcom/yandex/mobile/ads/impl/th2;->c:Lcom/yandex/mobile/ads/impl/th2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->q:Lcom/yandex/mobile/ads/impl/th2;

    if-ne v0, v1, :cond_0

    .line 21
    sget-object v0, Lcom/yandex/mobile/ads/impl/th2;->e:Lcom/yandex/mobile/ads/impl/th2;

    .line 22
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m21;->q:Lcom/yandex/mobile/ads/impl/th2;

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/tq0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/g21;->a([Lcom/yandex/mobile/ads/impl/tq0;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 2
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->e:Lcom/yandex/mobile/ads/impl/w82;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/w82;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "mraid"

    invoke-static {v4, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mobileads"

    invoke-static {v4, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/m21;->a(Ljava/util/Map;)V

    goto :goto_3

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_2
    sget-object v0, Lcom/yandex/mobile/ads/impl/s21;->c:Lcom/yandex/mobile/ads/impl/s21$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/s21$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/s21;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/s21;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Unknown exception"

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    invoke-virtual {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/g21;->a(Lcom/yandex/mobile/ads/impl/s21;Ljava/lang/String;)V

    .line 17
    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/g21;->a(Lcom/yandex/mobile/ads/impl/s21;)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->b:Lcom/yandex/mobile/ads/impl/g21;

    sget-object p1, Lcom/yandex/mobile/ads/impl/s21;->d:Lcom/yandex/mobile/ads/impl/s21;

    const-string v0, "Mraid command sent an invalid URL"

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/g21;->a(Lcom/yandex/mobile/ads/impl/s21;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/m21;->i:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m21;->l:Lcom/yandex/mobile/ads/impl/u21;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/u21;->a()V

    :cond_0
    return-void
.end method
