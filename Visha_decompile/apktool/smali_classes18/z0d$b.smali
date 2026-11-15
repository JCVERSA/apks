.class public abstract Lz0d$b;
.super Lz0d$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public final synthetic d:Lz0d;


# direct methods
.method public constructor <init>(Lz0d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz0d$b;->d:Lz0d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lz0d$e;-><init>(Ly0d;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz0d$b;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz0d$b;->b:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz0d$b;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lz0d;Ly0d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lz0d$b;-><init>(Lz0d;)V

    return-void
.end method


# virtual methods
.method public abstract b()Z
.end method
