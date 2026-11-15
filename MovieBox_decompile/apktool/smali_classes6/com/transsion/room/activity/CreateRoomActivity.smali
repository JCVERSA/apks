.class public final Lcom/transsion/room/activity/CreateRoomActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/activity/CreateRoomActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lfp/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 M2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\u001d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0016\u0010%\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001d\u00100\u001a\u0004\u0018\u00010+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u001b\u00105\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010-\u001a\u0004\u00083\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010:\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00107R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u00107R$\u0010H\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u00107\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010\nR$\u0010L\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u00107\u001a\u0004\u0008J\u0010F\"\u0004\u0008K\u0010\n\u00a8\u0006N"
    }
    d2 = {
        "Lcom/transsion/room/activity/CreateRoomActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lfp/a;",
        "<init>",
        "()V",
        "",
        "u0",
        "",
        "groupId",
        "t0",
        "(Ljava/lang/String;)V",
        "initView",
        "n0",
        "path",
        "C0",
        "p0",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "s0",
        "()Lfp/a;",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "",
        "a",
        "I",
        "TITLE_MAX",
        "b",
        "DESC_MAX",
        "c",
        "Z",
        "nameExist",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "d",
        "Landroidx/activity/result/b;",
        "photoLaunch",
        "Ljo/a;",
        "e",
        "Lkotlin/Lazy;",
        "q0",
        "()Ljo/a;",
        "publishApi",
        "Lcom/transsion/room/viewmodel/d;",
        "f",
        "r0",
        "()Lcom/transsion/room/viewmodel/d;",
        "roomCreateModel",
        "g",
        "Ljava/lang/String;",
        "avatorUrl",
        "h",
        "bucket",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "i",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "roomItem",
        "j",
        "Ljava/lang/Boolean;",
        "FROM_EDIT",
        "k",
        "currentGroupId",
        "l",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "name",
        "m",
        "getDesc",
        "setDesc",
        "desc",
        "n",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final n:Lcom/transsion/room/activity/CreateRoomActivity$a;

.field private static final o:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Landroidx/activity/result/b;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/moviedetailapi/bean/RoomItem;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/activity/CreateRoomActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/activity/CreateRoomActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/activity/CreateRoomActivity;->n:Lcom/transsion/room/activity/CreateRoomActivity$a;

    .line 8
    .line 9
    const-string v0, "field_from"

    .line 10
    .line 11
    sput-object v0, Lcom/transsion/room/activity/CreateRoomActivity;->o:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x32

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->a:I

    .line 7
    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    iput v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->b:I

    .line 11
    .line 12
    new-instance v0, Ldp/a;

    .line 13
    .line 14
    invoke-direct {v0}, Ldp/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->e:Lkotlin/Lazy;

    .line 22
    .line 23
    new-instance v0, Ldp/b;

    .line 24
    .line 25
    invoke-direct {v0}, Ldp/b;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->f:Lkotlin/Lazy;

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    iput-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->g:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->h:Ljava/lang/String;

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->j:Ljava/lang/Boolean;

    .line 43
    .line 44
    return-void
.end method

.method private static final A0()Ljo/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Ljo/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljo/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final B0()Lcom/transsion/room/viewmodel/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/room/viewmodel/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/room/viewmodel/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final C0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/transsion/room/R$drawable;->ic_avatar_default:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lni/f$b;->i(I)Lni/f$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/high16 v1, 0x42c00000    # 96.0f

    .line 18
    .line 19
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lfp/a;

    .line 40
    .line 41
    iget-object v1, v1, Lfp/a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 42
    .line 43
    const-string v2, "ivAvatar"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Luu/c;->a:Luu/c;

    .line 52
    .line 53
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 54
    .line 55
    new-instance v2, Lcom/transsion/room/activity/CreateRoomActivity$e;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/transsion/room/activity/CreateRoomActivity$e;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-virtual {v0, p1, v1, v3, v2}, Luu/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/room/activity/CreateRoomActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->z0(Lcom/transsion/room/activity/CreateRoomActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/room/bean/CheckNameBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->w0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/room/bean/CheckNameBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0()Ljo/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/activity/CreateRoomActivity;->A0()Ljo/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e0(Lcom/transsion/room/activity/CreateRoomActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->x0(Lcom/transsion/room/activity/CreateRoomActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/room/activity/CreateRoomActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->o0(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->v0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/room/activity/CreateRoomActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->y0(Lcom/transsion/room/activity/CreateRoomActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0()Lcom/transsion/room/viewmodel/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/activity/CreateRoomActivity;->B0()Lcom/transsion/room/viewmodel/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final initView()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v4, "field_key"

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v3

    .line 24
    :goto_0
    iput-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v3

    .line 34
    :goto_1
    iput-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->k:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 47
    .line 48
    invoke-virtual {v4, p0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget v5, Lcom/transsion/room/R$drawable;->ic_avatar_default:I

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lni/f$b;->i(I)Lni/f$b;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/high16 v5, 0x42c00000    # 96.0f

    .line 63
    .line 64
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {v4, v6}, Lni/f$b;->m(I)Lni/f$b;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v4, v5}, Lni/f$b;->c(I)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lfp/a;

    .line 85
    .line 86
    iget-object v5, v5, Lfp/a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 87
    .line 88
    const-string v6, "ivAvatar"

    .line 89
    .line 90
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->g:Ljava/lang/String;

    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lfp/a;

    .line 103
    .line 104
    iget-object v2, v2, Lfp/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 107
    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object v4, v3

    .line 116
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lfp/a;

    .line 124
    .line 125
    iget-object v2, v2, Lfp/a;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 126
    .line 127
    iget-object v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getDescription()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    iput-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->j:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lfp/a;

    .line 151
    .line 152
    iget-object v2, v2, Lfp/a;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 155
    .line 156
    .line 157
    :cond_5
    new-instance v2, Lf/j;

    .line 158
    .line 159
    invoke-direct {v2}, Lf/j;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v3, Ldp/e;

    .line 163
    .line 164
    invoke-direct {v3, p0}, Ldp/e;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2, v3}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, p0, Lcom/transsion/room/activity/CreateRoomActivity;->d:Landroidx/activity/result/b;

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lfp/a;

    .line 178
    .line 179
    iget-object v2, v2, Lfp/a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 180
    .line 181
    new-instance v3, Ldp/f;

    .line 182
    .line 183
    invoke-direct {v3, p0}, Ldp/f;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Lfp/a;

    .line 194
    .line 195
    iget-object v2, v2, Lfp/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 196
    .line 197
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 198
    .line 199
    iget v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->a:I

    .line 200
    .line 201
    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 202
    .line 203
    .line 204
    new-array v4, v1, [Landroid/text/InputFilter;

    .line 205
    .line 206
    aput-object v3, v4, v0

    .line 207
    .line 208
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lfp/a;

    .line 216
    .line 217
    iget-object v2, v2, Lfp/a;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 218
    .line 219
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 220
    .line 221
    iget v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->b:I

    .line 222
    .line 223
    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 224
    .line 225
    .line 226
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 227
    .line 228
    aput-object v3, v1, v0

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lfp/a;

    .line 238
    .line 239
    iget-object v0, v0, Lfp/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 240
    .line 241
    new-instance v1, Lcom/transsion/room/activity/CreateRoomActivity$b;

    .line 242
    .line 243
    invoke-direct {v1, p0}, Lcom/transsion/room/activity/CreateRoomActivity$b;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lfp/a;

    .line 254
    .line 255
    iget-object v0, v0, Lfp/a;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 256
    .line 257
    new-instance v1, Lcom/transsion/room/activity/CreateRoomActivity$c;

    .line 258
    .line 259
    invoke-direct {v1, p0}, Lcom/transsion/room/activity/CreateRoomActivity$c;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Lfp/a;

    .line 270
    .line 271
    iget-object v0, v0, Lfp/a;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 272
    .line 273
    new-instance v1, Ldp/g;

    .line 274
    .line 275
    invoke-direct {v1, p0}, Ldp/g;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public static final synthetic j0(Lcom/transsion/room/activity/CreateRoomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k0(Lcom/transsion/room/activity/CreateRoomActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic l0(Lcom/transsion/room/activity/CreateRoomActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m0(Lcom/transsion/room/activity/CreateRoomActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final n0()V
    .locals 1

    .line 1
    new-instance v0, Ldp/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldp/h;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final o0(Lcom/transsion/room/activity/CreateRoomActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfp/a;

    .line 6
    .line 7
    iget-object v0, v0, Lfp/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->g:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lfp/a;

    .line 44
    .line 45
    iget-object v1, v1, Lfp/a;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->a:I

    .line 52
    .line 53
    if-lt v0, v1, :cond_1

    .line 54
    .line 55
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 56
    .line 57
    sget v1, Lcom/transsion/room/R$string;->str_community_title_limit:I

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lfp/a;

    .line 72
    .line 73
    iget-object p0, p0, Lfp/a;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final p0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->j:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->i:Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    move-object v3, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iput-object v3, p0, Lcom/transsion/room/activity/CreateRoomActivity;->k:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->l:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v4, :cond_4

    .line 30
    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->r0()Lcom/transsion/room/viewmodel/d;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->g:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->m:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    move-object v6, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    move-object v6, v0

    .line 50
    :goto_2
    iget-object v7, p0, Lcom/transsion/room/activity/CreateRoomActivity;->h:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/room/viewmodel/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->l:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->r0()Lcom/transsion/room/viewmodel/d;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/transsion/room/activity/CreateRoomActivity;->g:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->m:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move-object v1, v4

    .line 76
    :goto_3
    iget-object v4, p0, Lcom/transsion/room/activity/CreateRoomActivity;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/transsion/room/viewmodel/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_4
    return-void
.end method

.method private final q0()Ljo/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljo/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r0()Lcom/transsion/room/viewmodel/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/room/viewmodel/d;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/room/detail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final u0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->r0()Lcom/transsion/room/viewmodel/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/room/viewmodel/d;->j()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ldp/c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ldp/c;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/room/activity/CreateRoomActivity$d;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/room/activity/CreateRoomActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->r0()Lcom/transsion/room/viewmodel/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/room/viewmodel/d;->h()Landroidx/lifecycle/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ldp/d;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Ldp/d;-><init>(Lcom/transsion/room/activity/CreateRoomActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/transsion/room/activity/CreateRoomActivity$d;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lcom/transsion/room/activity/CreateRoomActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final v0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomNet;->getGroupId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "update"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomNet;->getGroupId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->t0(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private static final w0(Lcom/transsion/room/activity/CreateRoomActivity;Lcom/transsion/room/bean/CheckNameBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/room/bean/CheckNameBean;->isExist()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/room/bean/CheckNameBean;->getGroupId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 24
    .line 25
    sget v0, Lcom/transsion/room/R$string;->str_rooms_duplicate:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->p0()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final x0(Lcom/transsion/room/activity/CreateRoomActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x7d0

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lfp/a;

    .line 21
    .line 22
    iget-object p1, p1, Lfp/a;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lfp/a;

    .line 35
    .line 36
    iget-object p1, p1, Lfp/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object p1, v0

    .line 51
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->l:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lfp/a;

    .line 62
    .line 63
    iget-object p1, p1, Lfp/a;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->m:Ljava/lang/String;

    .line 80
    .line 81
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 82
    .line 83
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/transsion/room/activity/CreateRoomActivity;->l:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->r0()Lcom/transsion/room/viewmodel/d;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, p1}, Lcom/transsion/room/viewmodel/d;->e(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 102
    .line 103
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    return-void
.end method

.method private static final y0(Lcom/transsion/room/activity/CreateRoomActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 12

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "clip_result"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "result:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x4

    .line 47
    const/4 v5, 0x0

    .line 48
    const-string v1, "photoLaunch"

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/room/activity/CreateRoomActivity;->C0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 61
    .line 62
    const/4 v10, 0x4

    .line 63
    const/4 v11, 0x0

    .line 64
    const-string v7, "photoLaunch"

    .line 65
    .line 66
    const-string v8, "fail"

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    return-void
.end method

.method private static final z0(Lcom/transsion/room/activity/CreateRoomActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->q0()Ljo/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljo/a;->h(Landroid/content/Context;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/transsion/room/activity/CreateRoomActivity;->d:Landroidx/activity/result/b;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->s0()Lfp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    sget-object v0, Lij/y;->a:Lij/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "createaroom"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lfp/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lfp/a;->b()Landroidx/core/widget/NestedScrollView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Luf/c;->e(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->initView()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/room/activity/CreateRoomActivity;->u0()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public s0()Lfp/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lfp/a;->c(Landroid/view/LayoutInflater;)Lfp/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
