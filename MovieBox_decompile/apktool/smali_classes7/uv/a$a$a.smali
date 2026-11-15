.class public final Luv/a$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luv/a$a;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luv/a$a$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Luv/a$a$a;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Luv/a$a$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onDialogClick(I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "ps_dialog \u70b9\u51fbps\u5f39\u7a97 "

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v2, "update"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "ps"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne p1, v2, :cond_0

    .line 33
    .line 34
    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 35
    .line 36
    iget-object v3, p0, Luv/a$a$a;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "action"

    .line 42
    .line 43
    const-string v4, "jump"

    .line 44
    .line 45
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "action_result"

    .line 50
    .line 51
    const-string v5, "true"

    .line 52
    .line 53
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "dialog_type"

    .line 58
    .line 59
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v5, "type"

    .line 64
    .line 65
    const-string v6, "store"

    .line 66
    .line 67
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-boolean v6, p0, Luv/a$a$a;->b:Z

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v7, "manual"

    .line 78
    .line 79
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "page_from"

    .line 84
    .line 85
    iget-object v8, p0, Luv/a$a$a;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const/4 v8, 0x6

    .line 92
    new-array v8, v8, [Lkotlin/Pair;

    .line 93
    .line 94
    aput-object v3, v8, v0

    .line 95
    .line 96
    aput-object v4, v8, v2

    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    aput-object v1, v8, v0

    .line 100
    .line 101
    const/4 v0, 0x3

    .line 102
    aput-object v5, v8, v0

    .line 103
    .line 104
    const/4 v0, 0x4

    .line 105
    aput-object v6, v8, v0

    .line 106
    .line 107
    const/4 v0, 0x5

    .line 108
    aput-object v7, v8, v0

    .line 109
    .line 110
    invoke-static {v8}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lcom/transsion/version/update/e;->b(Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 119
    .line 120
    iget-object v2, p0, Luv/a$a$a;->a:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method

.method public onDialogDismiss()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "update"

    .line 6
    .line 7
    const-string v2, "ps\u5f39\u7a97\u6d88\u5931 onDialogDismiss"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDialogShow()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    .line 2
    .line 3
    iget-object v1, p0, Luv/a$a$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Luv/a$a$a;->b:Z

    .line 6
    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v3, "ps"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/transsion/version/update/e;->d(Lcom/transsion/version/update/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Luv/a$a$a;->b:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Luv/a$a$a;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/transsion/version/update/UpdateManager;->h(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v3, "update"

    .line 36
    .line 37
    const-string v4, "ps\u5f39\u7a97\u5c55\u793a onDialogShow"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
