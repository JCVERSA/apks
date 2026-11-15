.class public abstract Leic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V
    .locals 6

    new-instance p4, Landroid/widget/PopupMenu;

    invoke-direct {p4, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget p1, Lcom/transsion/sniffer_load/R$menu;->menu_context:I

    invoke-virtual {p4, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    new-instance p1, Leic$a;

    move-object v0, p1

    move-object v1, p4

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Leic$a;-><init>(Landroid/widget/PopupMenu;Landroid/content/Context;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p4}, Landroid/widget/PopupMenu;->show()V

    const-string p0, "dl_brower_rp_lc_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
