.class public final Lcom/transsion/search/bean/SearchSubject;
.super Lcom/transsion/moviedetailapi/bean/Subject;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J)\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/search/bean/SearchSubject;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Ljava/io/Serializable;",
        "viewType",
        "",
        "verticalRank",
        "Lcom/transsion/search/bean/VerticalRank;",
        "showDivider",
        "",
        "<init>",
        "(ILcom/transsion/search/bean/VerticalRank;Z)V",
        "getViewType",
        "()I",
        "setViewType",
        "(I)V",
        "getVerticalRank",
        "()Lcom/transsion/search/bean/VerticalRank;",
        "setVerticalRank",
        "(Lcom/transsion/search/bean/VerticalRank;)V",
        "getShowDivider",
        "()Z",
        "setShowDivider",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Search_psRelease"
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
.field private showDivider:Z

.field private verticalRank:Lcom/transsion/search/bean/VerticalRank;

.field private viewType:I


# direct methods
.method public constructor <init>(ILcom/transsion/search/bean/VerticalRank;Z)V
    .locals 64

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const v62, 0x3ffffff

    .line 4
    .line 5
    .line 6
    const/16 v63, 0x0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/16 v17, 0x0

    .line 26
    .line 27
    const/16 v18, 0x0

    .line 28
    .line 29
    const/16 v19, 0x0

    .line 30
    .line 31
    const/16 v20, 0x0

    .line 32
    .line 33
    const/16 v21, 0x0

    .line 34
    .line 35
    const/16 v22, 0x0

    .line 36
    .line 37
    const/16 v23, 0x0

    .line 38
    .line 39
    const/16 v24, 0x0

    .line 40
    .line 41
    const/16 v25, 0x0

    .line 42
    .line 43
    const/16 v26, 0x0

    .line 44
    .line 45
    const/16 v27, 0x0

    .line 46
    .line 47
    const/16 v28, 0x0

    .line 48
    .line 49
    const/16 v29, 0x0

    .line 50
    .line 51
    const/16 v30, 0x0

    .line 52
    .line 53
    const/16 v31, 0x0

    .line 54
    .line 55
    const/16 v32, 0x0

    .line 56
    .line 57
    const/16 v33, 0x0

    .line 58
    .line 59
    const/16 v34, 0x0

    .line 60
    .line 61
    const/16 v35, 0x0

    .line 62
    .line 63
    const/16 v36, 0x0

    .line 64
    .line 65
    const/16 v37, 0x0

    .line 66
    .line 67
    const/16 v38, 0x0

    .line 68
    .line 69
    const-wide/16 v39, 0x0

    .line 70
    .line 71
    const/16 v41, 0x0

    .line 72
    .line 73
    const/16 v42, 0x0

    .line 74
    .line 75
    const-wide/16 v43, 0x0

    .line 76
    .line 77
    const/16 v45, 0x0

    .line 78
    .line 79
    const/16 v46, 0x0

    .line 80
    .line 81
    const/16 v47, 0x0

    .line 82
    .line 83
    const/16 v48, 0x0

    .line 84
    .line 85
    const/16 v49, 0x0

    .line 86
    .line 87
    const/16 v50, 0x0

    .line 88
    .line 89
    const/16 v51, 0x0

    .line 90
    .line 91
    const/16 v52, 0x0

    .line 92
    .line 93
    const/16 v53, 0x0

    .line 94
    .line 95
    const/16 v54, 0x0

    .line 96
    .line 97
    const/16 v55, 0x0

    .line 98
    .line 99
    const/16 v56, 0x0

    .line 100
    .line 101
    const/16 v57, 0x0

    .line 102
    .line 103
    const/16 v58, 0x0

    .line 104
    .line 105
    const/16 v59, 0x0

    .line 106
    .line 107
    const/16 v60, 0x0

    .line 108
    .line 109
    const/16 v61, -0x1

    .line 110
    .line 111
    invoke-direct/range {v0 .. v63}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    move/from16 v1, p1

    .line 115
    .line 116
    iput v1, v0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 117
    .line 118
    move-object/from16 v1, p2

    .line 119
    .line 120
    iput-object v1, v0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 121
    .line 122
    move/from16 v1, p3

    .line 123
    .line 124
    iput-boolean v1, v0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 125
    .line 126
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search/bean/SearchSubject;ILcom/transsion/search/bean/VerticalRank;ZILjava/lang/Object;)Lcom/transsion/search/bean/SearchSubject;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/search/bean/SearchSubject;->copy(ILcom/transsion/search/bean/VerticalRank;Z)Lcom/transsion/search/bean/SearchSubject;

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
    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Lcom/transsion/search/bean/VerticalRank;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ILcom/transsion/search/bean/VerticalRank;Z)Lcom/transsion/search/bean/SearchSubject;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/search/bean/SearchSubject;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search/bean/SearchSubject;-><init>(ILcom/transsion/search/bean/VerticalRank;Z)V

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
    instance-of v1, p1, Lcom/transsion/search/bean/SearchSubject;

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
    check-cast p1, Lcom/transsion/search/bean/SearchSubject;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 32
    .line 33
    iget-boolean p1, p1, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 34
    .line 35
    if-eq v1, p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getShowDivider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getVerticalRank()Lcom/transsion/search/bean/VerticalRank;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/search/bean/VerticalRank;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final setShowDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setVerticalRank(Lcom/transsion/search/bean/VerticalRank;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 2
    .line 3
    return-void
.end method

.method public final setViewType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "SearchSubject(viewType="

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
    const-string v0, ", verticalRank="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", showDivider="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
