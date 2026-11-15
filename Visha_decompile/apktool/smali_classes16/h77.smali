.class public final synthetic Lh77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh77;->a:I

    iput p2, p0, Lh77;->b:I

    iput-object p3, p0, Lh77;->c:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    iput p4, p0, Lh77;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lf43;FF)V
    .locals 7

    iget v0, p0, Lh77;->a:I

    iget v1, p0, Lh77;->b:I

    iget-object v2, p0, Lh77;->c:Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;

    iget v3, p0, Lh77;->d:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;->i(IILcom/transsion/widgetsliquid/view/OSLiquidSearchBar;ILf43;FF)V

    return-void
.end method
