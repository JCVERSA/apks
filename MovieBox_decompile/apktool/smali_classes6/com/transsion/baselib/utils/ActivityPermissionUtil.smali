.class public final Lcom/transsion/baselib/utils/ActivityPermissionUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baselib/utils/ActivityPermissionUtil;

.field private static b:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->a:Lcom/transsion/baselib/utils/ActivityPermissionUtil;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->e(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final e(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->b:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->d(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lij/a;

    .line 12
    .line 13
    invoke-direct {v0, p4}, Lij/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->b:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    sget-object p4, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;->Companion:Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;

    .line 19
    .line 20
    invoke-virtual {p4, p1, p2, p3}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
