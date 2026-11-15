.class Lc5/g0$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lc5/z0;

.field final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lc5/z0;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc5/g0$a;->a:Lc5/z0;

    .line 5
    .line 6
    iput-object p2, p0, Lc5/g0$a;->b:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method
