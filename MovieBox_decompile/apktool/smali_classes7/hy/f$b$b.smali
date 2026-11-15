.class Lhy/f$b$b;
.super Lhy/f$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/f$b$b;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0xb0a1
        0xb0b3
        0xb0c5
        0xb0cd
        0xb0d4
        0xb0e6
        0xb0ed
        0xb0f8
        0xb0fa
        0xb0fc
        0xb1b8
        0xb1b9
        0xb1c7
        0xb1d7
        0xb1e2
        0xb3aa
        0xb3bb
        0xb4c2
        0xb4cf
        0xb4d9
        0xb4eb
        0xb5a5
        0xb5b5
        0xb5bf
        0xb5c7
        0xb5e9
        0xb6f3
        0xb7af
        0xb7c2
        0xb7ce
        0xb8a6
        0xb8ae
        0xb8b6
        0xb8b8
        0xb8bb
        0xb8e9
        0xb9ab
        0xb9ae
        0xb9cc
        0xb9ce
        0xb9fd
        0xbab8
        0xbace
        0xbad0
        0xbaf1
        0xbbe7
        0xbbf3
        0xbbfd
        0xbcad
        0xbcba
        0xbcd2
        0xbcf6
        0xbdba
        0xbdc0
        0xbdc3
        0xbdc5
        0xbec6
        0xbec8
        0xbedf
        0xbeee
        0xbef8
        0xbefa
        0xbfa1
        0xbfa9
        0xbfc0
        0xbfe4
        0xbfeb
        0xbfec
        0xbff8
        0xc0a7
        0xc0af
        0xc0b8
        0xc0ba
        0xc0bb
        0xc0bd
        0xc0c7
        0xc0cc
        0xc0ce
        0xc0cf
        0xc0d6
        0xc0da
        0xc0e5
        0xc0fb
        0xc0fc
        0xc1a4
        0xc1a6
        0xc1b6
        0xc1d6
        0xc1df
        0xc1f6
        0xc1f8
        0xc4a1
        0xc5cd
        0xc6ae
        0xc7cf
        0xc7d1
        0xc7d2
        0xc7d8
        0xc7e5
        0xc8ad
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/f$b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ko"

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EUC-KR"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 2

    .line 1
    sget-object v0, Lhy/f$b$b;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lhy/f;->d(Lhy/a;[I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lhy/b;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0, v0}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 14
    .line 15
    .line 16
    move-object p1, v1

    .line 17
    :goto_0
    return-object p1
.end method
