.class public Lcom/transsion/tools/fragments/PrivacyPasswordFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$d;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$d;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
