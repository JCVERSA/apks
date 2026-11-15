.class public Lcom/transsion/tools/fragments/PrivacyFileAddFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyFileAddFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyFileAddFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileAddFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyFileAddFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyFileAddFragment$a;->b:Lcom/transsion/tools/fragments/PrivacyFileAddFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyFileAddFragment;->h2(Lcom/transsion/tools/fragments/PrivacyFileAddFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    return-void
.end method
