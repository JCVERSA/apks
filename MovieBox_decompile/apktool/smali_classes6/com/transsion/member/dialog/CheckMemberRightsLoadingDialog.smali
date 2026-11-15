.class public final Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;
.super Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J#\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;",
        "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "<init>",
        "()V",
        "",
        "t0",
        "Lcom/transsion/memberapi/MemberCheckResult;",
        "it",
        "s0",
        "(Lcom/transsion/memberapi/MemberCheckResult;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lim/a;",
        "listener",
        "u0",
        "(Lim/a;)V",
        "Lcom/transsion/memberapi/MemberSceneType;",
        "sceneType",
        "",
        "resolution",
        "v0",
        "(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;)V",
        "c",
        "Lim/a;",
        "mListener",
        "d",
        "Lcom/transsion/memberapi/MemberSceneType;",
        "mSceneType",
        "e",
        "Ljava/lang/Integer;",
        "mResolution",
        "Member_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private c:Lim/a;

.field private d:Lcom/transsion/memberapi/MemberSceneType;

.field private e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p0(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->s0(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;)Lcom/transsion/memberapi/MemberSceneType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->d:Lcom/transsion/memberapi/MemberSceneType;

    .line 2
    .line 3
    return-object p0
.end method

.method private final s0(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> checkMember() --> it = "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    sget v0, Lcom/transsion/member/R$string;->co_network_error:I

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_0
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const-string v0, "\u6743\u76ca\u6821\u9a8c\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25"

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lim/a;->onFail(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberCheckResult;->isPassed()Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 94
    .line 95
    if-eqz p1, :cond_9

    .line 96
    .line 97
    invoke-interface {p1}, Lim/a;->e()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberCheckResult;->getInterceptType()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Lcom/transsion/memberapi/OpType;->OP_INSTALL:Lcom/transsion/memberapi/OpType;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    iget-object v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 118
    .line 119
    if-eqz v1, :cond_9

    .line 120
    .line 121
    invoke-interface {v1, p1}, Lim/a;->d(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    sget-object v2, Lcom/transsion/memberapi/OpType;->OP_AD:Lcom/transsion/memberapi/OpType;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    iget-object v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 138
    .line 139
    if-eqz v1, :cond_9

    .line 140
    .line 141
    invoke-interface {v1, p1}, Lim/a;->b(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    sget-object v2, Lcom/transsion/memberapi/OpType;->OP_VIP:Lcom/transsion/memberapi/OpType;

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    iget-object v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 158
    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    invoke-interface {v1, p1}, Lim/a;->a(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_7
    sget-object v2, Lcom/transsion/memberapi/OpType;->LOTTERY_DRAW:Lcom/transsion/memberapi/OpType;

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    iget-object v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 178
    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    invoke-interface {v1, p1}, Lim/a;->c(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_8
    iget-object v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 186
    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    invoke-interface {v1, p1}, Lim/a;->f(Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    new-instance v5, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$analysis$1;

    .line 197
    .line 198
    invoke-direct {v5, p0, v0}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$analysis$1;-><init>(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lkotlin/coroutines/Continuation;)V

    .line 199
    .line 200
    .line 201
    const/4 v6, 0x3

    .line 202
    const/4 v7, 0x0

    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v4, 0x0

    .line 205
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method private final t0()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;-><init>(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " --> onCreate() --> \u4f1a\u5458\u6743\u76ca\u6821\u9a8c --> \u4e2d\u95f4\u8fc7\u5ea6\u5f39\u7a97 --> \u8bf7\u6c42\u63a5\u53e3\u5224\u65ad\u662f\u5426\u9700\u8981\u62e6\u622a"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->t0()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final u0(Lim/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->c:Lim/a;

    .line 2
    .line 3
    return-void
.end method

.method public final v0(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->d:Lcom/transsion/memberapi/MemberSceneType;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->e:Ljava/lang/Integer;

    .line 4
    .line 5
    return-void
.end method
