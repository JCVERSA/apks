.class final Lwz/e$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwz/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwz/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Byte;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Byte;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
