.class public final Lz07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# static fields
.field public static final b:Lz07;

.field public static final c:Lkotlin/coroutines/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz07;

    invoke-direct {v0}, Lz07;-><init>()V

    sput-object v0, Lz07;->b:Lz07;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sput-object v0, Lz07;->c:Lkotlin/coroutines/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    sget-object p0, Lz07;->c:Lkotlin/coroutines/d;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
