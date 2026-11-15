.class public final Lcom/transsion/shorttv/ui/adapter/q;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ/\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J+\u0010\u001b\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u001f\u0010\"\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0011\u0010(\u001a\u0004\u0018\u00010\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008,\u0010+J\u001f\u0010-\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008-\u0010.J7\u00102\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00082\u00103JK\u00106\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000604j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`52\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00086\u00107J\u0015\u00109\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u000208\u00a2\u0006\u0004\u00089\u0010:J\u001f\u0010;\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008;\u0010<R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010D\u00a8\u0006F"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/adapter/q;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv/bean/AppointSubject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "",
        "pageName",
        "<init>",
        "(ILjava/lang/String;)V",
        "Lcom/transsion/shorttv/bean/Subject;",
        "item",
        "",
        "R1",
        "(Lcom/transsion/shorttv/bean/Subject;)V",
        "",
        "hasAdded",
        "holder",
        "position",
        "S1",
        "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;I)V",
        "isAdd",
        "V1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V",
        "Lkotlin/Function0;",
        "success",
        "error",
        "I1",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "G1",
        "(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "M1",
        "Landroid/widget/TextView;",
        "textView",
        "L1",
        "(Landroid/widget/TextView;Lcom/transsion/shorttv/bean/AppointSubject;)V",
        "id",
        "a2",
        "(I)V",
        "",
        "P1",
        "()Ljava/lang/Long;",
        "O1",
        "(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;",
        "N1",
        "H1",
        "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "isBrowse",
        "eventType",
        "added",
        "Y1",
        "(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Q1",
        "(Lcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;",
        "Lcom/transsion/shorttv/bean/OperateItem;",
        "Z1",
        "(Lcom/transsion/shorttv/bean/OperateItem;)V",
        "J1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;)V",
        "F",
        "Ljava/lang/String;",
        "Lcom/tencent/mmkv/MMKV;",
        "G",
        "Lcom/tencent/mmkv/MMKV;",
        "appointMMKV",
        "H",
        "Lcom/transsion/shorttv/bean/OperateItem;",
        "operateItem",
        "shortTvLib_release"
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
.field private final F:Ljava/lang/String;

.field private final G:Lcom/tencent/mmkv/MMKV;

