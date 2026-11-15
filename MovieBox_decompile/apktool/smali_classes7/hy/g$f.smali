.class Lhy/g$f;
.super Lhy/g$e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/g$f;->b:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x20c7e4
        0x20c7e6
        0x20c8c7
        0x20d9e4
        0x20e1ea
        0x20e4e4
        0x20e5e6
        0x20e8c7
        0xc720c7
        0xc7c120
        0xc7ca20
        0xc7d120
        0xc7e420
        0xc7e4c3
        0xc7e4c7
        0xc7e4c8
        0xc7e4ca
        0xc7e4cc
        0xc7e4cd
        0xc7e4cf
        0xc7e4d3
        0xc7e4d9
        0xc7e4e2
        0xc7e4e5
        0xc7e4e8
        0xc7e4ea
        0xc7e520
        0xc7e620
        0xc7e6ca
        0xc820c7
        0xc920c7
        0xc920e1
        0xc920e4
        0xc920e5
        0xc920e8
        0xca20c7
        0xcf20c7
        0xcfc920
        0xd120c7
        0xd1c920
        0xd320c7
        0xd920c7
        0xd9e4e9
        0xe1ea20
        0xe420c7
        0xe4c920
        0xe4e920
        0xe4ea20
        0xe520c7
        0xe5c720
        0xe5c920
        0xe5e620
        0xe620c7
        0xe720c7
        0xe7c720
        0xe8c7e4
        0xe8e620
        0xe920c7
        0xea20c7
        0xea20e5
        0xea20e8
        0xeac920
        0xead120
        0xeae620
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/g$e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ar"

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lhy/a;)Lhy/b;
    .locals 2

    .line 1
    sget-object v0, Lhy/g$f;->b:[I

    .line 2
    .line 3
    sget-object v1, Lhy/g$e;->a:[B

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lhy/g;->d(Lhy/a;[I[B)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lhy/b;

    .line 14
    .line 15
    invoke-direct {v1, p1, p0, v0}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 16
    .line 17
    .line 18
    move-object p1, v1

    .line 19
    :goto_0
    return-object p1
.end method
