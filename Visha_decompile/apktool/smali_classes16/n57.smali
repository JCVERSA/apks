.class public final synthetic Ln57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln57;->b:Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ln57;->b:Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->updateLayoutToHorizontal()V

    return-void
.end method
