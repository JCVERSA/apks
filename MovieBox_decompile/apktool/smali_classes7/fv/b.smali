.class public final Lfv/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfv/b$a;
    }
.end annotation


# static fields
.field public static final a:Lfv/b$a;

.field private static b:Ljava/text/DateFormat;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfv/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfv/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfv/b;->a:Lfv/b$a;

    .line 8
    .line 9
    sget v0, Lcom/transsion/usercenter/R$string;->minute_ago:I

    .line 10
    .line 11
    sput v0, Lfv/b;->c:I

    .line 12
    .line 13
    sget v0, Lcom/transsion/usercenter/R$string;->hour_ago:I

    .line 14
    .line 15
    sput v0, Lfv/b;->d:I

    .line 16
    .line 17
    sget v0, Lcom/transsion/usercenter/R$string;->just_now:I

    .line 18
    .line 19
    sput v0, Lfv/b;->e:I

    .line 20
    .line 21
    sget v0, Lcom/transsion/usercenter/R$string;->day_ago:I

    .line 22
    .line 23
    sput v0, Lfv/b;->f:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Ljava/text/DateFormat;
    .locals 1

    .line 1
    sget-object v0, Lfv/b;->b:Ljava/text/DateFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Lfv/b;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lfv/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Lfv/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic e(Ljava/text/DateFormat;)V
    .locals 0

    .line 1
    sput-object p0, Lfv/b;->b:Ljava/text/DateFormat;

    .line 2
    .line 3
    return-void
.end method
