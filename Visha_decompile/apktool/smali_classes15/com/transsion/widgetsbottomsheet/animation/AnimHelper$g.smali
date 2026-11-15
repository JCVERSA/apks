.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->q(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIIFFFFLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$g;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$g;->a:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
