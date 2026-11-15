.class public Lcom/transsion/videodownloader/VideoDownloadManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfx4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;->X(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/transsion/videodownloader/VideoDownloadManager;


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    iput-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iput-object p3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    iget-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->b:Ljava/util/Map;

    invoke-static {p1, p2, p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->v(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    return-void
.end method

.method public b(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$a;->b:Ljava/util/Map;

    invoke-static {p1, v0, p2, p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->x(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V

    return-void
.end method
