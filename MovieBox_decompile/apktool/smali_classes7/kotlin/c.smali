.class final Lkotlin/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lkotlin/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/c;->a:Lkotlin/c;

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

.method public static final a()Lkotlin/KotlinVersion;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/KotlinVersion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x15

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v3, v1, v2}, Lkotlin/KotlinVersion;-><init>(III)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
