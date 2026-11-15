.class final Lcom/transsion/member/MemberViewModel$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/transsion/member/MemberViewModel$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/member/MemberViewModel$e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/member/MemberViewModel$e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/member/MemberViewModel$e;->a:Lcom/transsion/member/MemberViewModel$e;

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
.method public final a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/m;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/member/w;->a:Lcom/transsion/member/w;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/member/w;->b()Lcom/tencent/mmkv/MMKV;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "SKU_LIST_JSON"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    const-class v1, Lcom/transsion/memberapi/SkuData;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/transsion/memberapi/SkuData;

    .line 42
    .line 43
    new-instance v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "0"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/tn/lib/net/bean/BaseDto;->setCode(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    :catch_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->l(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/j;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->l(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/j;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$e;->a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
