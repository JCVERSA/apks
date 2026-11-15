.class public final Lcom/transsion/lib_web/zip/loader/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/lib_web/zip/loader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/lib_web/zip/loader/c$a;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/lib_web/zip/loader/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/lib_web/zip/loader/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->a:Lcom/transsion/lib_web/zip/loader/c$a;

    .line 7
    .line 8
    new-instance v0, Lkotlin/Pair;

    .line 9
    .line 10
    const-string v1, "Access-Control-Allow-Origin"

    .line 11
    .line 12
    const-string v2, "*"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lkotlin/Pair;

    .line 18
    .line 19
    const-string v3, "Access-Control-Allow-Credentials"

    .line 20
    .line 21
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [Lkotlin/Pair;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v0, v2, v3

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput-object v1, v2, v0

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->b:Ljava/util/HashMap;

    .line 38
    .line 39
    const-string v0, "versionCode"

    .line 40
    .line 41
    sput-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->c:Ljava/lang/String;

    .line 42
    .line 43
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
.method public final a()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method
