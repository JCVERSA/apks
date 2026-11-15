.class public final Lwf2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lwf2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwf2;

    invoke-direct {v0}, Lwf2;-><init>()V

    sput-object v0, Lwf2;->a:Lwf2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z
    .locals 7

    const-string v0, "action"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lwf2;->a:Lwf2;

    iget-object v2, p0, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    iget-object v6, p0, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lwf2;->b(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lsv2;Loj3;Lcom/yandex/div2/DivDownloadCallbacks;)Z

    move-result p0

    return p0
.end method

.method public static final c(Lwp2;Lsv2;Loj3;)Z
    .locals 7

    const-string v0, "action"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lwf2;->a:Lwf2;

    invoke-interface {p0}, Lwp2;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lwp2;->d()Lcom/yandex/div2/DivActionTyped;

    move-result-object v3

    invoke-interface {p0}, Lwp2;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object v6

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lwf2;->b(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lsv2;Loj3;Lcom/yandex/div2/DivDownloadCallbacks;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lsv2;Loj3;Lcom/yandex/div2/DivDownloadCallbacks;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    instance-of v0, p3, Lcom/yandex/div/core/view2/Div2View;

    if-nez v0, :cond_1

    const-string p1, "Div2View should be used!"

    invoke-static {p1}, Lxi;->i(Ljava/lang/String;)V

    return p0

    :cond_1
    instance-of p0, p2, Lcom/yandex/div2/DivActionTyped$j;

    if-eqz p0, :cond_2

    sget-object p0, Lji2;->a:Lji2;

    check-cast p2, Lcom/yandex/div2/DivActionTyped$j;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$j;->c()Lcom/yandex/div2/DivActionDownload;

    move-result-object p1

    check-cast p3, Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0, p1, p5, p3, p4}, Lji2;->e(Lcom/yandex/div2/DivActionDownload;Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0

    :cond_2
    check-cast p3, Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->m()Lvf2;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lvf2;->a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0
.end method
