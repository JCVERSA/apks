.class public Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->e:Lom7;

    invoke-virtual {v1}, Lom7;->a()[I

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget v4, v1, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "Contacts"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-string v4, "Block"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const-string v4, "WLAN"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Lxj;->H(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO00p;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-boolean v1, v0, Lkl7;->e:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->B()V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lkl7;->c()V

    :goto_3
    return-void
.end method
