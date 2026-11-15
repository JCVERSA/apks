.class public final Lcom/transsion/baselib/report/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/baselib/report/a;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/report/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/report/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 7
    .line 8
    const-string v0, "ORSubtitle"

    .line 9
    .line 10
    sput-object v0, Lcom/transsion/baselib/report/a;->b:Ljava/lang/String;

    .line 11
    .line 12
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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
