.class public final Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/commercialization/task/treasure/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->s0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)Lwj/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lwj/g;->onSuccess()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 18
    .line 19
    const-string v1, "typeAdInstall"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->r0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$a;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 2
    .line 3
    const-string v1, "typeAdChange"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->r0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
