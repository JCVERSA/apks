.class public final Ldv9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldv9$a;
    }
.end annotation


# static fields
.field public static final a:Ldv9$a;

.field public static b:Liw4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldv9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldv9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldv9;->a:Ldv9$a;

    new-instance v0, Ldv9$b;

    invoke-direct {v0}, Ldv9$b;-><init>()V

    sput-object v0, Ldv9;->b:Liw4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldv9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    sget-object p0, Ldv9;->b:Liw4;

    invoke-interface {p0}, Liw4;->b()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    sget-object p0, Ldv9;->b:Liw4;

    invoke-interface {p0}, Liw4;->a()Z

    move-result p0

    return p0
.end method
