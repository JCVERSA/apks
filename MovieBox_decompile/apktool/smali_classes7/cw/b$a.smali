.class public final Lcw/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcw/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcw/b$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcw/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcw/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcw/b$a;->a:Lcw/b$a;

    .line 7
    .line 8
    const-string v0, "pip_permission_dialog"

    .line 9
    .line 10
    sput-object v0, Lcw/b$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "key_video_float_permission"

    .line 13
    .line 14
    sput-object v0, Lcw/b$a;->c:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lcw/a;

    .line 17
    .line 18
    invoke-direct {v0}, Lcw/a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcw/b$a;->d:Lkotlin/Lazy;

    .line 26
    .line 27
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

.method public static synthetic a()Lcom/transsion/videofloat/manager/i;
    .locals 1

    .line 1
    invoke-static {}, Lcw/b$a;->e()Lcom/transsion/videofloat/manager/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final e()Lcom/transsion/videofloat/manager/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/videofloat/manager/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/videofloat/manager/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcw/b$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcw/b;
    .locals 1

    .line 1
    sget-object v0, Lcw/b$a;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcw/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcw/b$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
