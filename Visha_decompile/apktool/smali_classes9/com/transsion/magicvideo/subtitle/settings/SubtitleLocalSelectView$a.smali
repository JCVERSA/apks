.class public Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/popup/ISelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx5a;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p1}, Lx5a;->a()I

    move-result v1

    const-string v2, "select_subtitle_mode"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-virtual {p1}, Lx5a;->a()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->n(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "all"

    goto :goto_1

    :cond_1
    const-string p1, "folder"

    :goto_1
    const-string v0, "vd_cp_subtitlepop_select_model"

    const-string v1, "model"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    return-void
.end method

.method public bridge synthetic selectCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lx5a;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;->a(Lx5a;)V

    return-void
.end method
