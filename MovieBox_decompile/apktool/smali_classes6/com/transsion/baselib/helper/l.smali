.class public final Lcom/transsion/baselib/helper/l;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/helper/l$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/baselib/helper/l$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/helper/l$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baselib/helper/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baselib/helper/l;->b:Lcom/transsion/baselib/helper/l$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/baselib/helper/k;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/baselib/helper/k;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/baselib/helper/l;->c:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/baselib/helper/l;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()Lcom/transsion/baselib/helper/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/baselib/helper/l;->c()Lcom/transsion/baselib/helper/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/helper/l;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final c()Lcom/transsion/baselib/helper/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/helper/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/helper/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "userPrefer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/helper/l;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
