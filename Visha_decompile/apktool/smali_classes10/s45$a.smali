.class public final Ls45$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls45$a$a;
    }
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
    invoke-direct {p0}, Ls45$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls45;
    .locals 0

    sget-object p0, Ls45$a$a;->a:Ls45$a$a;

    invoke-virtual {p0}, Ls45$a$a;->a()Ls45;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lgv4;)V
    .locals 0

    const-string p0, "i"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ls45;->b:Lgv4;

    return-void
.end method
