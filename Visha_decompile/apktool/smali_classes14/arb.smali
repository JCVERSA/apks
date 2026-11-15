.class public final synthetic Larb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/videodownloader/VideoDownloadManager$f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larb;->b:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Larb;->b:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager$f;->a(Lcom/transsion/videodownloader/VideoDownloadManager$f;)V

    return-void
.end method
