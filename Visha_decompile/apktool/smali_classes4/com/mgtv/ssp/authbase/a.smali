.class public Lcom/mgtv/ssp/authbase/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/mgtv/ssp/authbase/a$1;

    invoke-direct {v0}, Lcom/mgtv/ssp/authbase/a$1;-><init>()V

    invoke-static {p0, v0}, Lcom/mgtv/ssp/authbase/b;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/b$a;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string v1, "acinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-static {p2}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    .line 5
    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/AccountInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 6
    new-instance v0, Lcom/mgtv/ssp/authbase/a$2;

    invoke-direct {v0}, Lcom/mgtv/ssp/authbase/a$2;-><init>()V

    invoke-static {p0, v0}, Lcom/mgtv/ssp/authbase/b;->a(Landroid/content/Context;Lcom/mgtv/ssp/authbase/b$a;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mgtv/ssp/activity/SspVipWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "acinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    const-string p1, "currentVideoId"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    const-string p1, "currentEncodeVideoId"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string p1, "from"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string p1, "collection_id"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {p6}, Lcom/mgtv/ssp/activity/SspVipWebActivity;->a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    .line 14
    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
