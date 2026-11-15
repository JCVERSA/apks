.class public Lcom/yandex/div/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/d$a;
    }
.end annotation


# instance fields
.field public final a:Lyk2;

.field public final b:Lcom/yandex/div/core/a;

.field public final c:Lvi2;

.field public final d:Lmo2;

.field public final e:Lcom/yandex/div/core/DivPreloader$c;


# direct methods
.method public constructor <init>(Lyk2;Lcom/yandex/div/core/a;Lvi2;Lmo2;Lcom/yandex/div/core/DivPreloader$c;)V
    .locals 1

    const-string v0, "customContainerViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPreloader"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadFilter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/d;->a:Lyk2;

    iput-object p2, p0, Lcom/yandex/div/core/d;->b:Lcom/yandex/div/core/a;

    iput-object p3, p0, Lcom/yandex/div/core/d;->c:Lvi2;

    iput-object p4, p0, Lcom/yandex/div/core/d;->d:Lmo2;

    iput-object p5, p0, Lcom/yandex/div/core/d;->e:Lcom/yandex/div/core/DivPreloader$c;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/d;)Lcom/yandex/div/core/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/d;->b:Lcom/yandex/div/core/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/d;)Lvi2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/d;->c:Lvi2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/d;)Lyk2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/d;->a:Lyk2;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/d;)Lmo2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/d;->d:Lmo2;

    return-object p0
.end method

.method public static synthetic f(Lcom/yandex/div/core/d;Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/DivPreloader$a;ILjava/lang/Object;)Lcom/yandex/div/core/DivPreloader$f;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lcom/yandex/div/core/DivPreloader;->f:Lcom/yandex/div/core/DivPreloader$b;

    invoke-virtual {p4}, Lcom/yandex/div/core/DivPreloader$b;->a()Lcom/yandex/div/core/DivPreloader$a;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/d;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$f;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: preload"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$f;
    .locals 3

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-direct {v0, p4}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;-><init>(Lcom/yandex/div/core/DivPreloader$a;)V

    new-instance v1, Lcom/yandex/div/core/d$a;

    iget-object v2, p0, Lcom/yandex/div/core/d;->e:Lcom/yandex/div/core/DivPreloader$c;

    invoke-direct {v1, p0, v0, p4, v2}, Lcom/yandex/div/core/d$a;-><init>(Lcom/yandex/div/core/d;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Lcom/yandex/div/core/DivPreloader$a;Lcom/yandex/div/core/DivPreloader$c;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/yandex/div/core/d$a;->z(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/DivPreloader$f;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->m()V

    return-object p0
.end method
