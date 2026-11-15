.class public final synthetic Lc41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudUploadFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc41;->a:Lcom/transsion/cloud/fragment/CloudUploadFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc41;->a:Lcom/transsion/cloud/fragment/CloudUploadFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->v0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Boolean;)V

    return-void
.end method
