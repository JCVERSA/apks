.class public Lcom/transsion/magicvideo/activities/FarvoritesActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static p0(Landroid/content/Context;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicvideo/activities/FarvoritesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/VideoPlayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Laf9;->g:Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v3, v0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    int-to-long v3, v3

    const-string v5, "bucket_fragment_buicket_id"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "bucket_fragment_buicket_name"

    iget-object v4, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bucket_fragment_buicket_playlist_flag"

    iget v0, v0, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    const/16 v0, 0x1e

    invoke-virtual {p0, v2, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setArguments(Landroid/os/Bundle;I)V

    invoke-static {p0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/magicvideo/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/FarvoritesActivity;->initFragment()V

    return-void
.end method
