.class public final Lcom/transsion/push/bean/ServerMatchListItemData;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008k\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00ef\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\"\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008&\u0010\'J\u000b\u0010m\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010w\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u007f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c6\u0003J\u0012\u0010\u0080\u0001\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u00c6\u0003J\u000c\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u0082\u0001\u001a\u00020\u001dH\u00c6\u0003J\u000c\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u0086\u0001\u001a\u00020\"H\u00c6\u0003J\n\u0010\u0087\u0001\u001a\u00020\"H\u00c6\u0003J\u000c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00f2\u0002\u0010\u008a\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020\"2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0007\u0010\u008b\u0001\u001a\u00020\u001dJ\u0016\u0010\u008c\u0001\u001a\u00020\"2\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u00d6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u001dH\u00d6\u0001J\n\u0010\u0090\u0001\u001a\u00020\u0003H\u00d6\u0001J\u001b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020\u001dR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010-\"\u0004\u00081\u0010/R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010)\"\u0004\u00083\u0010+R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010)\"\u0004\u00085\u0010+R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010)\"\u0004\u00087\u0010+R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010)\"\u0004\u00089\u0010+R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010)\"\u0004\u0008;\u0010+R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010)\"\u0004\u0008=\u0010+R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010)\"\u0004\u0008?\u0010+R\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010)\"\u0004\u0008E\u0010+R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010)\"\u0004\u0008G\u0010+R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010)\"\u0004\u0008I\u0010+R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010K\"\u0004\u0008O\u0010MR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010)\"\u0004\u0008Q\u0010+R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010)\"\u0004\u0008S\u0010+R\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010A\"\u0004\u0008U\u0010CR\"\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010A\"\u0004\u0008W\u0010CR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010)\"\u0004\u0008Y\u0010+R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010)\"\u0004\u0008_\u0010+R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010)\"\u0004\u0008a\u0010+R\u001c\u0010 \u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010)\"\u0004\u0008c\u0010+R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010d\"\u0004\u0008e\u0010fR\u001a\u0010#\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010d\"\u0004\u0008h\u0010fR\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010)\"\u0004\u0008j\u0010+R\u001c\u0010%\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010)\"\u0004\u0008l\u0010+\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lcom/transsion/push/bean/ServerMatchListItemData;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "team1",
        "Lcom/transsion/push/bean/TeamInfoMatch;",
        "team2",
        "status",
        "playType",
        "playPath",
        "startTime",
        "endTime",
        "type",
        "timeDesc",
        "playSource",
        "",
        "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
        "statusLive",
        "league",
        "liveDeviceId",
        "teamMatchInfo1",
        "Lcom/transsion/push/bean/TeamMatchInfoMatch;",
        "teamMatchInfo2",
        "matchResult",
        "matchRound",
        "replay",
        "highlights",
        "extCountryCode",
        "score",
        "",
        "liveType",
        "liveRegion",
        "leagueId",
        "isSub",
        "",
        "startTimeTbd",
        "leagueType",
        "season",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "getTeam1",
        "()Lcom/transsion/push/bean/TeamInfoMatch;",
        "setTeam1",
        "(Lcom/transsion/push/bean/TeamInfoMatch;)V",
        "getTeam2",
        "setTeam2",
        "getStatus",
        "setStatus",
        "getPlayType",
        "setPlayType",
        "getPlayPath",
        "setPlayPath",
        "getStartTime",
        "setStartTime",
        "getEndTime",
        "setEndTime",
        "getType",
        "setType",
        "getTimeDesc",
        "setTimeDesc",
        "getPlaySource",
        "()Ljava/util/List;",
        "setPlaySource",
        "(Ljava/util/List;)V",
        "getStatusLive",
        "setStatusLive",
        "getLeague",
        "setLeague",
        "getLiveDeviceId",
        "setLiveDeviceId",
        "getTeamMatchInfo1",
        "()Lcom/transsion/push/bean/TeamMatchInfoMatch;",
        "setTeamMatchInfo1",
        "(Lcom/transsion/push/bean/TeamMatchInfoMatch;)V",
        "getTeamMatchInfo2",
        "setTeamMatchInfo2",
        "getMatchResult",
        "setMatchResult",
        "getMatchRound",
        "setMatchRound",
        "getReplay",
        "setReplay",
        "getHighlights",
        "setHighlights",
        "getExtCountryCode",
        "setExtCountryCode",
        "getScore",
        "()I",
        "setScore",
        "(I)V",
        "getLiveType",
        "setLiveType",
        "getLiveRegion",
        "setLiveRegion",
        "getLeagueId",
        "setLeagueId",
        "()Z",
        "setSub",
        "(Z)V",
        "getStartTimeTbd",
        "setStartTimeTbd",
        "getLeagueType",
        "setLeagueType",
        "getSeason",
        "setSeason",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/push/bean/ServerMatchListItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endTime:Ljava/lang/String;

