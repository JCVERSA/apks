.class public Lorg/apache/tools/ant/types/i$b;
.super Lorg/apache/tools/ant/types/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;

.field public static final d:Lorg/apache/tools/ant/types/i$b;

.field public static final e:Lorg/apache/tools/ant/types/i$b;

.field public static final f:Lorg/apache/tools/ant/types/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "fail"

    .line 2
    .line 3
    const-string v1, "warn"

    .line 4
    .line 5
    const-string v2, "ignore"

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sput-object v3, Lorg/apache/tools/ant/types/i$b;->c:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v3, Lorg/apache/tools/ant/types/i$b;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Lorg/apache/tools/ant/types/i$b;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v3, Lorg/apache/tools/ant/types/i$b;->d:Lorg/apache/tools/ant/types/i$b;

    .line 19
    .line 20
    new-instance v0, Lorg/apache/tools/ant/types/i$b;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/i$b;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/apache/tools/ant/types/i$b;->e:Lorg/apache/tools/ant/types/i$b;

    .line 26
    .line 27
    new-instance v0, Lorg/apache/tools/ant/types/i$b;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/i$b;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lorg/apache/tools/ant/types/i$b;->f:Lorg/apache/tools/ant/types/i$b;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/f;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/f;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/types/i$b;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
