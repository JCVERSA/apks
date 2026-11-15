.class public Lcom/transsion/tools/covert/fragments/ConvertedFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConvertedFragment;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "ConvertedFragment"

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->p2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/transsion/sniffer_load/WebActivity;

    sget v3, Lcom/transsion/sniffer_load/WebActivity;->K0:I

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_url"

    const-string v2, "https://360media.com.ng/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "need_new_web"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "web_url_from"

    const-string v2, "to_mp3_list_page_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->q2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    const/16 v1, 0x4da

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
