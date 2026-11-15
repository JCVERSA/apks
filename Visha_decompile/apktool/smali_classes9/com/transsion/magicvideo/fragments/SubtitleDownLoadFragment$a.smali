.class public Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/popup/ISelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->displayText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vd_cp_subtitle_downloadsub_language"

    const-string v2, "language"

    invoke-static {v1, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->q0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectLanguage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic selectCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$a;->a(Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V

    return-void
.end method
