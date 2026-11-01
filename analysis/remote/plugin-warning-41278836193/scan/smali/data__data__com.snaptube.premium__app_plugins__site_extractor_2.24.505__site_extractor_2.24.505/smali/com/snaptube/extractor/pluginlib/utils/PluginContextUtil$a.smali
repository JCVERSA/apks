.class Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$a;
.super Ld0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->checkOfficialWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->access$000()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ly/h;->C(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->access$000()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "guide_download"

    .line 17
    .line 18
    invoke-static {v0, v1}, Ly/h;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "https://intranet.thejeu.com/cmchvh6zg0001070ul7bc7nog"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ly/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->access$000()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "guide_uninstall"

    .line 32
    .line 33
    invoke-static {v0, v1}, Ly/h;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "https://intranet.thejeu.com/cmchvnc060002070u9x1ny5sg"

    .line 38
    .line 39
    invoke-static {v1, v0}, Ly/a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
