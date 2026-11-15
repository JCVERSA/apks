.class public Leic$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leic;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/PopupMenu;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/PopupMenu;Landroid/content/Context;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leic$a;->a:Landroid/widget/PopupMenu;

    iput-object p2, p0, Leic$a;->b:Landroid/content/Context;

    iput-object p3, p0, Leic$a;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    iput-object p4, p0, Leic$a;->d:Ljava/lang/String;

    iput-object p5, p0, Leic$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Leic$a;->a:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    iget-object v0, p0, Leic$a;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->menu_open_b:I

    if-ne v0, v1, :cond_2

    const-string p1, "dl_brower_rp_lc_bg_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Leic$a;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_B:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    iget-object v1, p0, Leic$a;->d:Ljava/lang/String;

    iget-object p0, p0, Leic$a;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->y(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->menu_open_f:I

    if-ne p1, v0, :cond_3

    const-string p1, "dl_brower_rp_lc_nw_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Leic$a;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_F:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    iget-object v1, p0, Leic$a;->d:Ljava/lang/String;

    iget-object p0, p0, Leic$a;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->y(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "dl_brower_rp_lc_copy_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Leic$a;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->COPY_LINK:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    iget-object v1, p0, Leic$a;->d:Ljava/lang/String;

    iget-object p0, p0, Leic$a;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->y(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method
