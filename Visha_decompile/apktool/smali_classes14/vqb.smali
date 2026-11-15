.class public final synthetic Lvqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/videodownloader/VideoDownloadManager;

.field public final synthetic c:Lcom/transsion/videodownloader/model/VideoTaskItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvqb;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    iput-object p2, p0, Lvqb;->c:Lcom/transsion/videodownloader/model/VideoTaskItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvqb;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    iget-object p0, p0, Lvqb;->c:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-static {v0, p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->d(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method
