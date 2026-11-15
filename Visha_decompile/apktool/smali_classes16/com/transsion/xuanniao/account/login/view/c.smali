.class public Lcom/transsion/xuanniao/account/login/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/login/view/OppO0OO$a;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/c;->a:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/xuanniao/account/model/data/CountryData$Country;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    const-string v2, "key_cc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->displayName:Ljava/lang/String;

    const-string v2, "key_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->country:Ljava/lang/String;

    const-string v1, "key_name_en"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/c;->a:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/c;->a:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
