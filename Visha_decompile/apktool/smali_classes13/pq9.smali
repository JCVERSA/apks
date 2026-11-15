.class public final synthetic Lpq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpq9;->a:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    iput-object p2, p0, Lpq9;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lpq9;->a:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;

    iget-object p0, p0, Lpq9;->b:Landroid/view/View;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;->I(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoDialog;Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
