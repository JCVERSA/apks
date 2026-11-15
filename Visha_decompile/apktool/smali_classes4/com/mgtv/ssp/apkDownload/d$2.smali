.class Lcom/mgtv/ssp/apkDownload/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/download/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/apkDownload/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/apkDownload/d;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/apkDownload/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgtv/ssp/apkDownload/d$2;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;)V
    .locals 0

    .line 15
    new-instance p1, Lcom/mgtv/ssp/apkDownload/a/a;

    invoke-direct {p1}, Lcom/mgtv/ssp/apkDownload/a/a;-><init>()V

    .line 16
    iput-object p2, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    .line 17
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    const/4 p2, 0x1

    invoke-static {p0, p2, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-static {p1}, Lcom/mgtv/ssp/apkDownload/d;->b(Lcom/mgtv/ssp/apkDownload/d;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-static {p1}, Lcom/mgtv/ssp/apkDownload/d;->c(Lcom/mgtv/ssp/apkDownload/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;Z)Z

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    invoke-static {p1}, Lcom/mgtv/ssp/apkDownload/d;->c(Lcom/mgtv/ssp/apkDownload/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/apkDownload/d$b;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/mgtv/ssp/apkDownload/d$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :cond_0
    new-instance p1, Lcom/mgtv/ssp/apkDownload/a/a;

    invoke-direct {p1}, Lcom/mgtv/ssp/apkDownload/a/a;-><init>()V

    .line 6
    iput-object p2, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    .line 7
    iput p3, p1, Lcom/mgtv/ssp/apkDownload/a/a;->c:I

    .line 8
    iget p2, p0, Lcom/mgtv/ssp/apkDownload/d$2;->b:I

    if-ne p2, p3, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;ILjava/lang/Object;)V

    .line 10
    iput p3, p0, Lcom/mgtv/ssp/apkDownload/d$2;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;Ljava/lang/String;)V
    .locals 0

    .line 11
    new-instance p1, Lcom/mgtv/ssp/apkDownload/a/a;

    invoke-direct {p1}, Lcom/mgtv/ssp/apkDownload/a/a;-><init>()V

    .line 12
    iput-object p2, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    .line 13
    iput-object p3, p1, Lcom/mgtv/ssp/apkDownload/a/a;->b:Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    const/4 p2, 0x3

    invoke-static {p0, p2, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;)V
    .locals 0

    new-instance p1, Lcom/mgtv/ssp/apkDownload/a/a;

    invoke-direct {p1}, Lcom/mgtv/ssp/apkDownload/a/a;-><init>()V

    iput-object p2, p1, Lcom/mgtv/ssp/apkDownload/a/a;->a:Lcom/mgtv/ssp/download/dao3/c;

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/d$2;->a:Lcom/mgtv/ssp/apkDownload/d;

    const/4 p2, 0x4

    invoke-static {p0, p2, p1}, Lcom/mgtv/ssp/apkDownload/d;->a(Lcom/mgtv/ssp/apkDownload/d;ILjava/lang/Object;)V

    return-void
.end method
