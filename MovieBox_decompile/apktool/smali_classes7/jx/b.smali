.class public final synthetic Ljx/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/country/SelectCountryViewModel;

.field public final synthetic b:Lcom/transsnet/loginapi/bean/Country;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/country/SelectCountryViewModel;Lcom/transsnet/loginapi/bean/Country;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljx/b;->a:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Ljx/b;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljx/b;->a:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Ljx/b;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Ljx/c;->f(Lcom/transsnet/login/country/SelectCountryViewModel;Lcom/transsnet/loginapi/bean/Country;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
