.class public final synthetic Lihc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihc;->a:Lcom/transsion/sniffer_load/WebActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lihc;->a:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->y0(Lcom/transsion/sniffer_load/WebActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
