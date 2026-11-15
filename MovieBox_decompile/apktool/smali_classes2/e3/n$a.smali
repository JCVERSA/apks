.class final Le3/n$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Le3/t;

.field public final b:Le3/w;

.field public final c:Lk2/s0;

.field public final d:Lk2/t0;

.field public e:I


# direct methods
.method public constructor <init>(Le3/t;Le3/w;Lk2/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le3/n$a;->a:Le3/t;

    .line 5
    .line 6
    iput-object p2, p0, Le3/n$a;->b:Le3/w;

    .line 7
    .line 8
    iput-object p3, p0, Le3/n$a;->c:Lk2/s0;

    .line 9
    .line 10
    iget-object p1, p1, Le3/t;->g:Landroidx/media3/common/r;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "audio/true-hd"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lk2/t0;

    .line 23
    .line 24
    invoke-direct {p1}, Lk2/t0;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-object p1, p0, Le3/n$a;->d:Lk2/t0;

    .line 30
    .line 31
    return-void
.end method
