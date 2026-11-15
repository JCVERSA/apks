.class public final synthetic Lus6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

.field public final synthetic c:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

.field public final synthetic d:Lcom/transsion/magicvideo/data/DownloadMediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus6;->b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    iput-object p2, p0, Lus6;->c:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    iput-object p3, p0, Lus6;->d:Lcom/transsion/magicvideo/data/DownloadMediaItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lus6;->b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    iget-object v1, p0, Lus6;->c:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    iget-object p0, p0, Lus6;->d:Lcom/transsion/magicvideo/data/DownloadMediaItem;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->i0(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem;Landroid/view/View;)V

    return-void
.end method
