.class public Lil7$b;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lil7;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lil7;


# direct methods
.method public constructor <init>(Lil7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lil7$b;->l:Lil7;

    iput-object p5, p0, Lil7$b;->k:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_0

    sget-object p1, Lao7$a;->a:Lao7;

    iget-object p0, p0, Lil7$b;->k:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lil7$b;->l:Lil7;

    iget-object p0, p0, Lil7$b;->k:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lil7;->c(Landroid/content/Context;)V

    return-void
.end method
