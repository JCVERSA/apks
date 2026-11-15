.class public final Lpq/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lpq/b$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lpq/b$a;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lpq/b$a;->b:Z

    .line 8
    .line 9
    new-instance v0, Lpq/b$c;

    .line 10
    .line 11
    invoke-direct {v0}, Lpq/b$c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lpq/b$a;->d:Lpq/b$d;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lpq/b;
    .locals 2

    .line 1
    new-instance v0, Lpq/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lpq/b;-><init>(Lpq/b$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpq/b$a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpq/b$a;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpq/b$a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Lpq/b$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lpq/b$a;->d:Lpq/b$d;

    .line 2
    .line 3
    return-object v0
.end method
