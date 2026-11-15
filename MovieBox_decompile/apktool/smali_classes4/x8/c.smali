.class public final Lx8/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/c$a;
    }
.end annotation


# static fields
.field private static final c:Lx8/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx8/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lx8/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lx8/c$a;->a()Lx8/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lx8/c;->c:Lx8/c;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx8/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lx8/c;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static c()Lx8/c$a;
    .locals 1

    .line 1
    new-instance v0, Lx8/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lx8/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/c;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
