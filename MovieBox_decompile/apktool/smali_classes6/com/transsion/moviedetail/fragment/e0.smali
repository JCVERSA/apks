.class public final synthetic Lcom/transsion/moviedetail/fragment/e0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/e0;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/e0;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/publish/model/PostEntity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->n0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Lcom/transsion/publish/model/PostEntity;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
