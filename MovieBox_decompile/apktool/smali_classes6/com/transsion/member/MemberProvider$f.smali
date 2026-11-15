.class final Lcom/transsion/member/MemberProvider$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->p(Lim/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberProvider;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberProvider$f;->a:Lcom/transsion/member/MemberProvider;

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
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/transsion/memberapi/MemberTaskInfo;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/member/MemberProvider$f;->a:Lcom/transsion/member/MemberProvider;

    .line 15
    .line 16
    sget-object v1, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "MEMBER_TASK_JSON"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/transsion/member/MemberProvider;->Q(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberTaskInfo;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/transsion/member/MemberProvider;->J(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Lcom/transsion/member/MemberProvider;->O(Lcom/transsion/member/MemberProvider;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$f;->a(Lcom/tn/lib/net/bean/BaseDto;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
