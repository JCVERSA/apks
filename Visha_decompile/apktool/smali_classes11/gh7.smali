.class public final synthetic Lgh7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh7;->a:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lgh7;->a:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->w0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
