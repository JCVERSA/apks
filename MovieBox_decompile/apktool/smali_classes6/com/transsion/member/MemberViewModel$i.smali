.class final Lcom/transsion/member/MemberViewModel$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/transsion/member/MemberViewModel$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/member/MemberViewModel$i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/member/MemberViewModel$i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/member/MemberViewModel$i;->a:Lcom/transsion/member/MemberViewModel$i;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    check-cast p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 4
    .line 5
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/member/MemberViewModel$i;->b(Lcom/tn/lib/net/bean/BaseDto;Lcom/tn/lib/net/bean/BaseDto;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Triple;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final b(Lcom/tn/lib/net/bean/BaseDto;Lcom/tn/lib/net/bean/BaseDto;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Triple;
    .locals 1

    .line 1
    const-string v0, "response1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response2"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "response3"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lkotlin/Triple;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-direct {v0, p1, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
