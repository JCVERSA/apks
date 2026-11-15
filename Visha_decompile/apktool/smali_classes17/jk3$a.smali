.class public final Ljk3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljk3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljk3;
    .locals 1

    new-instance p0, Ljk3;

    sget-object v0, Lns7;->b:Lns7$a;

    invoke-virtual {v0}, Lns7$a;->a()Lns7;

    move-result-object v0

    invoke-direct {p0, v0}, Ljk3;-><init>(Lns7;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljk3;
    .locals 1

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljk3;

    sget-object v0, Lns7;->b:Lns7$a;

    invoke-virtual {v0, p1}, Lns7$a;->b(Ljava/lang/Object;)Lns7;

    move-result-object p1

    invoke-direct {p0, p1}, Ljk3;-><init>(Lns7;)V

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljk3;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljk3$a;->b(Ljava/lang/Object;)Ljk3;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk3$a;->a()Ljk3;

    move-result-object p0

    :goto_0
    return-object p0
.end method
