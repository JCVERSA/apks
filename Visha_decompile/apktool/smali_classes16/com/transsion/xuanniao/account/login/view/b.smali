.class public Lcom/transsion/xuanniao/account/login/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

.field public final synthetic c:Lcom/transsion/xuanniao/account/login/view/OppO0OO;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/OppO0OO;Lcom/transsion/xuanniao/account/model/data/CountryData$Country;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/b;->c:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/login/view/b;->b:Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/b;->c:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->q:Lcom/transsion/xuanniao/account/login/view/OppO0OO$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/b;->b:Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    check-cast p1, Lcom/transsion/xuanniao/account/login/view/c;

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/login/view/c;->a(Lcom/transsion/xuanniao/account/model/data/CountryData$Country;)V

    :cond_0
    return-void
.end method
