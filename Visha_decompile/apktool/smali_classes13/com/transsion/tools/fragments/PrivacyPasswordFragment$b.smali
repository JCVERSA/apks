.class public Lcom/transsion/tools/fragments/PrivacyPasswordFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$b;->a:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$b;->a:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->U(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$b;->a:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->U(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