.field private H:Lcom/transsion/shorttv/bean/OperateItem;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "pageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/q;->F:Ljava/lang/String;

    .line 5
    const-string p1, "kv_app_home_appointment"

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "mmkvWithID(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget p1, Lcom/transsion/shorttv/R$layout;->short_tv_op_appointment_item:I

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/shorttv/ui/adapter/q;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/adapter/q;->X1(Lcom/transsion/shorttv/ui/adapter/q;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/shorttv/ui/adapter/q;->T1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/q;->W1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/ui/adapter/q;->K1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/shorttv/ui/adapter/q;->U1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string v2, "yyyy-MM-dd"

    .line 5
    .line 6
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/AppointSubject;->getAppointmentDate()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    move-object v1, v0

    .line 31
    :goto_2
    if-nez v1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    .line 40
    .line 41
    const/16 v3, 0x12

    .line 42
    .line 43
    const/16 v4, 0xb

    .line 44
    .line 45
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x13

    .line 60
    .line 61
    invoke-virtual {v5, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/adapter/q;->P1()Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v6, Landroid/content/ContentValues;

    .line 73
    .line 74
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "dtstart"

    .line 82
    .line 83
    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "dtend"

    .line 91
    .line 92
    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "title"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->O1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v2, "description"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->N1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "calendar_id"

    .line 114
    .line 115
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "eventTimezone"

    .line 127
    .line 128
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v3, "hasAlarm"

    .line 137
    .line 138
    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    .line 140
    .line 141
    :try_start_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 150
    .line 151
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :catchall_0
    if-eqz v0, :cond_2

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-eqz v2, :cond_2

    .line 162
    .line 163
    new-instance v3, Landroid/content/ContentValues;

    .line 164
    .line 165
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .line 167
    .line 168
    const/4 v4, 0x0

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    const-string v5, "minutes"

    .line 174
    .line 175
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    .line 177
    .line 178
    const-string v4, "event_id"

    .line 179
    .line 180
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const-string v4, "method"

    .line 188
    .line 189
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    .line 191
    .line 192
    :try_start_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 201
    .line 202
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catchall_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_3

    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    goto :goto_4

    .line 221
    :cond_3
    const-wide/16 v2, -0x1

    .line 222
    .line 223
    :goto_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v0, v4, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    .line 231
    .line 232
    invoke-direct {p0, v1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 233
    .line 234
    .line 235
    sget p2, Lcom/transsion/shorttv/R$string;->short_tv_appointment_add_success:I

    .line 236
    .line 237
    invoke-direct {p0, p2}, Lcom/transsion/shorttv/ui/adapter/q;->a2(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {p2, p1}, Lhr/c;->c(Ljava/util/List;Ljava/lang/Object;)I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    const-string v4, "click_appointment_alert_success"

    .line 249
    .line 250
    const/4 v5, 0x1

    .line 251
    const/4 v1, 0x0

    .line 252
    move-object v0, p0

    .line 253
    move-object v2, p1

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method private final H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_unchecked:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_checked:I

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lcr/b;->c(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcr/b;->e(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcr/b;->c(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private final I1(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 2
    .line 3
    const-string v1, "android.permission.READ_CALENDAR"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/transsion/shorttv/ui/adapter/q$a;

    .line 24
    .line 25
    invoke-direct {v1, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q$a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final K1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->R1(Lcom/transsion/shorttv/bean/Subject;)V

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v4, "click_appointment_poster"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final L1(Landroid/widget/TextView;Lcom/transsion/shorttv/bean/AppointSubject;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v3, "MMM d"

    .line 13
    .line 14
    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/AppointSubject;->getAppointmentDate()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-static {p1}, Lcr/b;->c(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcr/b;->c(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    return-void
.end method

.method private final M1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "withAppendedId(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 68
    .line 69
    .line 70
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_appointment_delete_success:I

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->a2(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private final N1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sget-object v3, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_movie_alert_description:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p1, v1, v0

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_series_alert_description:I

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v1, v0

    .line 57
    .line 58
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-object p1
.end method

.method private final O1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sget-object v3, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_movie_alert_title:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p1, v1, v0

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_episode_alert_title:I

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v1, v0

    .line 57
    .line 58
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-object p1
.end method

.method private final P1()Ljava/lang/Long;
    .locals 8

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    const-string v1, "calendar_displayName"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const-string v5, "visible = 1 AND sync_events = 1"

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const/4 v6, 0x1

    .line 44
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v6}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    move-wide v2, v4

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-wide/16 v6, 0x0

    .line 59
    .line 60
    cmp-long v4, v2, v6

    .line 61
    .line 62
    if-lez v4, :cond_2

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :cond_3
    :try_start_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    .line 92
    :try_start_6
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 97
    :catchall_1
    move-exception v3

    .line 98
    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    :catchall_2
    :cond_4
    :goto_2
    return-object v0
.end method

.method private final Q1(Lcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/bean/AppointSubject;",
            "I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    move-object p3, v1

    .line 20
    :cond_0
    const-string v2, "subject_id"

    .line 21
    .line 22
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    :cond_1
    move-object p3, v1

    .line 38
    :cond_2
    const-string v2, "subject_type"

    .line 39
    .line 40
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string p3, "sequence"

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/AppointSubject;->getAppointmentDate()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    move-object p2, v1

    .line 59
    :cond_3
    const-string p3, "appointment_date"

    .line 60
    .line 61
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move-object v1, p2

    .line 72
    :goto_0
    const-string p2, "ops"

    .line 73
    .line 74
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string p2, "added"

    .line 78
    .line 79
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/transsion/shorttv/utils/i;->c(Lcom/transsion/shorttv/bean/Subject;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/transsion/shorttv/ui/adapter/q;->H:Lcom/transsion/shorttv/bean/OperateItem;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/transsion/shorttv/utils/i;->a(Lcom/transsion/shorttv/bean/OperateItem;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    sget-object p1, Lor/b;->a:Lor/b;

    .line 97
    .line 98
    invoke-virtual {p1}, Lor/b;->a()Lor/a;

    .line 99
    .line 100
    .line 101
    return-object v0
.end method

.method private final R1(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 3

    .line 1
    const-string v0, "/shorts/detail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    const-string v2, "subject_type"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "id"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "without_intercept"

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x2

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final S1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;I)V
    .locals 10

    .line 1
    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_checked:I

    .line 18
    .line 19
    add-int v8, v0, p4

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v9, Lcom/transsion/shorttv/ui/adapter/o;

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    move v2, v8

    .line 29
    move-object v3, p0

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move v6, p4

    .line 33
    move v7, p1

    .line 34
    invoke-direct/range {v1 .. v7}, Lcom/transsion/shorttv/ui/adapter/o;-><init>(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_unchecked:I

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v9, Lcom/transsion/shorttv/ui/adapter/p;

    .line 47
    .line 48
    move-object v1, v9

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/transsion/shorttv/ui/adapter/p;-><init>(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method private static final T1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 6

    .line 1
    sget-object p6, Lhr/d;->a:Lhr/d;

    .line 2
    .line 3
    const-wide/16 v0, 0x7d0

    .line 4
    .line 5
    invoke-virtual {p6, p0, v0, v1}, Lhr/d;->a(IJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/shorttv/ui/adapter/q;->V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v4, "click_appointment_cancel"

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    move-object v2, p3

    .line 21
    move v3, p4

    .line 22
    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final U1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 6

    .line 1
    sget-object p6, Lhr/d;->a:Lhr/d;

    .line 2
    .line 3
    const-wide/16 v0, 0x7d0

    .line 4
    .line 5
    invoke-virtual {p6, p0, v0, v1}, Lhr/d;->a(IJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/shorttv/ui/adapter/q;->V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v4, "click_appointment_add"

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    move-object v2, p3

    .line 21
    move v3, p4

    .line 22
    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/adapter/l;

    .line 2
    .line 3
    invoke-direct {v0, p3, p0, p2, p1}, Lcom/transsion/shorttv/ui/adapter/l;-><init>(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/shorttv/ui/adapter/m;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/adapter/m;-><init>(Lcom/transsion/shorttv/ui/adapter/q;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->I1(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final W1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/q;->G1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/q;->M1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final X1(Lcom/transsion/shorttv/ui/adapter/q;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_no_calender_permission:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/adapter/q;->a2(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/shorttv/ui/adapter/q;->Q1(Lcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/transsion/shorttv/ui/adapter/q;->F:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p3, p2}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/shorttv/ui/adapter/q;->F:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p3, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private final a2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv/bean/AppointSubject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->J1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected J1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;)V
    .locals 25

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const-string v1, "holder"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "item"

    .line 13
    .line 14
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_corner:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/TextView;

    .line 24
    .line 25
    sget v2, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_image:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v5, v2

    .line 32
    check-cast v5, Landroid/widget/ImageView;

    .line 33
    .line 34
    sget v2, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_item_title:I

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    sget v3, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_booked:I

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/widget/TextView;

    .line 49
    .line 50
    sget v4, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_booked_layout:I

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget v8, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_booked_hot:I

    .line 57
    .line 58
    invoke-virtual {v0, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v24

    .line 62
    invoke-direct {v6, v1, v7}, Lcom/transsion/shorttv/ui/adapter/q;->L1(Landroid/widget/TextView;Lcom/transsion/shorttv/bean/AppointSubject;)V

    .line 63
    .line 64
    .line 65
    sget-object v8, Ler/b;->a:Ler/b$a;

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v10, ""

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move-object v11, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    move-object v11, v10

    .line 89
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_2

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move-object v15, v1

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    :goto_2
    move-object v15, v10

    .line 105
    :goto_3
    const/16 v22, 0x1fb8

    .line 106
    .line 107
    const/16 v23, 0x0

    .line 108
    .line 109
    const/4 v12, 0x0

    .line 110
    const/4 v13, 0x0

    .line 111
    const/4 v14, 0x0

    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    const/16 v18, 0x0

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    const/16 v20, 0x0

    .line 121
    .line 122
    const/16 v21, 0x0

    .line 123
    .line 124
    move-object v10, v5

    .line 125
    invoke-static/range {v8 .. v23}, Ler/b$a;->m(Ler/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getAppointmentCnt()Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-wide/16 v8, 0x0

    .line 140
    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    goto :goto_4

    .line 148
    :cond_4
    move-wide v1, v8

    .line 149
    :goto_4
    cmp-long v1, v1, v8

    .line 150
    .line 151
    if-lez v1, :cond_8

    .line 152
    .line 153
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 154
    .line 155
    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getAppointmentCnt()Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_5

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move-wide v10, v8

    .line 171
    :goto_5
    invoke-virtual {v1, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, " booked"

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v4}, Lcr/b;->e(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getAppointmentCnt()Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_6

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v8

    .line 208
    :cond_6
    const-wide/16 v1, 0x2710

    .line 209
    .line 210
    cmp-long v1, v8, v1

    .line 211
    .line 212
    if-lez v1, :cond_7

    .line 213
    .line 214
    invoke-static/range {v24 .. v24}, Lcr/b;->e(Landroid/view/View;)V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_7
    invoke-static/range {v24 .. v24}, Lcr/b;->b(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    invoke-static {v4}, Lcr/b;->c(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    :goto_6
    iget-object v1, v6, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    .line 226
    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const-wide/16 v3, -0x1

    .line 232
    .line 233
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    cmp-long v1, v1, v3

    .line 238
    .line 239
    if-lez v1, :cond_9

    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    :goto_7
    move v8, v1

    .line 243
    goto :goto_8

    .line 244
    :cond_9
    const/4 v1, 0x0

    .line 245
    goto :goto_7

    .line 246
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1, v7}, Lhr/c;->c(Ljava/util/List;Ljava/lang/Object;)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    invoke-direct {v6, v8, v0, v7, v9}, Lcom/transsion/shorttv/ui/adapter/q;->S1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;I)V

    .line 255
    .line 256
    .line 257
    const/4 v1, 0x1

    .line 258
    const-string v4, "browse_appointment"

    .line 259
    .line 260
    move-object/from16 v0, p0

    .line 261
    .line 262
    move-object/from16 v2, p2

    .line 263
    .line 264
    move v3, v9

    .line 265
    move-object v10, v5

    .line 266
    move v5, v8

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Lcom/transsion/shorttv/ui/adapter/n;

    .line 271
    .line 272
    invoke-direct {v0, v6, v7, v9, v8}, Lcom/transsion/shorttv/ui/adapter/n;-><init>(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method public final Z1(Lcom/transsion/shorttv/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/q;->H:Lcom/transsion/shorttv/bean/OperateItem;

    .line 7
    .line 8
    return-void
.end method
