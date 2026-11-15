.class public Lcom/transsion/tools/covert/fragments/VideoPlayListFolderConvertFragment;
.super Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public g2(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    int-to-long v1, v1

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    iget-object v2, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bucket_fragment_buicket_playlist_flag"

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;

    invoke-direct {p1}, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setArguments(Landroid/os/Bundle;I)V

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->e0:Z

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
