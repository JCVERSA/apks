.class public final synthetic Lcom/transsion/commercialization/task/treasure/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

.field public final synthetic b:Lcom/transsion/memberapi/PayModule;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Lcom/transsion/memberapi/PayModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/j;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/commercialization/task/treasure/j;->b:Lcom/transsion/memberapi/PayModule;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/j;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/treasure/j;->b:Lcom/transsion/memberapi/PayModule;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->p0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Lcom/transsion/memberapi/PayModule;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
