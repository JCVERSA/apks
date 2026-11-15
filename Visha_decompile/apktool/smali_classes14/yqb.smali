.class public final synthetic Lyqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/videodownloader/VideoDownloadManager$d;

.field public final synthetic c:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Ljv4;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager$d;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyqb;->b:Lcom/transsion/videodownloader/VideoDownloadManager$d;

    iput-object p2, p0, Lyqb;->c:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iput-object p3, p0, Lyqb;->d:Ljava/io/File;

    iput-object p4, p0, Lyqb;->e:Ljv4;

    iput-object p5, p0, Lyqb;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lyqb;->b:Lcom/transsion/videodownloader/VideoDownloadManager$d;

    iget-object v1, p0, Lyqb;->c:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v2, p0, Lyqb;->d:Ljava/io/File;

    iget-object v3, p0, Lyqb;->e:Ljv4;

    iget-object p0, p0, Lyqb;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a(Lcom/transsion/videodownloader/VideoDownloadManager$d;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V

    return-void
.end method
