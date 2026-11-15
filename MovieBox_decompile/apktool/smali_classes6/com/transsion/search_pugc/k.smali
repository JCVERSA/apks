.class public final Lcom/transsion/search_pugc/k;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/k$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/search_pugc/k;

.field private static final b:Lkotlinx/coroutines/flow/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/search_pugc/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/search_pugc/k;->a:Lcom/transsion/search_pugc/k;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x6

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v2, v0, v1, v0}, Lkotlinx/coroutines/flow/c1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/w0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/transsion/search_pugc/k;->b:Lkotlinx/coroutines/flow/w0;

    .line 16
    .line 17
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
.method public final a()Lkotlinx/coroutines/flow/w0;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/k;->b:Lkotlinx/coroutines/flow/w0;

    .line 2
    .line 3
    return-object v0
.end method
