.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment;->w(Landroid/os/Bundle;)Lcom/transsion/widgetslib/dialog/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/AlertDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$a;->b:Lcom/transsion/playercommon/fragments/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
