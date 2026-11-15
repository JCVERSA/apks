.class public final Lcom/transsion/usercenter/profile/bean/Subject;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0003J/\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/bean/Subject;",
        "Ljava/io/Serializable;",
        "wantToSeeCount",
        "",
        "haveSeenCount",
        "wantSubjects",
        "",
        "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
        "<init>",
        "(IILjava/util/List;)V",
        "getWantToSeeCount",
        "()I",
        "setWantToSeeCount",
        "(I)V",
        "getHaveSeenCount",
        "setHaveSeenCount",
        "getWantSubjects",
        "()Ljava/util/List;",
        "setWantSubjects",
        "(Ljava/util/List;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "UserCenter_psRelease"
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
.field private haveSeenCount:I

.field private wantSubjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
            ">;"
        }
    .end annotation
.end field

.field private wantToSeeCount:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/usercenter/profile/bean/Subject;IILjava/util/List;ILjava/lang/Object;)Lcom/transsion/usercenter/profile/bean/Subject;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/bean/Subject;->copy(IILjava/util/List;)Lcom/transsion/usercenter/profile/bean/Subject;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IILjava/util/List;)Lcom/transsion/usercenter/profile/bean/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
            ">;)",
            "Lcom/transsion/usercenter/profile/bean/Subject;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/bean/Subject;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/usercenter/profile/bean/Subject;-><init>(IILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/usercenter/profile/bean/Subject;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/usercenter/profile/bean/Subject;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 21
    .line 22
    iget v3, p1, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getHaveSeenCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWantSubjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWantToSeeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final setHaveSeenCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setWantSubjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/CoverUrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setWantToSeeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantToSeeCount:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/Subject;->haveSeenCount:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/usercenter/profile/bean/Subject;->wantSubjects:Ljava/util/List;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "Subject(wantToSeeCount="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", haveSeenCount="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", wantSubjects="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
