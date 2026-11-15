.class public final synthetic Lsvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iput-object p2, p0, Lsvb;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lsvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iget-object p0, p0, Lsvb;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->J1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method
