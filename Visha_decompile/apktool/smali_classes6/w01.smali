.class public final synthetic Lw01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw01;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lw01;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->V0(Lcom/transsion/cloud/fragment/CloudFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
