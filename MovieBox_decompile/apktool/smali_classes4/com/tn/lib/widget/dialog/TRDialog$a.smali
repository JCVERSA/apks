.class public final Lcom/tn/lib/widget/dialog/TRDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/widget/dialog/TRDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/tn/lib/widget/dialog/TRDialogListener;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    .line 6
    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->g:F

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->j:I

    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->t:I

    .line 15
    .line 16
    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->u:I

    .line 17
    .line 18
    iput v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->v:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/widget/dialog/TRBaseDialog;
    .locals 4

    .line 1
    new-instance v0, Lcom/tn/lib/widget/dialog/TRDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/lib/widget/dialog/TRDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "title"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "message"

    .line 19
    .line 20
    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "leftBtn"

    .line 26
    .line 27
    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "rightBtn"

    .line 33
    .line 34
    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "cb_tip"

    .line 40
    .line 41
    iget-object v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->h:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "is_show_close"

    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->k:Z

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->g:F

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->a0(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->b()Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/dialog/TRBaseDialog;->b0(Z)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->e:Lcom/tn/lib/widget/dialog/TRDialogListener;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->s0(Lcom/tn/lib/widget/dialog/TRDialog;Lcom/tn/lib/widget/dialog/TRDialogListener;)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->m0(Lcom/tn/lib/widget/dialog/TRDialog;Lcom/tn/lib/widget/dialog/i;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->u0(Lcom/tn/lib/widget/dialog/TRDialog;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->l:I

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->p0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->m:I

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->x0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->n:I

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->q0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 101
    .line 102
    .line 103
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->o:I

    .line 104
    .line 105
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->y0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->p:I

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->r0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->q:I

    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->o0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->r:I

    .line 119
    .line 120
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->z0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 121
    .line 122
    .line 123
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->s:I

    .line 124
    .line 125
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->w0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->t:I

    .line 129
    .line 130
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->v0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 131
    .line 132
    .line 133
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->u:I

    .line 134
    .line 135
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->n0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->v:I

    .line 139
    .line 140
    invoke-static {v0, v1}, Lcom/tn/lib/widget/dialog/TRDialog;->t0(Lcom/tn/lib/widget/dialog/TRDialog;I)V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->f:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    .line 1
    const-string v0, "leftText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->e:Lcom/tn/lib/widget/dialog/TRDialogListener;

    .line 7
    .line 8
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final h(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(I)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    .line 1
    const-string v0, "rightText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/lib/widget/dialog/TRDialog$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
