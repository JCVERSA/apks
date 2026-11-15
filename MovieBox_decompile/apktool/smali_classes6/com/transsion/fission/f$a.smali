.class public final Lcom/transsion/fission/f$a;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/fission/f;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/fission/f;


# direct methods
.method constructor <init>(Lcom/transsion/fission/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/fission/f$a;->d:Lcom/transsion/fission/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/f$a;->d:Lcom/transsion/fission/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/fission/f;->c(Lcom/transsion/fission/f;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    move-object p2, v2

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    move-object p1, v2

    .line 17
    :cond_1
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p2, p1, v3, v2}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public d(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 1

    .line 1
    const-string v0, "baseDto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ldg/a;->d(Lcom/tn/lib/net/bean/BaseDto;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/fission/f$a;->d:Lcom/transsion/fission/f;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/fission/f;->c(Lcom/transsion/fission/f;)Landroidx/lifecycle/b0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
