.class public final synthetic Lss6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

.field public final synthetic c:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss6;->b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    iput-object p2, p0, Lss6;->c:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lss6;->b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    iget-object p0, p0, Lss6;->c:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->f0(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
