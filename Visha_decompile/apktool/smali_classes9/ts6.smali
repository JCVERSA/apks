.class public final synthetic Lts6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

.field public final synthetic b:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lts6;->a:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    iput-object p2, p0, Lts6;->b:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lts6;->a:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    iget-object p0, p0, Lts6;->b:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->g0(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
