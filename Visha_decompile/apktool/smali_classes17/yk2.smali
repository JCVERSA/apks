.class public Lyk2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk2$a;
    }
.end annotation


# instance fields
.field public final a:Lwk2;


# direct methods
.method public constructor <init>(Lwk2;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk2;->a:Lwk2;

    return-void
.end method

.method public static final synthetic a(Lyk2;Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lyk2;->d(Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic b(Lyk2;Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lyk2;->e(Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/yandex/div2/Div;Loj3;Lcom/yandex/div/core/DivPreloader$c;Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Ljava/util/List;
    .locals 7

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadFilter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyk2$a;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lyk2$a;-><init>(Lyk2;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Loj3;Lcom/yandex/div/core/DivPreloader$c;Z)V

    invoke-virtual {v0, p1}, Lyk2$a;->u(Lcom/yandex/div2/Div;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V
    .locals 1

    iget-object p0, p0, Lyk2;->a:Lwk2;

    const/4 v0, -0x1

    invoke-interface {p0, p1, p2, v0}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;I)Ljn5;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->n()V

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/yandex/div/core/DivPreloader$DownloadCallback;Ljava/util/ArrayList;)V
    .locals 1

    iget-object p0, p0, Lyk2;->a:Lwk2;

    const/4 v0, -0x1

    invoke-interface {p0, p1, p2, v0}, Lwk2;->loadImageBytes(Ljava/lang/String;Lrk2;I)Ljn5;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->n()V

    return-void
.end method
