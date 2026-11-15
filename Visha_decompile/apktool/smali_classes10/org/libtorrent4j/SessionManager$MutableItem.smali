.class public final Lorg/libtorrent4j/SessionManager$MutableItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableItem"
.end annotation


# instance fields
.field public final item:Lorg/libtorrent4j/Entry;

.field public final seq:J

.field public final signature:[B


# direct methods
.method private constructor <init>(Lorg/libtorrent4j/Entry;[BJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/libtorrent4j/SessionManager$MutableItem;->item:Lorg/libtorrent4j/Entry;

    .line 4
    iput-object p2, p0, Lorg/libtorrent4j/SessionManager$MutableItem;->signature:[B

    .line 5
    iput-wide p3, p0, Lorg/libtorrent4j/SessionManager$MutableItem;->seq:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/libtorrent4j/Entry;[BJLorg/libtorrent4j/SessionManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/libtorrent4j/SessionManager$MutableItem;-><init>(Lorg/libtorrent4j/Entry;[BJ)V

    return-void
.end method
