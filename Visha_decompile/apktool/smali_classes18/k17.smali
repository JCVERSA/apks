.class public final Lk17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc2;
.implements Lvv0;


# static fields
.field public static final b:Lk17;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk17;

    invoke-direct {v0}, Lk17;-><init>()V

    sput-object v0, Lk17;->b:Lk17;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getParent()Lkotlinx/coroutines/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
