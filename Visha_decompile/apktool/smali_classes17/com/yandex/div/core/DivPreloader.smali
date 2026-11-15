.class public Lcom/yandex/div/core/DivPreloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/DivPreloader$a;,
        Lcom/yandex/div/core/DivPreloader$b;,
        Lcom/yandex/div/core/DivPreloader$DownloadCallback;,
        Lcom/yandex/div/core/DivPreloader$c;,
        Lcom/yandex/div/core/DivPreloader$d;,
        Lcom/yandex/div/core/DivPreloader$e;,
        Lcom/yandex/div/core/DivPreloader$f;,
        Lcom/yandex/div/core/DivPreloader$g;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div/core/DivPreloader$b;

.field public static final g:Lcom/yandex/div/core/DivPreloader$a;


# instance fields
.field public final a:Lyk2;

.field public final b:Lcom/yandex/div/core/a;

.field public final c:Lvi2;

.field public final d:Lmo2;

.field public final e:Lcom/yandex/div/core/DivPreloader$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/DivPreloader$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/DivPreloader$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/DivPreloader;->f:Lcom/yandex/div/core/DivPreloader$b;

    new-instance v0, Lqo2;

    invoke-direct {v0}, Lqo2;-><init>()V

    sput-object v0, Lcom/yandex/div/core/DivPreloader;->g:Lcom/yandex/div/core/DivPreloader$a;

    return-void
.end method

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

    iput-object p1, p0, Lcom/yandex/div/core/DivPreloader;->a:Lyk2;

    iput-object p2, p0, Lcom/yandex/div/core/DivPreloader;->b:Lcom/yandex/div/core/a;

    iput-object p3, p0, Lcom/yandex/div/core/DivPreloader;->c:Lvi2;

    iput-object p4, p0, Lcom/yandex/div/core/DivPreloader;->d:Lmo2;

    iput-object p5, p0, Lcom/yandex/div/core/DivPreloader;->e:Lcom/yandex/div/core/DivPreloader$c;

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader;->b(Z)V

    return-void
.end method

.method public static final b(Z)V
    .locals 0

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/DivPreloader;)Lcom/yandex/div/core/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader;->b:Lcom/yandex/div/core/a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/DivPreloader;)Lvi2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader;->c:Lvi2;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/DivPreloader;)Lyk2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader;->a:Lyk2;

    return-object p0
.end method

.method public static final synthetic f()Lcom/yandex/div/core/DivPreloader$a;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/DivPreloader;->g:Lcom/yandex/div/core/DivPreloader$a;

    return-object v0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/DivPreloader;)Lmo2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader;->d:Lmo2;

    return-object p0
.end method


# virtual methods
.method public h(Lcom/yandex/div2/Div;Loj3;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$f;
    .locals 8

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-direct {v0, p3}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;-><init>(Lcom/yandex/div/core/DivPreloader$a;)V

    new-instance v7, Lcom/yandex/div/core/DivPreloader$e;

    iget-object v6, p0, Lcom/yandex/div/core/DivPreloader;->e:Lcom/yandex/div/core/DivPreloader$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/DivPreloader$e;-><init>(Lcom/yandex/div/core/DivPreloader;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Lcom/yandex/div/core/DivPreloader$a;Loj3;Lcom/yandex/div/core/DivPreloader$c;)V

    invoke-virtual {v7, p1}, Lcom/yandex/div/core/DivPreloader$e;->u(Lcom/yandex/div2/Div;)Lcom/yandex/div/core/DivPreloader$f;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->m()V

    return-object p0
.end method
