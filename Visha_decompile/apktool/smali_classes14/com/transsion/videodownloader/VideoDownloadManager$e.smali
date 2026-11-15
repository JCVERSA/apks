.class public Lcom/transsion/videodownloader/VideoDownloadManager$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->c:I

    iput v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->e:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->f:I

    iput-boolean v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->g:Z

    invoke-static {p1}, Luh1;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lrqb;
    .locals 9

    new-instance v8, Lrqb;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->c:I

    iget v4, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->d:I

    iget-boolean v5, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->e:Z

    iget v6, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->f:I

    iget-boolean v7, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->g:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lrqb;-><init>(Ljava/lang/String;Ljava/lang/String;IIZIZ)V

    return-object v8
.end method

.method public b(Ljava/lang/String;)Lcom/transsion/videodownloader/VideoDownloadManager$e;
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/transsion/videodownloader/VideoDownloadManager$e;
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->f:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/transsion/videodownloader/VideoDownloadManager$e;
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/transsion/videodownloader/VideoDownloadManager$e;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->e:Z

    return-object p0
.end method

.method public f(Z)Lcom/transsion/videodownloader/VideoDownloadManager$e;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->g:Z

    return-object p0
.end method

.method public g(II)Lcom/transsion/videodownloader/VideoDownloadManager$e;
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->c:I

    iput p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$e;->d:I

    return-object p0
.end method