.field private extCountryCode:Ljava/lang/String;

.field private highlights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private isSub:Z

.field private league:Ljava/lang/String;

.field private leagueId:Ljava/lang/String;

.field private leagueType:Ljava/lang/String;

.field private liveDeviceId:Ljava/lang/String;

.field private liveRegion:Ljava/lang/String;

.field private liveType:Ljava/lang/String;

.field private matchResult:Ljava/lang/String;

.field private matchRound:Ljava/lang/String;

.field private playPath:Ljava/lang/String;

.field private playSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation
.end field

.field private playType:Ljava/lang/String;

.field private replay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation
.end field

.field private score:I

.field private season:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private startTimeTbd:Z

.field private status:Ljava/lang/String;

.field private statusLive:Ljava/lang/String;

.field private team1:Lcom/transsion/push/bean/TeamInfoMatch;

.field private team2:Lcom/transsion/push/bean/TeamInfoMatch;

.field private teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

.field private teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

.field private timeDesc:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/bean/ServerMatchListItemData$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/bean/ServerMatchListItemData$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/bean/ServerMatchListItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    const v30, 0x1fffffff

    const/16 v31, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v31}, Lcom/transsion/push/bean/ServerMatchListItemData;-><init>(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/push/bean/TeamInfoMatch;",
            "Lcom/transsion/push/bean/TeamInfoMatch;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/push/bean/TeamMatchInfoMatch;",
            "Lcom/transsion/push/bean/TeamMatchInfoMatch;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    move/from16 v1, p22

    .line 24
    iput v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    move/from16 v1, p26

    .line 28
    iput-boolean v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    move/from16 v1, p27

    .line 29
    iput-boolean v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    move-object/from16 v1, p28

    .line 30
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 31
    iput-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    const/16 v23, 0x0

    if-eqz v22, :cond_15

    move/from16 v22, v23

    goto :goto_15

    :cond_15
    move/from16 v22, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p24

    :goto_17
    const/high16 v26, 0x1000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v26, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    move/from16 v27, v23

    goto :goto_19

    :cond_19
    move/from16 v27, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    goto :goto_1a

    :cond_1a
    move/from16 v23, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v0, v0, v29

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v0, p29

    :goto_1c
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move/from16 p23, v22

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move-object/from16 p26, v26

    move/from16 p27, v27

    move/from16 p28, v23

    move-object/from16 p29, v28

    move-object/from16 p30, v0

    .line 32
    invoke-direct/range {p1 .. p30}, Lcom/transsion/push/bean/ServerMatchListItemData;-><init>(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/push/bean/ServerMatchListItemData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    goto :goto_15

    :cond_15
    move/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-boolean v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    goto :goto_19

    :cond_19
    move/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-boolean v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    goto :goto_1a

    :cond_1a
    move/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p28, v15

    move-object/from16 p29, v1

    invoke-virtual/range {p0 .. p29}, Lcom/transsion/push/bean/ServerMatchListItemData;->copy(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/push/bean/ServerMatchListItemData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Lcom/transsion/push/bean/TeamMatchInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Lcom/transsion/push/bean/TeamMatchInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/push/bean/TeamInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 2
    .line 3
    return v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component27()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/transsion/push/bean/TeamInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/push/bean/ServerMatchListItemData;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/push/bean/TeamInfoMatch;",
            "Lcom/transsion/push/bean/TeamInfoMatch;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/push/bean/TeamMatchInfoMatch;",
            "Lcom/transsion/push/bean/TeamMatchInfoMatch;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/push/bean/ServerMatchListItemData;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v13, p13

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    move-object/from16 v15, p15

    .line 30
    .line 31
    move-object/from16 v16, p16

    .line 32
    .line 33
    move-object/from16 v17, p17

    .line 34
    .line 35
    move-object/from16 v18, p18

    .line 36
    .line 37
    move-object/from16 v19, p19

    .line 38
    .line 39
    move-object/from16 v20, p20

    .line 40
    .line 41
    move-object/from16 v21, p21

    .line 42
    .line 43
    move/from16 v22, p22

    .line 44
    .line 45
    move-object/from16 v23, p23

    .line 46
    .line 47
    move-object/from16 v24, p24

    .line 48
    .line 49
    move-object/from16 v25, p25

    .line 50
    .line 51
    move/from16 v26, p26

    .line 52
    .line 53
    move/from16 v27, p27

    .line 54
    .line 55
    move-object/from16 v28, p28

    .line 56
    .line 57
    move-object/from16 v29, p29

    .line 58
    .line 59
    new-instance v30, Lcom/transsion/push/bean/ServerMatchListItemData;

    .line 60
    .line 61
    move-object/from16 v0, v30

    .line 62
    .line 63
    invoke-direct/range {v0 .. v29}, Lcom/transsion/push/bean/ServerMatchListItemData;-><init>(Ljava/lang/String;Lcom/transsion/push/bean/TeamInfoMatch;Lcom/transsion/push/bean/TeamInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/TeamMatchInfoMatch;Lcom/transsion/push/bean/TeamMatchInfoMatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v30
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
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
    instance-of v1, p1, Lcom/transsion/push/bean/ServerMatchListItemData;

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
    check-cast p1, Lcom/transsion/push/bean/ServerMatchListItemData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 179
    .line 180
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 212
    .line 213
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 223
    .line 224
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 245
    .line 246
    iget v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 247
    .line 248
    if-eq v1, v3, :cond_17

    .line 249
    .line 250
    return v2

    .line 251
    :cond_17
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_18

    .line 260
    .line 261
    return v2

    .line 262
    :cond_18
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_19

    .line 271
    .line 272
    return v2

    .line 273
    :cond_19
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_1a

    .line 282
    .line 283
    return v2

    .line 284
    :cond_1a
    iget-boolean v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 285
    .line 286
    iget-boolean v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 287
    .line 288
    if-eq v1, v3, :cond_1b

    .line 289
    .line 290
    return v2

    .line 291
    :cond_1b
    iget-boolean v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 292
    .line 293
    iget-boolean v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 294
    .line 295
    if-eq v1, v3, :cond_1c

    .line 296
    .line 297
    return v2

    .line 298
    :cond_1c
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 299
    .line 300
    iget-object v3, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_1d

    .line 307
    .line 308
    return v2

    .line 309
    :cond_1d
    iget-object v1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-nez p1, :cond_1e

    .line 318
    .line 319
    return v2

    .line 320
    :cond_1e
    return v0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHighlights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeague()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeagueId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeagueType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLiveDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLiveRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLiveType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchRound()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaySource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReplay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSeason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTimeTbd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusLive()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeam1()Lcom/transsion/push/bean/TeamInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeam2()Lcom/transsion/push/bean/TeamInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeamMatchInfo1()Lcom/transsion/push/bean/TeamMatchInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeamMatchInfo2()Lcom/transsion/push/bean/TeamMatchInfoMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/push/bean/TeamInfoMatch;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/push/bean/TeamInfoMatch;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Lcom/transsion/push/bean/TeamMatchInfoMatch;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Lcom/transsion/push/bean/TeamMatchInfoMatch;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    move v2, v1

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    move v2, v1

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    move v2, v1

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    move v2, v1

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    move v2, v1

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 275
    .line 276
    add-int/2addr v0, v2

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    .line 278
    .line 279
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 280
    .line 281
    if-nez v2, :cond_15

    .line 282
    .line 283
    move v2, v1

    .line 284
    goto :goto_15

    .line 285
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    :goto_15
    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    .line 291
    .line 292
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 293
    .line 294
    if-nez v2, :cond_16

    .line 295
    .line 296
    move v2, v1

    .line 297
    goto :goto_16

    .line 298
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    :goto_16
    add-int/2addr v0, v2

    .line 303
    mul-int/lit8 v0, v0, 0x1f

    .line 304
    .line 305
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 306
    .line 307
    if-nez v2, :cond_17

    .line 308
    .line 309
    move v2, v1

    .line 310
    goto :goto_17

    .line 311
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    :goto_17
    add-int/2addr v0, v2

    .line 316
    mul-int/lit8 v0, v0, 0x1f

    .line 317
    .line 318
    iget-boolean v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 319
    .line 320
    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    add-int/2addr v0, v2

    .line 325
    mul-int/lit8 v0, v0, 0x1f

    .line 326
    .line 327
    iget-boolean v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 328
    .line 329
    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    add-int/2addr v0, v2

    .line 334
    mul-int/lit8 v0, v0, 0x1f

    .line 335
    .line 336
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 337
    .line 338
    if-nez v2, :cond_18

    .line 339
    .line 340
    move v2, v1

    .line 341
    goto :goto_18

    .line 342
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    :goto_18
    add-int/2addr v0, v2

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    .line 348
    .line 349
    iget-object v2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 350
    .line 351
    if-nez v2, :cond_19

    .line 352
    .line 353
    goto :goto_19

    .line 354
    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    :goto_19
    add-int/2addr v0, v1

    .line 359
    return v0
.end method

.method public final isSub()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHighlights(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLeague(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLeagueId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLeagueType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLiveDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLiveRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLiveType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMatchResult(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMatchRound(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaySource(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setReplay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/push/bean/PlaySourceMatchMatch;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSeason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartTimeTbd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusLive(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSub(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTeam1(Lcom/transsion/push/bean/TeamInfoMatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 2
    .line 3
    return-void
.end method

.method public final setTeam2(Lcom/transsion/push/bean/TeamInfoMatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 2
    .line 3
    return-void
.end method

.method public final setTeamMatchInfo1(Lcom/transsion/push/bean/TeamMatchInfoMatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 2
    .line 3
    return-void
.end method

.method public final setTeamMatchInfo2(Lcom/transsion/push/bean/TeamMatchInfoMatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 60
    .line 61
    move/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-boolean v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 76
    .line 77
    move/from16 v27, v15

    .line 78
    .line 79
    iget-boolean v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 80
    .line 81
    move/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    move-object/from16 v30, v15

    .line 95
    .line 96
    const-string v15, "ServerMatchListItemData(id="

    .line 97
    .line 98
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", team1="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", team2="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", status="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", playType="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", playPath="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", startTime="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", endTime="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", type="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", timeDesc="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", playSource="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", statusLive="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", league="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", liveDeviceId="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", teamMatchInfo1="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-object/from16 v1, v16

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, ", teamMatchInfo2="

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    move-object/from16 v1, v17

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ", matchResult="

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    move-object/from16 v1, v18

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v1, ", matchRound="

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-object/from16 v1, v19

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, ", replay="

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    move-object/from16 v1, v20

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, ", highlights="

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    move-object/from16 v1, v21

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v1, ", extCountryCode="

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-object/from16 v1, v22

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, ", score="

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    move/from16 v1, v23

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ", liveType="

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    move-object/from16 v1, v24

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, ", liveRegion="

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move-object/from16 v1, v25

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, ", leagueId="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    move-object/from16 v1, v26

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, ", isSub="

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    move/from16 v1, v27

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, ", startTimeTbd="

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    move/from16 v1, v28

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, ", leagueType="

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    move-object/from16 v1, v29

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v1, ", season="

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    move-object/from16 v1, v30

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v1, ")"

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->id:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team1:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/bean/TeamInfoMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->team2:Lcom/transsion/push/bean/TeamInfoMatch;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/bean/TeamInfoMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->status:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playType:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playPath:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTime:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->endTime:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->type:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->timeDesc:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->playSource:Ljava/util/List;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Lcom/transsion/push/bean/PlaySourceMatchMatch;

    .line 109
    .line 110
    invoke-virtual {v3, p1, p2}, Lcom/transsion/push/bean/PlaySourceMatchMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->statusLive:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->league:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveDeviceId:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo1:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/bean/TeamMatchInfoMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    .line 142
    .line 143
    :goto_4
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->teamMatchInfo2:Lcom/transsion/push/bean/TeamMatchInfoMatch;

    .line 144
    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/bean/TeamMatchInfoMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    .line 156
    .line 157
    :goto_5
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchResult:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->matchRound:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->replay:Ljava/util/List;

    .line 168
    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/transsion/push/bean/PlaySourceMatchMatch;

    .line 200
    .line 201
    invoke-virtual {v3, p1, p2}, Lcom/transsion/push/bean/PlaySourceMatchMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->highlights:Ljava/util/List;

    .line 206
    .line 207
    if-nez v0, :cond_8

    .line 208
    .line 209
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_9

    .line 213
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lcom/transsion/push/bean/PlaySourceMatchMatch;

    .line 238
    .line 239
    invoke-virtual {v1, p1, p2}, Lcom/transsion/push/bean/PlaySourceMatchMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_9
    :goto_9
    iget-object p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->extCountryCode:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->score:I

    .line 249
    .line 250
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    .line 252
    .line 253
    iget-object p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveType:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->liveRegion:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueId:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-boolean p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->isSub:Z

    .line 269
    .line 270
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    .line 272
    .line 273
    iget-boolean p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->startTimeTbd:Z

    .line 274
    .line 275
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    .line 277
    .line 278
    iget-object p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->leagueType:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object p2, p0, Lcom/transsion/push/bean/ServerMatchListItemData;->season:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void
.end method
