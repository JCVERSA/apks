.class public final synthetic Lcom/transsion/audio/adapter/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/DownloadItem;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/audio/adapter/SubjectListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/audio/adapter/e;->a:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/audio/adapter/e;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/audio/adapter/e;->c:Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/adapter/e;->a:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/audio/adapter/e;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/audio/adapter/e;->c:Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->a(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
