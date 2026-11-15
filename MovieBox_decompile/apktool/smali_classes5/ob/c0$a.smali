.class Lob/c0$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lhc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lhc/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lhc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lob/c0$a;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lob/c0$a;->b:Lhc/c;

    .line 7
    .line 8
    return-void
.end method
