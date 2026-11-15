.class Lcom/transsion/baselib/db/member/g$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/member/g;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/member/g;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/member/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/member/g$a;->a:Lcom/transsion/baselib/db/member/g;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/member/g$a;->f(Ly3/e;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR ABORT INTO `member_resolution` (`subjectId`,`ep`,`se`,`vipResolutionTip`,`isUnlock`) VALUES (?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getSubjectId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getSubjectId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getEp()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getSe()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-long v0, v0

    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getVipResolutionTip()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move-object v0, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->getVipResolutionTip()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    const/4 v2, 0x4

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-interface {p1, v2}, Ly3/e;->g(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-long v3, v0

    .line 70
    invoke-interface {p1, v2, v3, v4}, Ly3/e;->c(IJ)V

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->isUnlock()Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/member/MemberResolutionBean;->isUnlock()Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_3
    const/4 p2, 0x5

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    invoke-interface {p1, p2}, Ly3/e;->g(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    int-to-long v0, v0

    .line 104
    invoke-interface {p1, p2, v0, v1}, Ly3/e;->c(IJ)V

    .line 105
    .line 106
    .line 107
    :goto_4
    return-void
.end method
