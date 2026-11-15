.class public final Lns7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lns7;
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
    invoke-direct {p0}, Lns7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lns7;
    .locals 0

    invoke-static {}, Lns7;->a()Lns7;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lns7;
    .locals 1

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lns7;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lns7;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
