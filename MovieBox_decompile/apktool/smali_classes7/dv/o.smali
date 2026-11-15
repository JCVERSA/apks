.class public final synthetic Ldv/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldv/o;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ldv/o;->b:Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldv/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ldv/o;->b:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->c0(Ljava/lang/String;Landroidx/fragment/app/FragmentManager;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
