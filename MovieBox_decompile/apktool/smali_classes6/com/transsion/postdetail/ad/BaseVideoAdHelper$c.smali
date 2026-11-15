.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L(ZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
