.class final Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->E(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/m;
    .locals 8

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->U(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->W(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->T(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Lcom/transsion/usercenter/profile/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->b:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->S(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Z()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/16 v6, 0x18

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v0 .. v7}, Lcom/transsion/usercenter/profile/b$a;->d(Lcom/transsion/usercenter/profile/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->T(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Lcom/transsion/usercenter/profile/b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->b:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->S(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Z()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/16 v6, 0x18

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v0 .. v7}, Lcom/transsion/usercenter/profile/b$a;->f(Lcom/transsion/usercenter/profile/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->T(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Lcom/transsion/usercenter/profile/b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->b:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->S(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a:Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Z()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    const/16 v5, 0x8

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-static/range {v0 .. v6}, Lcom/transsion/usercenter/profile/b$a;->b(Lcom/transsion/usercenter/profile/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;->a(Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
