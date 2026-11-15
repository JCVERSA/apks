.class public final Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;
.super Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder<",
        "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;",
        "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;",
        "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Landroid/view/View;)V",
        "Landroid/content/Context;",
        "context",
        "data",
        "Lzfb;",
        "f",
        "(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V",
        "Landroid/widget/RelativeLayout;",
        "p",
        "Landroid/widget/RelativeLayout;",
        "mRlSearchLayout",
        "q",
        "a",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final q:Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder$a;

.field public static final r:I

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;


# instance fields
.field public p:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->q:Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder$a;

    sget v0, Lcom/transsion/sniffer_load/R$layout;->item_cloud_empty:I

    sput v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->r:I

    const-string v0, ""

    sput-object v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->s:Ljava/lang/String;

    sput-object v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->ll_search_network:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->p:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->g(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->t:Ljava/lang/String;

    return-void
.end method

.method public static final g(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    sget-object p1, Laz5;->a:Laz5$a;

    sget-object v0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->s:Ljava/lang/String;

    sget-object v1, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->t:Ljava/lang/String;

    const-string v2, "empty"

    invoke-virtual {p1, v2, v0, v1}, Laz5$a;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "web_url"

    sget-object v1, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "web_url_from"

    const-string v1, "dl_brower_cycle_search"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V

    return-void
.end method

.method public f(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->p:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    new-instance p2, Lsy2;

    invoke-direct {p2, p1}, Lsy2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
