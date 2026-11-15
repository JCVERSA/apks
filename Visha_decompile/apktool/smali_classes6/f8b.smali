.class public final synthetic Lf8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8b;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf8b;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->m0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
