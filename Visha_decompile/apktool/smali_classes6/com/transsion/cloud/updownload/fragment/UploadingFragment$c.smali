.class public Lcom/transsion/cloud/updownload/fragment/UploadingFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->j1(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/upload/task/NewUploadTask;

.field public final synthetic c:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$c;->c:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$c;->b:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$c;->b:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lri4;->r(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    return-void
.end method
