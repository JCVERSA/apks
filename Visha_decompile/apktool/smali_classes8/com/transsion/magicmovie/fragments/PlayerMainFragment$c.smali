.class public Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/adapter/PagerAdapter2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;->b:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    iput-object p2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$e;

    invoke-interface {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$e;->create()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;->b:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->e0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;->b:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->e0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
