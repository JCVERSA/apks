.class public Lcom/transsion/sniffer_load/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/a;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/a$d;->b:Lcom/transsion/sniffer_load/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "skip_download_guide"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "guide_dl_popup_check_cl"

    const-wide/16 p1, 0x246c

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
