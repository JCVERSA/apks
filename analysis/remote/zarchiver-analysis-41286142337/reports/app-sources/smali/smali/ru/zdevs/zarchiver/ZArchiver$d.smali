.class public final Lru/zdevs/zarchiver/ZArchiver$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lg0/i;)V
    .locals 1

    .line 1
    sget-boolean p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    const/16 v0, 0xf

    .line 7
    .line 8
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetStatus(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
