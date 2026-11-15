.class public Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;-><init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;->c:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder;

    iput-object p2, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;->a:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    iput-object p3, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$PreviewViewHolder$a;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p1, 0x41880000    # 17.0f

    invoke-static {p0, p1}, Ld39;->a(Landroid/content/Context;F)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
