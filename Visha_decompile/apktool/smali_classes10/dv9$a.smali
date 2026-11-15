.class public final Ldv9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldv9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldv9$a$a;
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
    invoke-direct {p0}, Ldv9$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldv9;
    .locals 0

    sget-object p0, Ldv9$a$a;->a:Ldv9$a$a;

    invoke-virtual {p0}, Ldv9$a$a;->a()Ldv9;

    move-result-object p0

    return-object p0
.end method

.method public final b(Liw4;)V
    .locals 0

    const-string p0, "i"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ldv9;->b:Liw4;

    return-void
.end method
