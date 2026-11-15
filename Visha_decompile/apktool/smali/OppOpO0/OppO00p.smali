.class public LOppOpO0/OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic OppO0O0:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOppOpO0/OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    iput-object p2, p0, LOppOpO0/OppO00p;->OppO00p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LOppOpO0/OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-boolean v3, v3, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->isSelected:Z

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, LOppOpO0/OppO00p;->OppO00p:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v1, v1, 0x8

    iget-object p0, p0, LOppOpO0/OppO00p;->OppO0O0:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    return-void
.end method
