.class public final synthetic Lcom/transsion/commercialization/task/treasure/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

.field public final synthetic b:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureAdView;Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/i;->a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/commercialization/task/treasure/i;->b:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/i;->a:Lcom/transsion/commercialization/task/treasure/TreasureAdView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/treasure/i;->b:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->o0(Lcom/transsion/commercialization/task/treasure/TreasureAdView;Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Z)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
