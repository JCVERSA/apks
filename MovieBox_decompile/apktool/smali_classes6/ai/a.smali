.class public final Lai/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lai/a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/a;->a:Lai/a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lai/a;->b:Z

    .line 10
    .line 11
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
.method public final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/a;->b:Z

    .line 2
    .line 3
    return v0
.end method
