.class public final synthetic Lflc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflc;->a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lflc;->a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->i0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
