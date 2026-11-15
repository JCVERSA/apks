.class public final synthetic Lwa8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicmovie/fragments/PlayerMainFragment$e;


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa8;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    return-void
.end method


# virtual methods
.method public final create()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    iget-object p0, p0, Lwa8;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method
