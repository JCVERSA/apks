.class public Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$a;
.super Lo/st6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->checkOfficialWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/st6;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "guide_download"

    invoke-static {v0, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "https://intranet.thejeu.com/cmchvh6zg0001070ul7bc7nog"

    invoke-static {v1, v0}, Lo/xj3;->a(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "guide_uninstall"

    invoke-static {v0, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "https://intranet.thejeu.com/cmchvnc060002070u9x1ny5sg"

    invoke-static {v1, v0}, Lo/xj3;->a(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
