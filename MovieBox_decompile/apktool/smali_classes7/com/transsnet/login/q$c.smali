.class final Lcom/transsnet/login/q$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/q;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/q;


# direct methods
.method constructor <init>(Lcom/transsnet/login/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/q$c;->a:Lcom/transsnet/login/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/login/q$c;->a:Lcom/transsnet/login/q;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/transsnet/login/q;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/login/q$c;->a(Lcom/tn/lib/net/bean/BaseDto;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
