.class public final Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:I

.field public c:Landroid/widget/Toast;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->b:I

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    if-eqz p3, :cond_3

    iget p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->b:I

    if-lt p2, p4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->c:Landroid/widget/Toast;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->d:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-static {p3, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->c:Landroid/widget/Toast;

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$b;->c:Landroid/widget/Toast;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-object p1
.end method
