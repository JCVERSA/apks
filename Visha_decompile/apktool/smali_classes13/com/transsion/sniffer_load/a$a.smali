.class public Lcom/transsion/sniffer_load/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lcom/transsion/sniffer_load/a;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/a;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/a$a;->b:Lcom/transsion/sniffer_load/a;

    iput-object p2, p0, Lcom/transsion/sniffer_load/a$a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwoc;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/a$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/a$a;->a:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/sniffer_load/R$drawable;->pic_download_lead_tablet:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget p1, p1, Lwoc;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/a$a;->a:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/sniffer_load/R$drawable;->pic_download_lead_wid_new:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/sniffer_load/a$a;->a:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/sniffer_load/R$drawable;->pic_download_lead_new:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lwoc;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/a$a;->a(Lwoc;)V

    return-void
.end method
