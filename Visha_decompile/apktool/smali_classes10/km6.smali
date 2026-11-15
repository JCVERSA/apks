.class public final Lkm6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkm6$a;
    }
.end annotation


# static fields
.field public static final a:Lkm6$a;

.field public static b:Lkv4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkm6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkm6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkm6;->a:Lkm6$a;

    new-instance v0, Lkm6$b;

    invoke-direct {v0}, Lkm6$b;-><init>()V

    sput-object v0, Lkm6;->b:Lkv4;

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
    invoke-direct {p0}, Lkm6;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    sget-object p0, Lkm6;->b:Lkv4;

    invoke-interface {p0}, Lkv4;->b()V

    return-void
.end method

.method public final b()V
    .locals 0

    sget-object p0, Lkm6;->b:Lkv4;

    invoke-interface {p0}, Lkv4;->c()V

    return-void
.end method

.method public final c()V
    .locals 0

    sget-object p0, Lkm6;->b:Lkv4;

    invoke-interface {p0}, Lkv4;->a()V

    return-void
.end method
