.class public Lcom/transsion/tools/fragments/PrivacyFileFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyFileFragment;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/PrivacyFileFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$c;->a:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/transsion/privateroom/api/beans/PrivateFile;)V
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltpb;->T(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getOriginalPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$c;->a:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->b5(Lcom/transsion/tools/fragments/PrivacyFileFragment;)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyFileFragment$c;->a:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->c5(Lcom/transsion/tools/fragments/PrivacyFileFragment;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
