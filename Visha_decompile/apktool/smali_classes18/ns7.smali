.class public final Lns7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lns7$a;
    }
.end annotation


# static fields
.field public static final b:Lns7$a;

.field public static final c:Lns7;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lns7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lns7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lns7;->b:Lns7$a;

    new-instance v0, Lns7;

    invoke-direct {v0, v1}, Lns7;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lns7;->c:Lns7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lns7;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lns7;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()Lns7;
    .locals 1

    sget-object v0, Lns7;->c:Lns7;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lns7;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No value present"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lns7;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lns7;->a:Ljava/lang/Object;

    return-object p0
.end method
